/*
 * main.c
 *
 *  Created on: Aug 1, 2014
 *      Author: 910560
 */

#include "demo.h"
#include "avnet_console.h"

demo_t demo, demo2;
demo_t *pdemo, *pdemo2;

void cam_R_initial(void);
void cam_L_initial(void);

int main() {
	xil_printf("\n\r");
	xil_printf("------------------------------------------------------\n\r");
	xil_printf("--                    FMC-IMAGEON                   --\n\r");
	xil_printf("--               Getting Started Design             --\n\r");
	xil_printf("------------------------------------------------------\n\r");
	xil_printf("\n\r");

	cam_R_initial();
	cam_L_initial();

	// Start serial console
	print_avnet_console_serial_app_header();
	start_avnet_console_serial_application();
	while (1)
	{
		if (transfer_avnet_console_serial_data()) {
			break;
		}
	}

	return 0;
}

void cam_R_initial(void) {
	pdemo = &demo;
	demo_init( pdemo );

	// Init reference design
	demo_init_frame_buffer(pdemo);

	// Try CAM first
	pdemo->cam_alpha = 0xFF;
	pdemo->hdmi_alpha = 0x00;
	if ( !demo_start_cam_in(pdemo) )
	{
		// Then try HDMI
		pdemo->cam_alpha = 0x00;
		pdemo->hdmi_alpha = 0xFF;
		demo_start_hdmi_in(pdemo);
	}
	demo_start_frame_buffer(pdemo);
}

void cam_L_initial(void) {
	pdemo2 = &demo2;
	demo_init( pdemo2 );

	// Init reference design
	demo_init_frame_buffer(pdemo2);

	// Try CAM first
	pdemo2->cam_alpha = 0xFF;
	pdemo2->hdmi_alpha = 0x00;
	if ( !demo_start_cam_in(pdemo2) )
	{
		// Then try HDMI
		pdemo2->cam_alpha = 0x00;
		pdemo2->hdmi_alpha = 0xFF;
		demo_start_hdmi_in(pdemo2);
	}
	demo_start_frame_buffer(pdemo2);
}
