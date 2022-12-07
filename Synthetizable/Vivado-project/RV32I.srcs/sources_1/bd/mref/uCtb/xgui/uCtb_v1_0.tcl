# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BUS_Width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHOOSE_MODULE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DONE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.BUS_Width { PARAM_VALUE.BUS_Width } {
	# Procedure called to update BUS_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUS_Width { PARAM_VALUE.BUS_Width } {
	# Procedure called to validate BUS_Width
	return true
}

proc update_PARAM_VALUE.CHOOSE_MODULE { PARAM_VALUE.CHOOSE_MODULE } {
	# Procedure called to update CHOOSE_MODULE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHOOSE_MODULE { PARAM_VALUE.CHOOSE_MODULE } {
	# Procedure called to validate CHOOSE_MODULE
	return true
}

proc update_PARAM_VALUE.DONE_ADDR { PARAM_VALUE.DONE_ADDR } {
	# Procedure called to update DONE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DONE_ADDR { PARAM_VALUE.DONE_ADDR } {
	# Procedure called to validate DONE_ADDR
	return true
}

proc update_PARAM_VALUE.RESET_ADDR { PARAM_VALUE.RESET_ADDR } {
	# Procedure called to update RESET_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_ADDR { PARAM_VALUE.RESET_ADDR } {
	# Procedure called to validate RESET_ADDR
	return true
}


proc update_MODELPARAM_VALUE.CHOOSE_MODULE { MODELPARAM_VALUE.CHOOSE_MODULE PARAM_VALUE.CHOOSE_MODULE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHOOSE_MODULE}] ${MODELPARAM_VALUE.CHOOSE_MODULE}
}

proc update_MODELPARAM_VALUE.DONE_ADDR { MODELPARAM_VALUE.DONE_ADDR PARAM_VALUE.DONE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DONE_ADDR}] ${MODELPARAM_VALUE.DONE_ADDR}
}

proc update_MODELPARAM_VALUE.RESET_ADDR { MODELPARAM_VALUE.RESET_ADDR PARAM_VALUE.RESET_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_ADDR}] ${MODELPARAM_VALUE.RESET_ADDR}
}

proc update_MODELPARAM_VALUE.BUS_Width { MODELPARAM_VALUE.BUS_Width PARAM_VALUE.BUS_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUS_Width}] ${MODELPARAM_VALUE.BUS_Width}
}

