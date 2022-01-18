#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-toy-train-config.mk)" "nbproject/Makefile-local-toy-train-config.mk"
include nbproject/Makefile-local-toy-train-config.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=toy-train-config
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/bleTask.c ../src/config/toy-train-config/peripheral/adc/plib_adc.c ../src/config/toy-train-config/peripheral/clock/plib_clock.c ../src/config/toy-train-config/peripheral/dac/plib_dac.c ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/toy-train-config/peripheral/port/plib_port.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/toy-train-config/peripheral/systick/plib_systick.c ../src/config/toy-train-config/peripheral/tc/plib_tc3.c ../src/config/toy-train-config/peripheral/tc/plib_tc4.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c ../src/config/toy-train-config/initialization.c ../src/config/toy-train-config/interrupts.c ../src/config/toy-train-config/exceptions.c ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c ../../../../../gcc/src_gcc_toolchain/startup_gcc.c ../src/config/toy-train-config/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/music.c ../src/powerOffMusic.c ../src/powerOnMusic.c ../src/sampleMusicOne.c ../src/sampleMusicTwo.c ../src/hornMusic.c ../src/bleOnMusic.c ../src/bleOffMusic.c ../src/bellMusic.c ../src/carWashMusic.c ../src/bluetooth.c ../src/colorDetect.c ../src/hallSensor.c ../src/motorControl.c ../src/rgbLed.c ../src/printStr.c ../src/AppGlobals.c ../src/audio.c ../src/main.c ../src/hallSensorTask.c ../src/photoSensorTask.c ../src/sort.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/bleTask.o ${OBJECTDIR}/_ext/1312487053/plib_adc.o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ${OBJECTDIR}/_ext/2031934962/plib_port.o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ${OBJECTDIR}/_ext/1423632105/initialization.o ${OBJECTDIR}/_ext/1423632105/interrupts.o ${OBJECTDIR}/_ext/1423632105/exceptions.o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/music.o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ${OBJECTDIR}/_ext/1360937237/motorControl.o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ${OBJECTDIR}/_ext/1360937237/printStr.o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o ${OBJECTDIR}/_ext/1360937237/audio.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o ${OBJECTDIR}/_ext/1360937237/sort.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/bleTask.o.d ${OBJECTDIR}/_ext/1312487053/plib_adc.o.d ${OBJECTDIR}/_ext/1422427169/plib_clock.o.d ${OBJECTDIR}/_ext/1312484263/plib_dac.o.d ${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d ${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d ${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/2031934962/plib_port.o.d ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/1450520259/plib_systick.o.d ${OBJECTDIR}/_ext/873621700/plib_tc3.o.d ${OBJECTDIR}/_ext/873621700/plib_tc4.o.d ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d ${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d ${OBJECTDIR}/_ext/1423632105/initialization.o.d ${OBJECTDIR}/_ext/1423632105/interrupts.o.d ${OBJECTDIR}/_ext/1423632105/exceptions.o.d ${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d ${OBJECTDIR}/_ext/336147711/startup_gcc.o.d ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o.d ${OBJECTDIR}/_ext/1624415188/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/music.o.d ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d ${OBJECTDIR}/_ext/1360937237/hornMusic.o.d ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d ${OBJECTDIR}/_ext/1360937237/bellMusic.o.d ${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d ${OBJECTDIR}/_ext/1360937237/bluetooth.o.d ${OBJECTDIR}/_ext/1360937237/colorDetect.o.d ${OBJECTDIR}/_ext/1360937237/hallSensor.o.d ${OBJECTDIR}/_ext/1360937237/motorControl.o.d ${OBJECTDIR}/_ext/1360937237/rgbLed.o.d ${OBJECTDIR}/_ext/1360937237/printStr.o.d ${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d ${OBJECTDIR}/_ext/1360937237/audio.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o.d ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o.d ${OBJECTDIR}/_ext/1360937237/sort.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/bleTask.o ${OBJECTDIR}/_ext/1312487053/plib_adc.o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ${OBJECTDIR}/_ext/2031934962/plib_port.o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ${OBJECTDIR}/_ext/1423632105/initialization.o ${OBJECTDIR}/_ext/1423632105/interrupts.o ${OBJECTDIR}/_ext/1423632105/exceptions.o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/music.o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ${OBJECTDIR}/_ext/1360937237/motorControl.o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ${OBJECTDIR}/_ext/1360937237/printStr.o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o ${OBJECTDIR}/_ext/1360937237/audio.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o ${OBJECTDIR}/_ext/1360937237/sort.o

# Source Files
SOURCEFILES=../src/bleTask.c ../src/config/toy-train-config/peripheral/adc/plib_adc.c ../src/config/toy-train-config/peripheral/clock/plib_clock.c ../src/config/toy-train-config/peripheral/dac/plib_dac.c ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/toy-train-config/peripheral/port/plib_port.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/toy-train-config/peripheral/systick/plib_systick.c ../src/config/toy-train-config/peripheral/tc/plib_tc3.c ../src/config/toy-train-config/peripheral/tc/plib_tc4.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c ../src/config/toy-train-config/initialization.c ../src/config/toy-train-config/interrupts.c ../src/config/toy-train-config/exceptions.c ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c ../../../../../gcc/src_gcc_toolchain/startup_gcc.c ../src/config/toy-train-config/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/music.c ../src/powerOffMusic.c ../src/powerOnMusic.c ../src/sampleMusicOne.c ../src/sampleMusicTwo.c ../src/hornMusic.c ../src/bleOnMusic.c ../src/bleOffMusic.c ../src/bellMusic.c ../src/carWashMusic.c ../src/bluetooth.c ../src/colorDetect.c ../src/hallSensor.c ../src/motorControl.c ../src/rgbLed.c ../src/printStr.c ../src/AppGlobals.c ../src/audio.c ../src/main.c ../src/hallSensorTask.c ../src/photoSensorTask.c ../src/sort.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${DFP_DIR}/samd21a/include"  -I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-toy-train-config.mk ${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=SAMD21G18A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/bleTask.o: ../src/bleTask.c  .generated_files/flags/toy-train-config/b9d8e2723486933156858f654f7007dbe4c4cfce .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleTask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleTask.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleTask.o ../src/bleTask.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312487053/plib_adc.o: ../src/config/toy-train-config/peripheral/adc/plib_adc.c  .generated_files/flags/toy-train-config/77d7458985a053aefb5de58d01beee095a32b083 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312487053" 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312487053/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1312487053/plib_adc.o ../src/config/toy-train-config/peripheral/adc/plib_adc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1422427169/plib_clock.o: ../src/config/toy-train-config/peripheral/clock/plib_clock.c  .generated_files/flags/toy-train-config/512f6e430c8883469c23f55e124b0266de967927 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1422427169" 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1422427169/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ../src/config/toy-train-config/peripheral/clock/plib_clock.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312484263/plib_dac.o: ../src/config/toy-train-config/peripheral/dac/plib_dac.c  .generated_files/flags/toy-train-config/4e51f44343860471819a87f722f67d72f711bade .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312484263" 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312484263/plib_dac.o.d" -o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ../src/config/toy-train-config/peripheral/dac/plib_dac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2032294920/plib_dmac.o: ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  .generated_files/flags/toy-train-config/a01c6f530f26f309d4b8777b979fd2027cb33b4f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2032294920" 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1424576655/plib_evsys.o: ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/toy-train-config/fc007052efb7d3bc9d940d49c70a29d546840cfe .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1424576655" 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031988113/plib_nvic.o: ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/toy-train-config/957289d3ba23a2f58c8da3244a068834fbaebddc .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031988113" 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o: ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/toy-train-config/16e2820cbba504771275d9c9bcaa38fd6cfa9ba8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1684995357" 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031934962/plib_port.o: ../src/config/toy-train-config/peripheral/port/plib_port.c  .generated_files/flags/toy-train-config/4aa6b1bcb13668caa08de7a683f1f92fdea414f8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031934962" 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031934962/plib_port.o.d" -o ${OBJECTDIR}/_ext/2031934962/plib_port.o ../src/config/toy-train-config/peripheral/port/plib_port.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/toy-train-config/3987cd7d16adee04fc98f6938ab1772430bcc109 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/toy-train-config/e72518f7403e90da3bc0f5b41bd154c22cf30bb9 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1450520259/plib_systick.o: ../src/config/toy-train-config/peripheral/systick/plib_systick.c  .generated_files/flags/toy-train-config/22d2397884924c0187bb85fd7153f54f5ef309f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1450520259" 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1450520259/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ../src/config/toy-train-config/peripheral/systick/plib_systick.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc3.o: ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  .generated_files/flags/toy-train-config/83a4f85b2d5c304ceb1f7b60b1f47b9d481cf491 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc4.o: ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  .generated_files/flags/toy-train-config/dc78f3a7004728b1bc5dea838e106bd9edf11b26 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc2.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  .generated_files/flags/toy-train-config/dc177bb24f96883f7d54f13d2bdd95fd82a02e1b .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc0.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  .generated_files/flags/toy-train-config/485048d643ca3fbdde36c80c864372f373f1c13e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/gcc_monitor.o: ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  .generated_files/flags/toy-train-config/89ed0a75bfaa4c6df741dd297a606a392efbff8f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/initialization.o: ../src/config/toy-train-config/initialization.c  .generated_files/flags/toy-train-config/1aee3f29f9b7d764787c2e59f7cb4f7139b4ae82 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/initialization.o.d" -o ${OBJECTDIR}/_ext/1423632105/initialization.o ../src/config/toy-train-config/initialization.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/interrupts.o: ../src/config/toy-train-config/interrupts.c  .generated_files/flags/toy-train-config/edfd56aea45ae71cc826893d8930f188d2db9aa8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/interrupts.o.d" -o ${OBJECTDIR}/_ext/1423632105/interrupts.o ../src/config/toy-train-config/interrupts.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/exceptions.o: ../src/config/toy-train-config/exceptions.c  .generated_files/flags/toy-train-config/20caa3e98844aaaa53915171f506b2dbcbf41778 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/exceptions.o.d" -o ${OBJECTDIR}/_ext/1423632105/exceptions.o ../src/config/toy-train-config/exceptions.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/libc_syscalls.o: ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  .generated_files/flags/toy-train-config/8b0de97b81d3ab0da09e0e5ee4051829a24d0616 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/startup_gcc.o: ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  .generated_files/flags/toy-train-config/cd1c8d4037467a6adb831d3a4d8b4501bfa79121 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/freertos_hooks.o: ../src/config/toy-train-config/freertos_hooks.c  .generated_files/flags/toy-train-config/fe5646a190cd50b996d3d5dcf77f02649bd2a721 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o ../src/config/toy-train-config/freertos_hooks.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/toy-train-config/aee296ee611aff8d5f19575682e1019ff13ecbf9 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/toy-train-config/48f3c3174a803c62e6d26a4f6ad1437966e8fb3c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/toy-train-config/97a9a412dcfd70ee40b32fb57919c0db68b18405 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/toy-train-config/114ece2d530c664977809bcb69c10a2b39607ef5 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/toy-train-config/6edb91f271262e24a51dc29385cbbf986c4f7688 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/toy-train-config/ff84429943ba5488caafd17ae5e827d03d1fbaf3 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/toy-train-config/a068497ffd07c338f12bb13e8e6ba0c4187b3256 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/toy-train-config/daef898c481b9dcd499c4dc2a89bc713710d81f7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/toy-train-config/8ca8050610ac268df279eaee01171b26ad2bdbb5 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/music.o: ../src/music.c  .generated_files/flags/toy-train-config/1b28721ed74086709727183925d4cf961aa08d3a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/music.o.d" -o ${OBJECTDIR}/_ext/1360937237/music.o ../src/music.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOffMusic.o: ../src/powerOffMusic.c  .generated_files/flags/toy-train-config/8035f97d45e336251841eba5201466581da0e1d7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ../src/powerOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOnMusic.o: ../src/powerOnMusic.c  .generated_files/flags/toy-train-config/8f54152f36a55f966f242649608763917e962608 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ../src/powerOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o: ../src/sampleMusicOne.c  .generated_files/flags/toy-train-config/85bacad149c088eeb682704a50f0db15d0b64da7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ../src/sampleMusicOne.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o: ../src/sampleMusicTwo.c  .generated_files/flags/toy-train-config/ebd039d71ce6868b3b16d44f0724cb4ea7a89997 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ../src/sampleMusicTwo.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hornMusic.o: ../src/hornMusic.c  .generated_files/flags/toy-train-config/fb207949a74eb4989520780ac85f54eb870711f7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hornMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ../src/hornMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOnMusic.o: ../src/bleOnMusic.c  .generated_files/flags/toy-train-config/250955f83fc082ace3ac0650a6b4e4f06b2b0a0e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ../src/bleOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOffMusic.o: ../src/bleOffMusic.c  .generated_files/flags/toy-train-config/32c118d3c1f5cfbda1bba818fbdb002ab0421198 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ../src/bleOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bellMusic.o: ../src/bellMusic.c  .generated_files/flags/toy-train-config/ba824400d6c4d2f048faf90a024de01627515195 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bellMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ../src/bellMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/carWashMusic.o: ../src/carWashMusic.c  .generated_files/flags/toy-train-config/b76608b8b54d4ffcdd53c5b89af51050c14a98ad .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ../src/carWashMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bluetooth.o: ../src/bluetooth.c  .generated_files/flags/toy-train-config/d92dc7676d4d6c765b670bdf86f178e3ce51b7f9 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bluetooth.o.d" -o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ../src/bluetooth.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/colorDetect.o: ../src/colorDetect.c  .generated_files/flags/toy-train-config/8fb7f7acaa143ef2e91967f40681deca0e4155cb .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/colorDetect.o.d" -o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ../src/colorDetect.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hallSensor.o: ../src/hallSensor.c  .generated_files/flags/toy-train-config/650a1c34bc784debdd6cada10f3b4dcd3bd269d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hallSensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ../src/hallSensor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/motorControl.o: ../src/motorControl.c  .generated_files/flags/toy-train-config/4eb182c4daec78c96665aba53e661c8b35794147 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/motorControl.o.d" -o ${OBJECTDIR}/_ext/1360937237/motorControl.o ../src/motorControl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/rgbLed.o: ../src/rgbLed.c  .generated_files/flags/toy-train-config/410508428cf166210eddeb6ef798351e153ceadd .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbLed.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ../src/rgbLed.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/printStr.o: ../src/printStr.c  .generated_files/flags/toy-train-config/f6dee64b22f11a1dd4d763f5d15838a05d5b5f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printStr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printStr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printStr.o.d" -o ${OBJECTDIR}/_ext/1360937237/printStr.o ../src/printStr.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/AppGlobals.o: ../src/AppGlobals.c  .generated_files/flags/toy-train-config/bc0ab1bfae38b9459becf1f176c1ba272645a94d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o ../src/AppGlobals.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/audio.o: ../src/audio.c  .generated_files/flags/toy-train-config/a9910091a805d4cccc6bd8b4c7c89ad743dbe85c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/audio.o.d" -o ${OBJECTDIR}/_ext/1360937237/audio.o ../src/audio.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/toy-train-config/704931d76cf758016992215a43a2b7089737c632 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hallSensorTask.o: ../src/hallSensorTask.c  .generated_files/flags/toy-train-config/d1a27eda4ed283887f2347087130a5334a4abe90 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hallSensorTask.o.d" -o ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o ../src/hallSensorTask.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/photoSensorTask.o: ../src/photoSensorTask.c  .generated_files/flags/toy-train-config/8e8cb8604073faeb88e6fbf993cf6045bb911f41 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/photoSensorTask.o.d" -o ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o ../src/photoSensorTask.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sort.o: ../src/sort.c  .generated_files/flags/toy-train-config/b402f1ed9324a4c1c92a102401d51a5a4eecfccf .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sort.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sort.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sort.o.d" -o ${OBJECTDIR}/_ext/1360937237/sort.o ../src/sort.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1360937237/bleTask.o: ../src/bleTask.c  .generated_files/flags/toy-train-config/234dc2487715ebfdf565c3dfbbca4069b671a5fe .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleTask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleTask.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleTask.o ../src/bleTask.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312487053/plib_adc.o: ../src/config/toy-train-config/peripheral/adc/plib_adc.c  .generated_files/flags/toy-train-config/43c943cc8916500b0eb83c243210838cbdf8c1b0 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312487053" 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312487053/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1312487053/plib_adc.o ../src/config/toy-train-config/peripheral/adc/plib_adc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1422427169/plib_clock.o: ../src/config/toy-train-config/peripheral/clock/plib_clock.c  .generated_files/flags/toy-train-config/ee93b9b3f6fc472d261225fcbd50b924c3a958bd .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1422427169" 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1422427169/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ../src/config/toy-train-config/peripheral/clock/plib_clock.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312484263/plib_dac.o: ../src/config/toy-train-config/peripheral/dac/plib_dac.c  .generated_files/flags/toy-train-config/ed54b5fc95952d97c72f5d546716379f3d0a1750 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312484263" 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312484263/plib_dac.o.d" -o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ../src/config/toy-train-config/peripheral/dac/plib_dac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2032294920/plib_dmac.o: ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  .generated_files/flags/toy-train-config/e44f75321b4aa181db12f11776094fa85762474a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2032294920" 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1424576655/plib_evsys.o: ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/toy-train-config/6371c9285ecfdb9106bb37c4899610afcfe1085a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1424576655" 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031988113/plib_nvic.o: ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/toy-train-config/bdd442a183ec7a9e9e06667229c51f8fa30b7836 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031988113" 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o: ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/toy-train-config/ceb5268a4f0e2665823f3816cd77f6fb6131c1aa .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1684995357" 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031934962/plib_port.o: ../src/config/toy-train-config/peripheral/port/plib_port.c  .generated_files/flags/toy-train-config/4f0af12f2261b08fdabde8fef3247412dc01d5bd .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031934962" 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031934962/plib_port.o.d" -o ${OBJECTDIR}/_ext/2031934962/plib_port.o ../src/config/toy-train-config/peripheral/port/plib_port.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/toy-train-config/c9154e020575e9e5fd2415d0d67e8c4bb176141d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/toy-train-config/81f45750f864bb8279269c56b5c58551e0526f2c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1450520259/plib_systick.o: ../src/config/toy-train-config/peripheral/systick/plib_systick.c  .generated_files/flags/toy-train-config/eb44d5197a388155e4a1ada006d90b16c59dc5b0 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1450520259" 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1450520259/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ../src/config/toy-train-config/peripheral/systick/plib_systick.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc3.o: ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  .generated_files/flags/toy-train-config/bdbd17f2e1e4b06c277e814e796564310c119596 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc4.o: ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  .generated_files/flags/toy-train-config/26402f7482a78cffbeddd259c00fee74d0731d6e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc2.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  .generated_files/flags/toy-train-config/d50e99e14754b1785e2e30954e18a697da0e965 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc0.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  .generated_files/flags/toy-train-config/1f825e25f73ea4f1dfd034a1dd0e1f79dc0156d8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/gcc_monitor.o: ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  .generated_files/flags/toy-train-config/1b8eb90c66e72295e9091fe101b5042e1d36b153 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/initialization.o: ../src/config/toy-train-config/initialization.c  .generated_files/flags/toy-train-config/9d1276ca796caf63fc5ce18872be5cd7aed5dbc1 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/initialization.o.d" -o ${OBJECTDIR}/_ext/1423632105/initialization.o ../src/config/toy-train-config/initialization.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/interrupts.o: ../src/config/toy-train-config/interrupts.c  .generated_files/flags/toy-train-config/bf9e614963448666a1c35f34c825b0f55e4b3a97 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/interrupts.o.d" -o ${OBJECTDIR}/_ext/1423632105/interrupts.o ../src/config/toy-train-config/interrupts.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/exceptions.o: ../src/config/toy-train-config/exceptions.c  .generated_files/flags/toy-train-config/8e9ef21a2010cf7570fb8801ae1c3481b5023190 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/exceptions.o.d" -o ${OBJECTDIR}/_ext/1423632105/exceptions.o ../src/config/toy-train-config/exceptions.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/libc_syscalls.o: ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  .generated_files/flags/toy-train-config/7aa778e853661af14e48cf7ecf04c9a4e9bed19f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/startup_gcc.o: ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  .generated_files/flags/toy-train-config/3571c69742c3fa8501a46fd6c061383f045bf961 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/freertos_hooks.o: ../src/config/toy-train-config/freertos_hooks.c  .generated_files/flags/toy-train-config/a3c85ea5f0b9971c0ef9b18adad32e6496753e8c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1423632105/freertos_hooks.o ../src/config/toy-train-config/freertos_hooks.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/toy-train-config/c99d8db1a010281b87c74d4b831386e8ac8fc2da .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/toy-train-config/4dbc6f17e016da0edb51abd0b545b4922b7c93c8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/toy-train-config/183567eedca4cf2a402f90885ba045baf8678fb4 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/toy-train-config/fd25073c31437c4fb9f42c56048c086bde088890 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/toy-train-config/31d9389807c9929b33a2c4d3304d9a78d6f96643 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/toy-train-config/ce76135f1a132e9319a2a016101da83066cb491e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/toy-train-config/38740fd15f49175fd486d7633a9143bfc48cc97b .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/toy-train-config/4ae8cd89e4f3d4499b24fcfa9ed7eede62602e34 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/toy-train-config/f653102c782fcfa3adad765b2d8fe7d8ba96722d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/music.o: ../src/music.c  .generated_files/flags/toy-train-config/711416f7b8eadb8894a318ae1ca985d57c5d9454 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/music.o.d" -o ${OBJECTDIR}/_ext/1360937237/music.o ../src/music.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOffMusic.o: ../src/powerOffMusic.c  .generated_files/flags/toy-train-config/3dc7b5f91ea11dc0a8bec623663547959896c1f3 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ../src/powerOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOnMusic.o: ../src/powerOnMusic.c  .generated_files/flags/toy-train-config/e748a8410f5e71ae14e5152f9455b2c4e7872d1b .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ../src/powerOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o: ../src/sampleMusicOne.c  .generated_files/flags/toy-train-config/bf9872e1833a83e4137526c05b4b2afaf10ce722 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ../src/sampleMusicOne.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o: ../src/sampleMusicTwo.c  .generated_files/flags/toy-train-config/a13d93f8589883c2cdbc55e4acee5a4fad77bfd5 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ../src/sampleMusicTwo.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hornMusic.o: ../src/hornMusic.c  .generated_files/flags/toy-train-config/c60ec6871fee0aa61354b6b97f3e9e6495457329 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hornMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ../src/hornMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOnMusic.o: ../src/bleOnMusic.c  .generated_files/flags/toy-train-config/84b75c4fbfea0530a6febbd67c71274de822c03d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ../src/bleOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOffMusic.o: ../src/bleOffMusic.c  .generated_files/flags/toy-train-config/486f5d25b5e0b06fdcf51662010079033168c725 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ../src/bleOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bellMusic.o: ../src/bellMusic.c  .generated_files/flags/toy-train-config/a23f75158a6c94de910dfb0677b1552f27b74f8e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bellMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ../src/bellMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/carWashMusic.o: ../src/carWashMusic.c  .generated_files/flags/toy-train-config/74a2dd549dbc2c41a0ff7f61b14a8f5a5d03ca77 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ../src/carWashMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bluetooth.o: ../src/bluetooth.c  .generated_files/flags/toy-train-config/1719fe00d7e154ad5bbc3b49671b8f3232ff4bed .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bluetooth.o.d" -o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ../src/bluetooth.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/colorDetect.o: ../src/colorDetect.c  .generated_files/flags/toy-train-config/42a653b4b4a03839f8fad4ddf7c07139e6b205ac .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/colorDetect.o.d" -o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ../src/colorDetect.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hallSensor.o: ../src/hallSensor.c  .generated_files/flags/toy-train-config/bd152b478c8fb93f0000036febe614b8f82a305 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hallSensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ../src/hallSensor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/motorControl.o: ../src/motorControl.c  .generated_files/flags/toy-train-config/6a2cc34410e77ed8106fa2b9053c8d9a266593e2 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/motorControl.o.d" -o ${OBJECTDIR}/_ext/1360937237/motorControl.o ../src/motorControl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/rgbLed.o: ../src/rgbLed.c  .generated_files/flags/toy-train-config/69c9a32ad18b25d5a3fb74431c3345f6b5c53bf2 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbLed.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ../src/rgbLed.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/printStr.o: ../src/printStr.c  .generated_files/flags/toy-train-config/c55c7d8569a04456a76c2dc2dea119520744dfc7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printStr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/printStr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/printStr.o.d" -o ${OBJECTDIR}/_ext/1360937237/printStr.o ../src/printStr.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/AppGlobals.o: ../src/AppGlobals.c  .generated_files/flags/toy-train-config/d67a03b6416f0bda1510b0ba5cae3c3fcfe05e9c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o ../src/AppGlobals.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/audio.o: ../src/audio.c  .generated_files/flags/toy-train-config/62dc72cb98fe55b30acc3fda346249cb45371997 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/audio.o.d" -o ${OBJECTDIR}/_ext/1360937237/audio.o ../src/audio.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/toy-train-config/ee9a07506ad346617fef962888d0c8766ea2cdb6 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hallSensorTask.o: ../src/hallSensorTask.c  .generated_files/flags/toy-train-config/8695e7be3c60de2f0f634008a274964ec36fb1e7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hallSensorTask.o.d" -o ${OBJECTDIR}/_ext/1360937237/hallSensorTask.o ../src/hallSensorTask.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/photoSensorTask.o: ../src/photoSensorTask.c  .generated_files/flags/toy-train-config/2e5c3eb3d2e2ffa743e9dea020d34ff031610a36 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/photoSensorTask.o.d" -o ${OBJECTDIR}/_ext/1360937237/photoSensorTask.o ../src/photoSensorTask.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sort.o: ../src/sort.c  .generated_files/flags/toy-train-config/3729120e5fef2b1646fd23ce9766caae039a0b0b .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sort.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sort.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -I "../src/third_party/rtos/FreeRTOS/Source/include" -I "../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I "../src/third_party/rtos/FreeRTOS/Source/portable/MemMang" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sort.o.d" -o ${OBJECTDIR}/_ext/1360937237/sort.o ../src/sort.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/toy-train-config/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/toy-train-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.map"  -o ${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections  
	
	
	
	
	
	
else
${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/toy-train-config/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/toy-train-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.map"  -o ${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections  
	
	${MP_CC_DIR}/arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/toy-train-v2.1.X.${IMAGE_TYPE}.hex"
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
