/*
 * imu_interface.h
 *
 *  Created on: Apr 19, 2019
 *      Author: nlvoll
 */

#ifndef IMU_INTERFACE_H_
#define IMU_INTERFACE_H_

#include <inttypes.h>
#include <drivers/mss_uart/mss_uart.h>
#include "drivers/mss_i2c/mss_i2c.h"

#define OPR_MODE_NDOF	0b1100
#define OPR_MODE_REG	0x3D

#define EUL_HEADING_MSB 0x1B
#define EUL_HEADING_LSB 0x1A

#define CHIP_ID_REG 0x00

double wrap_angle_360(double x)
{
	while (x < 0) x += 360.0;
	while (x >= 360.0) x -= 360.0;
	return x;
}

double wrap_angle_180(double x)
{
	while (x < -180.0) x += 360.0;
	while (x >= 180.0) x -= 360.0;
	return x;
}

int init_BNO055(uint8_t dev_addr)
{
	// Set up MSS I2C driver struct
	MSS_I2C_init(&g_mss_i2c1 , 0x0, MSS_I2C_PCLK_DIV_256 );


	// Read chip ID
	uint8_t read_id_seq[] = {CHIP_ID_REG};
	uint8_t chip_id;
	MSS_I2C_write_read
	(
		&g_mss_i2c1,
		dev_addr,
		read_id_seq,
		1,
		&chip_id,
		1,
		MSS_I2C_RELEASE_BUS
	);
	MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_RELEASE_BUS);
	if (chip_id != 0xA0) return -1;

	// Set mode to NDOF
	uint8_t write_mode_seq[] = { OPR_MODE_REG, OPR_MODE_NDOF };
	MSS_I2C_write
	(
		&g_mss_i2c1,
		dev_addr,
		write_mode_seq,
		2,
		MSS_I2C_RELEASE_BUS
	);
	MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);

	return 0;
}

double read_heading_BNO055(uint8_t dev_addr)
{
	int32_t heading = 0;
	uint8_t read_heading_seq[] = {EUL_HEADING_LSB, EUL_HEADING_MSB};
	MSS_I2C_write_read
	(
		&g_mss_i2c1,
		dev_addr,
		read_heading_seq,
		2,
		&heading,
		2,
		MSS_I2C_HOLD_BUS
	);
	MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_RELEASE_BUS);
	return wrap_angle_360(heading/16.0);
}

double calc_display_angle(const uint8_t display_addr, const uint8_t sensor_addr, const uint8_t init)
{
	static double baseline_heading_display;
	static double baseline_heading_sensor;

	if (init)
	{
		baseline_heading_display = read_heading_BNO055(display_addr);
		baseline_heading_sensor = read_heading_BNO055(sensor_addr);
	}

	double heading_sensor = wrap_angle_180(read_heading_BNO055(sensor_addr) - baseline_heading_sensor);
	double heading_display = wrap_angle_180(read_heading_BNO055(display_addr) - baseline_heading_display);

	return wrap_angle_180(heading_sensor - heading_display);
}

#endif /* IMU_INTERFACE_H_ */
