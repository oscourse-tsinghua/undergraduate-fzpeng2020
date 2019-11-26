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
	char greet[] = "Booting......\n\r.";
	int i = 0;
	int j = 0;
	char tmp;
	
//	reg_seg1 = ( uart_divisor >> 8 ) & 15;
//	reg_seg2 = ( uart_divisor >> 4 ) & 15;
//	for(i = 0; i < 1000000; i++);
//	reg_seg1 = ( uart_divisor >> 4 ) & 15;
//	reg_seg2 = ( uart_divisor >> 0 ) & 15;
		

	while(1) {		
		for(j = 0; j < 15; j++) {
			uart_tx = greet[j];
			reg_gpio = 255 >> j;
			
			// test 5th bit in uart_ls 
		}
	}
	
	return 0;
}
