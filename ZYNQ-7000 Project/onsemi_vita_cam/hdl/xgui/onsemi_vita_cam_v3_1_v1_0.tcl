# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_INCLUDE_BLC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INCLUDE_MONITOR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO_VITA_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VIDEO_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VIDEO_DIRECT_OUTPUT" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_INCLUDE_BLC { PARAM_VALUE.C_INCLUDE_BLC } {
	# Procedure called to update C_INCLUDE_BLC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_BLC { PARAM_VALUE.C_INCLUDE_BLC } {
	# Procedure called to validate C_INCLUDE_BLC
	return true
}

proc update_PARAM_VALUE.C_INCLUDE_MONITOR { PARAM_VALUE.C_INCLUDE_MONITOR } {
	# Procedure called to update C_INCLUDE_MONITOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_MONITOR { PARAM_VALUE.C_INCLUDE_MONITOR } {
	# Procedure called to validate C_INCLUDE_MONITOR
	return true
}

proc update_PARAM_VALUE.C_IO_VITA_DATA_WIDTH { PARAM_VALUE.C_IO_VITA_DATA_WIDTH } {
	# Procedure called to update C_IO_VITA_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO_VITA_DATA_WIDTH { PARAM_VALUE.C_IO_VITA_DATA_WIDTH } {
	# Procedure called to validate C_IO_VITA_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VIDEO_DATA_WIDTH { PARAM_VALUE.C_VIDEO_DATA_WIDTH } {
	# Procedure called to update C_VIDEO_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VIDEO_DATA_WIDTH { PARAM_VALUE.C_VIDEO_DATA_WIDTH } {
	# Procedure called to validate C_VIDEO_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VIDEO_DIRECT_OUTPUT { PARAM_VALUE.C_VIDEO_DIRECT_OUTPUT } {
	# Procedure called to update C_VIDEO_DIRECT_OUTPUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VIDEO_DIRECT_OUTPUT { PARAM_VALUE.C_VIDEO_DIRECT_OUTPUT } {
	# Procedure called to validate C_VIDEO_DIRECT_OUTPUT
	return true
}


proc update_MODELPARAM_VALUE.C_VIDEO_DATA_WIDTH { MODELPARAM_VALUE.C_VIDEO_DATA_WIDTH PARAM_VALUE.C_VIDEO_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VIDEO_DATA_WIDTH}] ${MODELPARAM_VALUE.C_VIDEO_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_VIDEO_DIRECT_OUTPUT { MODELPARAM_VALUE.C_VIDEO_DIRECT_OUTPUT PARAM_VALUE.C_VIDEO_DIRECT_OUTPUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VIDEO_DIRECT_OUTPUT}] ${MODELPARAM_VALUE.C_VIDEO_DIRECT_OUTPUT}
}

proc update_MODELPARAM_VALUE.C_IO_VITA_DATA_WIDTH { MODELPARAM_VALUE.C_IO_VITA_DATA_WIDTH PARAM_VALUE.C_IO_VITA_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO_VITA_DATA_WIDTH}] ${MODELPARAM_VALUE.C_IO_VITA_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_BLC { MODELPARAM_VALUE.C_INCLUDE_BLC PARAM_VALUE.C_INCLUDE_BLC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_BLC}] ${MODELPARAM_VALUE.C_INCLUDE_BLC}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_MONITOR { MODELPARAM_VALUE.C_INCLUDE_MONITOR PARAM_VALUE.C_INCLUDE_MONITOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_MONITOR}] ${MODELPARAM_VALUE.C_INCLUDE_MONITOR}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

