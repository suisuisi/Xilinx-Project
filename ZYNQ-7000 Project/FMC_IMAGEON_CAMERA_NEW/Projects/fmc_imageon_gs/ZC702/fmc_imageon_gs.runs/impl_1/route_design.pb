
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS18 (FIXED_IO_mio[53], FIXED_IO_mio[52], FIXED_IO_mio[51], FIXED_IO_mio[50], FIXED_IO_mio[49], FIXED_IO_mio[48], FIXED_IO_mio[47], FIXED_IO_mio[46], FIXED_IO_mio[45], FIXED_IO_mio[44], FIXED_IO_mio[43], FIXED_IO_mio[42], FIXED_IO_mio[41], FIXED_IO_mio[40], FIXED_IO_mio[39] (the first 15 of 42 listed)); HSTL_I_18 (FIXED_IO_mio[27], FIXED_IO_mio[26], FIXED_IO_mio[25], FIXED_IO_mio[24], FIXED_IO_mio[23], FIXED_IO_mio[22], FIXED_IO_mio[21], FIXED_IO_mio[20], FIXED_IO_mio[19], FIXED_IO_mio[18], FIXED_IO_mio[17], FIXED_IO_mio[16]); 2default:defaultZ23-20h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 105a6cd57
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:39 ; elapsed = 00:00:28 . Memory (MB): peak = 1595.043 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 105a6cd57
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:40 ; elapsed = 00:00:30 . Memory (MB): peak = 1595.043 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.2 Pre Route Cleanup | Checksum: 105a6cd57
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:40 ; elapsed = 00:00:30 . Memory (MB): peak = 1595.043 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.3 Update Timing | Checksum: 15ff57321
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:09 ; elapsed = 00:00:48 . Memory (MB): peak = 1595.043 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2N
:| WNS=-5.410 | TNS=-3673.581| WHS=-1.359 | THS=-3153.620|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 184cad9cd
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:23 ; elapsed = 00:00:56 . Memory (MB): peak = 1604.398 ; gain = 9.3552default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 1f54a6c82
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:43 ; elapsed = 00:02:09 . Memory (MB): peak = 1604.398 ; gain = 9.3552default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.1.1 Update Timing | Checksum: 1976ae081
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:01 ; elapsed = 00:04:01 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-7.523 | TNS=-7083.675| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.1.2.1 Update Timing | Checksum: 105e074a5
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:05 ; elapsed = 00:04:05 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 1561e8ca5
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:08 ; elapsed = 00:04:08 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 10f5d5ccd
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:10 ; elapsed = 00:04:09 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 10f5d5ccd
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:10 ; elapsed = 00:04:09 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.2.1 Update Timing | Checksum: 1f101a742
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:13 ; elapsed = 00:04:12 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-7.452 | TNS=-7095.071| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.2.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.2.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.2.2.1 Update Timing | Checksum: 25e22f191
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:15 ; elapsed = 00:04:13 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.2.2.2 Fast Budgeting | Checksum: 2359d1cac
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:18 ; elapsed = 00:04:16 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
I
4Phase 4.2.2 GlobIterForTiming | Checksum: 149f9e74f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:19 ; elapsed = 00:04:18 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 149f9e74f
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:19 ; elapsed = 00:04:18 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.3.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.3.1 Update Timing | Checksum: 245382b61
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:21 ; elapsed = 00:04:19 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-7.452 | TNS=-7107.185| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.3 Global Iteration 2 | Checksum: 24e2e880b
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:21 ; elapsed = 00:04:20 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 24e2e880b
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:22 ; elapsed = 00:04:20 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 23dc9596c
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:26 ; elapsed = 00:04:22 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-7.452 | TNS=-7088.125| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 172bc1a86
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:27 ; elapsed = 00:04:23 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 172bc1a86
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:27 ; elapsed = 00:04:23 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 172bc1a86
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:27 ; elapsed = 00:04:23 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 6.1 Update Timing | Checksum: 206a7f9ae
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:07:33 ; elapsed = 00:04:27 . Memory (MB): peak = 1631.590 ; gain = 36.5472default:defaulth px� 
�
Intermediate Timing Summary %s164*route2N
:| WNS=-7.452 | TNS=-8192.213| WHS=-2.309 | THS=-3351.914|
2default:defaultZ35-416h px� 
�

Phase %s%s
101*constraints2
6.2 2default:default25
!Lut RouteThru Assignment for hold2default:defaultZ18-101h px� 
W
BPhase 6.2 Lut RouteThru Assignment for hold | Checksum: 1473924d8
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:19 ; elapsed = 00:15:09 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 1473924d8
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:19 ; elapsed = 00:15:09 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
�
�The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack.
Resolution: Run report_timing on the design before routing to identify timing paths with higher hold violations and low or negative setup margin.179*route2
9412default:defaultZ35-446h px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 1fbe0d9f0
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:20 ; elapsed = 00:15:09 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 1fbe0d9f0
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:20 ; elapsed = 00:15:10 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 25ba8bd9f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:24 ; elapsed = 00:15:14 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 10.1 Update Timing | Checksum: 198d9f27a
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:30 ; elapsed = 00:15:17 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
�
Estimated Timing Summary %s
57*route2N
:| WNS=-7.452 | TNS=-9117.745| WHS=-2.309 | THS=-2871.671|
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 198d9f27a
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:30 ; elapsed = 00:15:17 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
�
_Router was unable to fix hold violation on %s pins because of tight setup and hold constraints.170*route2
162default:defaultZ35-422h px� 
�
ORouter was unable to fix hold violation on %s pins due to run-time limitations.168*route2
32default:defaultZ35-420h px� 
�
TRouter was unable to fix hold violation on %s pins because of high hold requirement.175*route2
13242default:defaultZ35-427h px� 
�
�Router was unable to fix hold violation on %s pins. This could be due to a combination of congestion, blockages and run-time limitations.169*route2
982default:defaultZ35-421h px� 
=
Router Completed Successfully
16*routeZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:30 ; elapsed = 00:15:17 . Memory (MB): peak = 2053.207 ; gain = 458.1642default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
1092default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:28:362default:default2
00:15:212default:default2
2053.2072default:default2
458.1642default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:272default:default2
00:00:122default:default2
2053.2072default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:282default:default2
00:00:142default:default2
2053.2072default:default2
0.0002default:defaultZ17-268h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
tD:/FMC_IMAGEON_CAMERA/Projects/fmc_imageon_gs/ZC702/fmc_imageon_gs.runs/impl_1/fmc_imageon_gs_wrapper_drc_routed.rpttD:/FMC_IMAGEON_CAMERA/Projects/fmc_imageon_gs/ZC702/fmc_imageon_gs.runs/impl_1/fmc_imageon_gs_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:142default:default2
00:00:092default:default2
2053.2072default:default2
0.0002default:defaultZ17-268h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:262default:default2
00:00:152default:default2
2053.2072default:default2
0.0002default:defaultZ17-268h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:132default:default2
00:00:102default:default2
2053.2072default:default2
0.0002default:defaultZ17-268h px� 


End Record