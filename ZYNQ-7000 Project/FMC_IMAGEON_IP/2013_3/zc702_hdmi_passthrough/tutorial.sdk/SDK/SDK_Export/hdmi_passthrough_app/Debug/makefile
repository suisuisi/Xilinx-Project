################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
hdmi_passthrough_app.elf.size \


# All Target
all: hdmi_passthrough_app.elf secondary-outputs

# Tool invocations
hdmi_passthrough_app.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -Wl,-T -Wl,../src/lscript.ld -L../../hdmi_passthrough_bsp/ps7_cortexa9_0/lib -o "hdmi_passthrough_app.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

hdmi_passthrough_app.elf.size: hdmi_passthrough_app.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size hdmi_passthrough_app.elf  |tee "hdmi_passthrough_app.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) hdmi_passthrough_app.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
