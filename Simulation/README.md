## Simulación

Los detalles del diseño simulación y son explicados con total detalle en <a href="./AUMENTO DEL RENDIMIENTO DE UN PROCESADOR RISC DE 32 BITS UTILIZANDO PIPELINE DE CINCO ETAPAS Y MEMORIA CACHE.pdf">AUMENTO DEL RENDIMIENTO DE UN PROCESADOR RISC DE 32 BITS UTILIZANDO PIPELINE DE CINCO ETAPAS Y MEMORIA CACHE.pdf</a>


### software 
    Contiene todos los programas necesarios para la validacion del procesador a nivel de software.

### hardware 
    Contiene todos los archivos fuente de los componentes del procesador, asi como sus testbechs,adicionalmente contiene el archivo generate-test.py el cual es utilizado para generar los archivos vectores de prueba. Todos los testbech se comprueban solos, ver en consola si hay algun problema o no.
    
### docker_yosys_ghdl_plugin
    qflow unicamente trabaja con archivos escritos en verilog, por lo tanto en esta carpeta se encuentran los comandos para convertir el codigo vhdl sintesisable en verilog.
    
### qflow
    Contiene los diferentes reportes de sintesis a CMOS y static time analysis.

### cacti
	Contiene los archivos relacionados a CACTI, obtener tiempos de acceso	en diferentes configuraciones de memorias cache
    
### AUMENTO DEL RENDIMIENTO DE UN PROCESADOR RISC DE 32 BITS UTILIZANDO PIPELINE DE CINCO ETAPAS Y MEMORIA CACHE.pdf

    Trabajo de graduacion contiene el contexto del repositorio, proceso de diseño y pruebas.