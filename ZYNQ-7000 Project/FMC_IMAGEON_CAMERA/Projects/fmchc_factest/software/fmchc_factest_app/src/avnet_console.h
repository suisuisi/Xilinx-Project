//----------------------------------------------------------------
//      _____
//     /     \
//    /____   \____
//   / \===\   \==/
//  /___\===\___\/  AVNET
//       \======/
//        \====/    
//---------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
// 
// Please direct any questions to:  technical.support@avnet.com
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2011 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------
//
// Create Date:         Nov 18, 2011
// Design Name:         Avnet Console
// Module Name:         avnet_console.h
// Project Name:        Avnet Console
//
// Tool versions:       ISE 14.2
//
// Description:         Text-based console for application XXX
//
// Dependencies:        
//
// Revision:            Nov 18, 2010: 1.01 Initial version
//                      Sep 17, 2012: 1.02 Remove video multiplexers
//                                         Fix gamma equalization
//
//----------------------------------------------------------------

#ifndef __AVNET_CONSOLE_H__
#define __AVNET_CONSOLE_H__

#include <stdio.h>
#include "demo.h"
#include "xbasic_types.h"

#define MAX_LINE_LENGTH             256
#define MAX_ARGC                    16

#define AVNET_CONSOLE_PROMPT          "FMCHC_PYTHON1300C"

#define AVNET_CONSOLE_MAJOR         0
#define AVNET_CONSOLE_MINOR         1

// This structure allows the text-based console to be accessed from any interface
//   for example: serial port, ethernet connection, etc...
struct struct_avnet_console_t
{
   // For input:
   // - new character received from user
   Xint32 inchar;
   char inline_buffer[MAX_LINE_LENGTH];
   int inline_count;
   
   // For output:
   // - context handle
   // - function pointer to formatted print routine
	void * io_handle;
	void (*io_hprintf)( void *h, const char *fmt, ... );
	void (*pipe_hprintf)( void *h, const char *fmt, ... );

	// General status:
	int pipe;
	int verbose;
	int echo;
	int quit;
};
typedef struct struct_avnet_console_t avnet_console_t;

void avnet_console_init( avnet_console_t *pConsole );
void avnet_console_process( avnet_console_t *pConsole );
int web_hprintf( void *web_handle, const char * fmt, ...);
int web_pipeprintf( void *web_handle, const char * fmt, ...);

void avnet_console_verbose_command( avnet_console_t *pConsole, int cargc, char ** cargv );
void avnet_console_start_command( avnet_console_t *pConsole, int cargc, char ** cargv );

void avnet_console_serial_command( avnet_console_t *pConsole, int cargc, char ** cargv );
void avnet_console_test_ipmi_command( avnet_console_t *pConsole, int cargc, char ** cargv );
void avnet_console_test_iic_command( avnet_console_t *pConsole, int cargc, char ** cargv );
void avnet_console_test_hdmi_command( avnet_console_t *pConsole, int cargc, char ** cargv );
void avnet_console_test_camera_command( avnet_console_t *pConsole, int cargc, char ** cargv );


#endif // __AVNET_CONSOLE_H__
