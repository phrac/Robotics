/PROG  TTN4DEMO
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1943;
CREATE		= DATE 14-10-22  TIME 13:13:32;
MODIFIED	= DATE 14-10-24  TIME 10:05:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 2375;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:   ;
   2:   ;
   3:  UFRAME_NUM=1 ;
   4:  UTOOL_NUM=1 ;
   5:  LBL[5] ;
   6:   ;
   7:   ;
   8:   ;
   9:   ;
  10:J P[1:HOME] 85% CNT100    ;
  11:J P[2:PERCH] 85% CNT100    ;
  12:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  13:  LBL[10] ;
  14:   ;
  15:J P[3:blaston] R[1:Blast Move Speed]% CNT70 Offset,PR[1:Trolley Offset]    ;
  16:L P[4] R[1:Blast Move Speed]mm/sec CNT70 Offset,PR[1:Trolley Offset]    ;
  17:L P[5] R[1:Blast Move Speed]mm/sec CNT70 Offset,PR[1:Trolley Offset]    ;
  18:L P[6] R[1:Blast Move Speed]mm/sec CNT70 Offset,PR[1:Trolley Offset]    ;
  19:   ;
  20:   ;
  21:   ;
  22:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[2:Trolley Incrm]    ;
  23:  IF (PR[GP1:1,7]>=11700),JMP LBL[20] ;
  24:   ;
  25:  JMP LBL[10] ;
  26:  LBL[20] ;
  27:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  28:   ;
  29:L P[7] R[1:Blast Move Speed]mm/sec CNT50    ;
  30:J P[8] 85% CNT20    ;
  31:L P[9] R[1:Blast Move Speed]mm/sec CNT50    ;
  32:J P[10] R[1:Blast Move Speed]% CNT40    ;
  33:J P[11] 41% CNT25    ;
  34:J P[12] R[1:Blast Move Speed]% CNT65    ;
  35:L P[13] R[1:Blast Move Speed]mm/sec CNT65    ;
  36:J P[14] 41% CNT100    ;
  37:J P[15] 41% CNT50    ;
  38:J P[16] 35% CNT50    ;
  39:   ;
  40:   ;
  41:   ;
  42:J P[1:HOME] 85% CNT100    ;
  43:   ;
  44:  JMP LBL[5] ;
  45:   ;
  46:   ;
  47:   ;
  48:   ;
  49:   ;
  50:   ;
/POS
P[1:"HOME"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   113.425  mm,	Y =  -832.766  mm,	Z =   946.739  mm,
	W =    -3.850 deg,	P =    -2.566 deg,	R =  -141.877 deg,
	E1=      .326  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4699.883  mm
};
P[2:"PERCH"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   801.986  mm,	Y =   252.710  mm,	Z =   946.914  mm,
	W =    -3.851 deg,	P =    -2.569 deg,	R =   -42.140 deg,
	E1=      .290  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4699.875  mm
};
P[3:"blaston"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    18.078  mm,	Y =  1590.671  mm,	Z =  1061.598  mm,
	W =     5.292 deg,	P =    -3.987 deg,	R =   -46.697 deg,
	E1=   702.520  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4675.503  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    18.035  mm,	Y =  1566.650  mm,	Z =  3054.803  mm,
	W =    16.013 deg,	P =   -14.841 deg,	R =   -48.572 deg,
	E1=   702.512  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4675.503  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    18.066  mm,	Y =  1566.693  mm,	Z =  3054.794  mm,
	W =    16.010 deg,	P =   -14.841 deg,	R =   -48.569 deg,
	E1=  1060.963  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4675.502  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    18.061  mm,	Y =  1566.797  mm,	Z =  1437.180  mm,
	W =     3.479 deg,	P =    -2.766 deg,	R =   -44.901 deg,
	E1=  1060.954  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4675.502  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   755.506  mm,	Y = 12720.393  mm,	Z =  1428.110  mm,
	W =    -1.053 deg,	P =    -1.079 deg,	R =   -42.596 deg,
	E1= 12626.465  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4699.974  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   680.154  mm,	Y = 11996.648  mm,	Z =  1115.062  mm,
	W =    15.138 deg,	P =   -15.951 deg,	R =   -48.607 deg,
	E1= 11887.738  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4332.793  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   681.270  mm,	Y =   118.036  mm,	Z =  1111.812  mm,
	W =    14.761 deg,	P =   -15.540 deg,	R =   -50.538 deg,
	E1=     3.160  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4319.427  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -241.959  mm,	Y =  -851.965  mm,	Z =   593.284  mm,
	W =    51.599 deg,	P =    42.248 deg,	R =  -116.481 deg,
	E1=     3.172  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4319.427  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -41.874  mm,	Y =   978.774  mm,	Z =   763.895  mm,
	W =   -11.554 deg,	P =     3.080 deg,	R =    48.467 deg,
	E1=    73.498  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   -54.467  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =    27.098  mm,	Y =   726.598  mm,	Z =  1404.648  mm,
	W =   -18.064 deg,	P =   -19.492 deg,	R =   146.315 deg,
	E1=   201.116  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -199.800  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =    27.081  mm,	Y = 12223.613  mm,	Z =  1404.671  mm,
	W =   -18.063 deg,	P =   -19.488 deg,	R =   146.312 deg,
	E1= 11698.063  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -199.793  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   386.280  mm,	Y = 12361.834  mm,	Z =   792.290  mm,
	W =     1.412 deg,	P =   -14.805 deg,	R =   116.795 deg,
	E1= 11698.052  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -199.783  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   696.713  mm,	Y = 12021.242  mm,	Z =   792.418  mm,
	W =    10.721 deg,	P =    10.357 deg,	R =   -46.151 deg,
	E1= 11698.119  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4279.876  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   308.499  mm,	Y = 11933.592  mm,	Z =  2839.937  mm,
	W =    12.253 deg,	P =     8.113 deg,	R =  -137.856 deg,
	E1= 11866.469  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  4397.324  mm
};
/END
