#use filename
header = """\
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_{name} is
end tb_{name};
"""
architecture = "architecture sim of tb_{} is\n\n\tconstant Tclk: time := 8 fs;\n"
clkprocess = """\
\tprocess is
\tbegin
\t\twait for Tclk/2;
\t\t{clk} <= not {clk};
\tend process;
"""
tb = """\
\tStimulous_fromfile:process is
\t\tfile text_file : text open read_mode is "testvector{name}.txt";
\t\tvariable reportval: boolean:= false;
\t\tvariable text_line : line;
\t\tvariable linecnt: integer :=0;
"""
tb2 = """\
\tbegin
        
\t\twhile not endfile(text_file) loop
\t\t\tlinecnt := linecnt + 1;
\t\t\treadline(text_file, text_line);
\t\t\tif text_line.all'length = 0 then
\t\t\t\tnext;
\t\t\tend if;
"""
tb3 = """\

\t\t\tcnt <= linecnt;
\t\t\twait for Tclk/4;

"""
tb4 = """\
\t\t\twait for 3*Tclk/4;
\t\tend loop;
\t\tassert false report "Simulation Finished" severity failure;
\tend process;
end sim;
"""
asserttemplate="""\
\t\t\tassert ({} = {})
\t\t\t\treport "'{}' not match for line: " & integer'image(linecnt)
\t\t\t\tseverity warning;
"""
def parsefile(filestream):
    generic = {}
    port = {}

    isport = False
    isgeneric = False
    for line in filestream:
        line = line.strip()
        if "generic(" in line:
            isgeneric = True
        if "port" in line:
            isport = True

        if isgeneric:
            if line == ");":
                isgeneric = False
                continue 
            gen = line.split(": ")
            if len(gen) == 2:
                generic[gen[0]] = gen[1].replace(";","")
        
        if isport:
            p = line.split(": ")
            if len(p) == 2:
                direction, definition = p[1].strip().split(" ",maxsplit=1)
                port[p[0]] = [direction,definition.replace(";","")]
        if "end " in line:
            break
    return [generic , port]

def writeConstAndSignals(GenAndPorts, filestream):
    generics, ports = GenAndPorts

    for genname, value in generics.items():
        filestream.write(f"\tconstant {genname}: {value};\n")
    filestream.write("\n")

    for portname, value in ports.items():
        io, definition = value
        portname = portname.lower()
        filestream.write(f"\tsignal {portname}: {definition};\n")
        if io[0] == 'o' or io[0] == 'O':
            filestream.write(f"\tsignal F{portname}: {definition};\n")
    filestream.write("\n")

def writeinstantiation(GenAndPorts, filestream,name):
    generics, ports = GenAndPorts
    filestream.write(f"\t{name}: entity work.{name}(rtl)\n")    
    if generics:
        filestream.write(f"\t\tgeneric map\n\t\t(\n")
        txt = ""
        for genname in generics:
            txt+= f"\t\t\t{genname} => {genname},\n"
        txt = txt[:-2]
        filestream.write(txt + "\n\t\t)\n\n")  
    
    filestream.write(f"\t\tport map\n\t\t(\n")
    txt = ""
    clksignal = None
    for portnames in ports:
        txt+= f"\t\t\t{portnames} => {portnames.lower()},\n"
        if 'clk' in portnames.lower():
            clksignal = portnames

    txt = txt[:-2]
    filestream.write(txt + "\n\t\t);\n\n")
    return clksignal   

def writetestbench(ports, filestream):
    definitions = {}
    cnt = 1
    txt = ""
    assertTxt = ""
    for portname,value in ports.items():
        io, definition = value
        portname = portname.lower()
        if definition not in definitions:
            var = 'var'+str(cnt)
            filestream.write(f"\t\tvariable {var}: {definition};\n")
            definitions[definition] = var
            cnt += 1
        txt+= f"\t\t\treaddata(text_line,{definitions[definition]},linecnt,reportval);\n"
        if io[0] == 'o' or io[0]=='O':
            txt+= f"\t\t\tF{portname} <= {definitions[definition]};\n"
            assertTxt+= asserttemplate.format(portname,'F'+portname,portname)
        else:
            txt+= f"\t\t\t{portname} <= {definitions[definition]};\n"

    filestream.write(tb2)
    filestream.write(txt)
    filestream.write(tb3)
    filestream.write(assertTxt)
    filestream.write(tb4)                  



if __name__ == "__main__":
    import sys,os
    
    if len(sys.argv) == 2:
        fstream = sys.stdout
    elif len(sys.argv) == 3:
        if sys.argv[2][0] == '/':
            ftowrite = sys.argv[2]
        else:
            ftowrite = os.getcwd() + '/' + sys.argv[2]
        fstream = open(ftowrite,'w')
    else:
        print("tbcrator inputfile outputfile(if blank prints in stdo)")
        sys.exit(1)
    
    if sys.argv[1][0] == '/':
        ftoread = sys.argv[1]
    else:
        ftoread = os.getcwd() + '/' + sys.argv[1]

    name = os.path.basename(ftoread).split('.')[0]

    with open(ftoread,'r') as f:
        vec = parsefile(f)

    with fstream:
        print(header.format(name=name,end=''),file=fstream)
        print(architecture.format(name)+"\tsignal cnt: integer;\n\n",end='',file=fstream)
        writeConstAndSignals(vec,fstream)
        print("begin\n\n",end='',file=fstream)
        clk = writeinstantiation(vec,fstream,name)
        if clk:
            print(clkprocess.format(clk=clk),file=fstream)
            del vec[1][clk]
        print(tb.format(name=name),file=fstream)
        writetestbench(vec[1],fstream)