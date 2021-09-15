export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_BIN_PATH := C:/BrAutomation/AS49/bin-en
export AS_INSTALL_PATH := C:/BrAutomation/AS49
export AS_PATH := C:/BrAutomation/AS49
export AS_VC_PATH := C:/BrAutomation/AS49/AS/VC
export AS_GNU_INST_PATH := C:/BrAutomation/AS49/AS/gnuinst/V4.1.2
export AS_STATIC_ARCHIVES_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Temp/Archives/Asfordby/X20CP1381
export AS_CPU_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Temp/Objects/Asfordby/X20CP1381
export AS_CPU_PATH_2 := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Temp/Objects/Asfordby/X20CP1381
export AS_TEMP_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Temp
export AS_BINARIES_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Binaries
export AS_PROJECT_CPU_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Physical/Asfordby/X20CP1381
export AS_PROJECT_CONFIG_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl/Physical/Asfordby
export AS_PROJECT_PATH := C:/Users/OT-Connor.Seymour/Desktop/BatteryControl
export AS_PROJECT_NAME := BatteryControl
export AS_PLC := X20CP1381
export AS_TEMP_PLC := X20CP1381
export AS_USER_NAME := OT-Connor.Seymour
export AS_CONFIGURATION := Asfordby
export AS_COMPANY_NAME := \ 
export AS_VERSION := 4.9.2.46
export AS_WORKINGVERSION := 4.9


default: \
	$(AS_CPU_PATH)/Visu.br \
	vcPostBuild_Visu \



include $(AS_CPU_PATH)/Visu/Visu.mak
