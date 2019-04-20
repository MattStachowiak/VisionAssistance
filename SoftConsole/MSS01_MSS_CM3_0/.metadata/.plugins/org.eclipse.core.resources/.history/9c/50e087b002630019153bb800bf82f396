#ifndef LED_H_
#define LED_H_

// LED Globals
#define LED_ADDR 0x40050000
#define NUMLEDS 24
#define blue 0xff0000
#define red 0x00ff00
#define green 0x0000ff
#define yellow 0x00ffff
#define purple 0xffff00
#define off 0x0

// Reset LED values
void LED_reset(volatile uint32_t* LED){
	int i;
	for (i = 0; i < NUMLEDS; ++i){
		LED[i] = off;
	}
}

#endif /* LED_H_ */
