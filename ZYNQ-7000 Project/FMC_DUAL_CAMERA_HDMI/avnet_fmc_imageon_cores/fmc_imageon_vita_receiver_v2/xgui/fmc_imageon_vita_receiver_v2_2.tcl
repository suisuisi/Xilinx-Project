#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S00_AXI_DATA_WIDTH ]
set_property tooltip {Width of S_AXI data bus} $C_S00_AXI_DATA_WIDTH
	set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S00_AXI_ADDR_WIDTH ]
set_property tooltip {Width of S_AXI address bus} $C_S00_AXI_ADDR_WIDTH
	set C_VIDEO_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_VIDEO_DATA_WIDTH]
set_property tooltip {Width of Video Data} $C_VIDEO_DATA_WIDTH
	set C_IO_VITA_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_IO_VITA_DATA_WIDTH]
set_property tooltip {Number of differential data channels generated by VITA sensor} $C_IO_VITA_DATA_WIDTH
	set C_DEBUG_PORT [ipgui::add_param $IPINST -parent $Page0 -name C_DEBUG_PORT]
set_property tooltip {Enable Debug Ports} $C_DEBUG_PORT
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VIDEO_DATA_WIDTH { PARAM_VALUE.C_VIDEO_DATA_WIDTH } {
	# Procedure called to update C_VIDEO_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VIDEO_DATA_WIDTH { PARAM_VALUE.C_VIDEO_DATA_WIDTH } {
	# Procedure called to validate C_VIDEO_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO_VITA_DATA_WIDTH { PARAM_VALUE.C_IO_VITA_DATA_WIDTH } {
	# Procedure called to update C_IO_VITA_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO_VITA_DATA_WIDTH { PARAM_VALUE.C_IO_VITA_DATA_WIDTH } {
	# Procedure called to validate C_IO_VITA_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DEBUG_PORT { PARAM_VALUE.C_DEBUG_PORT } {
	# Procedure called to update C_DEBUG_PORT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DEBUG_PORT { PARAM_VALUE.C_DEBUG_PORT } {
	# Procedure called to validate C_DEBUG_PORT
	return true
}


proc update_MODELPARAM_VALUE.C_VIDEO_DATA_WIDTH { MODELPARAM_VALUE.C_VIDEO_DATA_WIDTH PARAM_VALUE.C_VIDEO_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VIDEO_DATA_WIDTH}] ${MODELPARAM_VALUE.C_VIDEO_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_IO_VITA_DATA_WIDTH { MODELPARAM_VALUE.C_IO_VITA_DATA_WIDTH PARAM_VALUE.C_IO_VITA_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO_VITA_DATA_WIDTH}] ${MODELPARAM_VALUE.C_IO_VITA_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

