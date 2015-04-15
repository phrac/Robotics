/PROG  TTN4_OUT_N
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2809;
CREATE		= DATE 14-12-22  TIME 17:56:22;
MODIFIED	= DATE 15-03-07  TIME 15:33:36;
FILE_NAME	= TTN4_OUT;
VERSION		= 0;
LINE_COUNT	= 68;
MEMORY_SIZE	= 3313;
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
   1:  --eg: ;
   2:   ;
   3:  UFRAME_NUM=1 ;
   4:  UTOOL_NUM=1 ;
   5:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   6:  R[18:Pass Count]=R[18:Pass Count]-R[18:Pass Count]    ;
   7:  R[17:Num Passes]=((R[21:End Length]/R[16:Bridge INC])+6) ;
   8:  R[13:Bridge Blst Spd]=1200    ;
   9:  R[14:End Blast SPD]=95    ;
  10:   ;
  11:   ;
  12:J P[4:Perch] 30% FINE    ;
  13:J P[1] 30% CNT R[12:CNTSPD]    ;
  14:  CALL BLAST_ON_1    ;
  15:   ;
  16:  LBL[10] ;
  17:L P[3] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  18:L P[2] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  19:L P[113] 4.0sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  20:L P[114] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  21:  WAIT   2.00(sec) ;
  22:   ;
  23:  IF R[18:Pass Count]<37,JMP LBL[20] ;
  24:  LBL[12] ;
  25:  IF R[18:Pass Count]>10,JMP LBL[30] ;
  26:  LBL[15] ;
  27:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]-R[16:Bridge INC]    ;
  28:  R[18:Pass Count]=R[18:Pass Count]+1    ;
  29:  IF R[18:Pass Count]<=R[17:Num Passes],JMP LBL[10] ;
  30:  JMP LBL[40] ;
  31:   ;
  32:   ;
  33:  LBL[20] ;
  34:L P[5] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  35:L P[6] R[9:Heavy Blast]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  36:  JMP LBL[12] ;
  37:   ;
  38:  LBL[30] ;
  39:L P[7] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  40:L P[8] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  41:  JMP LBL[15] ;
  42:   ;
  43:  LBL[40] ;
  44:  WAIT    .25(sec) ;
  45:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  46:J P[9] 20% CNT R[12:CNTSPD]    ;
  47:L P[10] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD]    ;
  48:J P[11] 30% CNT R[12:CNTSPD]    ;
  49:  WAIT   3.00(sec) ;
  50:J P[12] 10% CNT R[12:CNTSPD]    ;
  51:  WAIT   3.00(sec) ;
  52:J P[13] 10% CNT R[12:CNTSPD]    ;
  53:  WAIT   3.00(sec) ;
  54:J P[14] 10% CNT R[12:CNTSPD]    ;
  55:  WAIT   3.00(sec) ;
  56:J P[15] 20% CNT R[12:CNTSPD]    ;
  57:  WAIT   3.00(sec) ;
  58:J P[16] 10% CNT R[12:CNTSPD]    ;
  59:  WAIT   3.00(sec) ;
  60:J P[17] 15% CNT R[12:CNTSPD]    ;
  61:  WAIT   3.00(sec) ;
  62:L P[18] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD]    ;
  63:  WAIT   3.00(sec) ;
  64:  CALL BLAST_OFF_1    ;
  65:J P[19] 50% CNT R[12:CNTSPD]    ;
  66:J P[20] 30% CNT R[12:CNTSPD]    ;
  67:   ;
  68:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   316.754  mm,	Y =  8812.643  mm,	Z =  1365.421  mm,
	W =    85.998 deg,	P =    35.273 deg,	R =    89.898 deg,
	E1=  7926.581  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.743  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   319.240  mm,	Y =  8685.558  mm,	Z =  2972.493  mm,
	W =    86.730 deg,	P =     1.498 deg,	R =    92.124 deg,
	E1=  7926.578  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.741  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   316.755  mm,	Y =  8812.642  mm,	Z =  1365.421  mm,
	W =    85.998 deg,	P =    35.273 deg,	R =    89.898 deg,
	E1=  7926.580  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.742  mm
};
P[4:"Perch"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   316.754  mm,	Y =  8812.643  mm,	Z =  1365.421  mm,
	W =    85.998 deg,	P =    35.273 deg,	R =    89.898 deg,
	E1=  7926.581  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.743  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   224.145  mm,	Y =  9004.892  mm,	Z =  2388.224  mm,
	W =   128.600 deg,	P =    76.296 deg,	R =   150.259 deg,
	E1=  7926.570  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.740  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   267.328  mm,	Y =  8947.444  mm,	Z =  2972.733  mm,
	W =   107.475 deg,	P =     -.534 deg,	R =   136.481 deg,
	E1=  7926.569  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.740  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   279.161  mm,	Y =  8602.252  mm,	Z =  3139.477  mm,
	W =    79.324 deg,	P =     6.345 deg,	R =    70.473 deg,
	E1=  7926.569  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.740  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   347.286  mm,	Y =  8751.252  mm,	Z =  1772.264  mm,
	W =    71.880 deg,	P =    53.678 deg,	R =    56.896 deg,
	E1=  7926.568  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.740  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   277.039  mm,	Y =  8898.365  mm,	Z =  1769.744  mm,
	W =    75.340 deg,	P =    57.774 deg,	R =    87.087 deg,
	E1=  7926.476  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1926.190  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   277.057  mm,	Y =  8898.339  mm,	Z =  3065.760  mm,
	W =    70.979 deg,	P =    -6.920 deg,	R =    83.223 deg,
	E1=  7926.476  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1926.187  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   317.472  mm,	Y =  9060.518  mm,	Z =  3024.594  mm,
	W =    66.925 deg,	P =    34.347 deg,	R =    67.326 deg,
	E1=  7926.476  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1348.766  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   182.664  mm,	Y =  9134.720  mm,	Z =  3082.627  mm,
	W =    45.056 deg,	P =    31.212 deg,	R =    70.046 deg,
	E1=  7926.476  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1348.768  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   210.607  mm,	Y =  8980.117  mm,	Z =  3110.535  mm,
	W =    59.114 deg,	P =      .583 deg,	R =    93.653 deg,
	E1=  7926.476  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1348.769  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    56.736  mm,	Y =  9322.296  mm,	Z =  2017.388  mm,
	W =    19.823 deg,	P =    58.465 deg,	R =    78.264 deg,
	E1=  7926.475  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1348.770  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    56.704  mm,	Y =  9322.382  mm,	Z =  2017.345  mm,
	W =   -55.544 deg,	P =    -8.896 deg,	R =     2.192 deg,
	E1=  7926.474  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -390.458  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -25.534  mm,	Y =  9245.604  mm,	Z =  2940.711  mm,
	W =    -9.455 deg,	P =   -41.924 deg,	R =   -18.053 deg,
	E1=  7926.473  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -390.459  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -227.734  mm,	Y =  9064.210  mm,	Z =  2953.785  mm,
	W =   -19.385 deg,	P =   -15.327 deg,	R =    53.034 deg,
	E1=  7926.473  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   357.614  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -158.900  mm,	Y =  9145.447  mm,	Z =  2966.638  mm,
	W =   -17.777 deg,	P =   -11.221 deg,	R =    36.830 deg,
	E1=  7926.473  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   357.609  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -158.901  mm,	Y =  9515.511  mm,	Z =  2966.650  mm,
	W =   -17.776 deg,	P =   -11.221 deg,	R =    36.830 deg,
	E1=  8296.559  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   357.607  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -157.906  mm,	Y =  9528.883  mm,	Z =  1756.307  mm,
	W =   -41.705 deg,	P =    10.094 deg,	R =    37.076 deg,
	E1=  8296.153  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1324.774  mm
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   322.127  mm,	Y =  8908.276  mm,	Z =  2771.317  mm,
	W =    65.293 deg,	P =    82.152 deg,	R =    67.706 deg,
	E1=  7926.576  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.741  mm
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   322.133  mm,	Y =  8908.402  mm,	Z =  2442.494  mm,
	W =    65.259 deg,	P =    82.153 deg,	R =    67.670 deg,
	E1=  7926.576  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   833.741  mm
};
/END
