################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_gpio/mss_gpio.c 

OBJS += \
./drivers/mss_gpio/mss_gpio.o 

C_DEPS += \
./drivers/mss_gpio/mss_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_gpio/%.o: ../drivers/mss_gpio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_ace -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers_config -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\drivers_config\mss_ace -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\hal -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\darshin\Desktop\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\373ProjectLED-338726cff5c560a56fb0ec581fe34a73cec59c05\SoftConsole\MSS01_MSS_CM3_0\MSS01_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


