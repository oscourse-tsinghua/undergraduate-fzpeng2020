#include <stdint.h>
#include <stdbool.h>

#define uart_rx  (*(volatile uint8_t*)0x02000000)
#define uart_tx  (*(volatile uint8_t*)0x02000000)
#define uart_lcr (*(volatile uint8_t*)0x02000003)
#define uart_ls  (*(volatile uint8_t*)0x02000005)

#define reg_gpio (*(volatile uint32_t*)0x30000000)
#define reg_seg1 (*(volatile uint32_t*)0x04000000)
#define reg_seg2 (*(volatile uint32_t*)0x04000010)
int main()
{
	reg_gpio = 0x11;
	int i = 0;
	int test_ram[10000];
	char greet[] = "Booting...... Testing for ram by ZhipengFan.\n\r";
	char *p;	
	for(i = 0 ; i < 10000; i++) {
		test_ram[i] = i;
	}
//	reg_seg1 = ( uart_divisor >> 8 ) & 15;
//	reg_seg2 = ( uart_divisor >> 4 ) & 15;
//	for(i = 0; i < 1000000; i++);
//	reg_seg1 = ( uart_divisor >> 4 ) & 15;
//	reg_seg2 = ( uart_divisor >> 0 ) & 15;
		
	p = greet;
	while( uart_tx = *p++);
	for(i = 0 ; i < 10000; i++) uart_tx = (char)test_ram[i];
    while(1);

	return 0;
}
