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
// Create Date:         Nov 15, 2011
// Design Name:         FMC-IMAGEON VITA Passthrough
// Module Name:         fmc_imageon_vita_passthrough.h
// Project Name:        FMC-IMAGEON VITA Passthrough Program
// Target Devices:      Zynq
// Hardware Boards:     FMC-IMAGEON
// 
//
// Tool versions:       Vivado 2013.3
//
// Description:         FMC-IMAGEON VITA Demo Program
//                      This application will configure the FMC-IMAGEON module
//                      for the simple case of an HDMI passthrough:
//                      - VITA Input
//                         - VITA sensor configured for 1080P60 resolution
//                      - HDMI Output
//                         - ADV7511 configured for 16 bit YCbCr 4:2:2 mode
//                           with embedded syncs
//                      If present, it will also reset the Video Timing Controller
//                      that is used for timing in the AXI4-Stream bridges
//
// Dependencies:
//
// Revision:            Dec 20, 2013: 1.00 Initial version

//
//----------------------------------------------------------------

#ifndef __FMC_IMAGEON_VITA_PASSTHROUGH_H__
#define __FMC_IMAGEON_VITA_PASSTHROUGH_H__

#include "xparameters.h"
#include "sleep.h"

#include "fmc_iic.h"
#include "fmc_imageon.h"
#include "video_resolution.h"

#include "fmc_imageon_vita_receiver.h"

#if defined(XPAR_XVTC_NUM_INSTANCES)
   // If the design contains at least one VTC instance
   #include "xvtc_hw.h"
   #include "video_generator.h"
#endif

//#if defined(XPAR_DPC_NUM_INSTANCES)
#if defined(XPAR_DPC_0_BASEADDR)
   #include "xdpc.h"
#endif
//#if defined(XPAR_CFA_NUM_INSTANCES)
#if defined(XPAR_CFA_0_BASEADDR)
#include "xcfa.h"
#endif

// This structure contains the context for the VITA-2000 frame buffer design
struct struct_fmc_imageon_vita_passthrough_t
{
   // IP base addresses
   Xuint32 uBaseAddr_IIC_FmcImageon;
   Xuint32 uBaseAddr_VITA_Receiver;
#if defined(XPAR_XVTC_NUM_INSTANCES)
   //Xuint32 uBaseAddr_VTC_Axi4sTiming;
   Xuint32 uDeviceId_VTC_HdmioGenerator;
   XVtc vtc_vita_detector;
   XVtc vtc_hdmio_generator;
#endif
//#if defined(XPAR_DPC_NUM_INSTANCES)
#if defined(XPAR_DPC_0_BASEADDR)
   Xuint32 uBaseAddr_DPC;
#endif
//#if defined(XPAR_CFA_NUM_INSTANCES)
#if defined(XPAR_CFA_0_BASEADDR)
   Xuint32 uBaseAddr_CFA;
#endif

   fmc_iic_t fmc_imageon_iic;

   fmc_imageon_t fmc_imageon;

   fmc_imageon_vita_receiver_t vita_receiver;
   fmc_imageon_vita_status_t vita_status_t1;
   fmc_imageon_vita_status_t vita_status_t2;

   Xuint32 bVerbose;

   // HDMI Output settings
   Xuint32 hdmio_width;
   Xuint32 hdmio_height;
   Xuint32 hdmio_resolution;
   fmc_imageon_video_timing_t hdmio_timing;


};
typedef struct struct_fmc_imageon_vita_passthrough_t fmc_imageon_vita_passthrough_t;

int fmc_imageon_vita_passthrough_init( fmc_imageon_vita_passthrough_t *pDemo );

#endif // __FMC_IMAGEON_VITA_PASSTHROUGH_H__
