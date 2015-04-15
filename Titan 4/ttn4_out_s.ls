/PROG  TTN4_OUT_S
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 1699;
CREATE		= DATE 15-01-26  TIME 10:36:46;
MODIFIED	= DATE 15-03-18  TIME 09:29:40;
FILE_NAME	= TTN4_OUT;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 2175;
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
   8:   ;
   9:   ;
  10:J P[1:HOME] 30% CNT100    ;
  11:J P[2:PERCH] 30% FINE    ;
  12:  WAIT    .25(sec) ;
  13:  CALL BLAST_ON_1    ;
  14:   ;
  15:  LBL[10] ;
  16:L P[3:Top] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  17:L P[4:Bottom] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  18:L P[25] 4.0sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  19:L P[26] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  20:   ;
  21:  IF (R[18:Pass Count]<(R[17:Num Passes]-10)),JMP LBL[30] ;
  22:   ;
  23:  LBL[15] ;
  24:  IF R[18:Pass Count]>10,JMP LBL[40] ;
  25:   ;
  26:  LBL[20] ;
  27:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[16:Bridge INC]    ;
  28:  R[18:Pass Count]=R[18:Pass Count]+1    ;
  29:  IF R[18:Pass Count]<=R[17:Num Passes],JMP LBL[10] ;
  30:  JMP LBL[50] ;
  31:   ;
  32:  LBL[30] ;
  33:L P[27] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  34:L P[28] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  35:  JMP LBL[15] ;
  36:   ;
  37:  LBL[40] ;
  38:L P[29] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  39:L P[30] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  40:  JMP LBL[20] ;
  41:   ;
  42:  LBL[50] ;
  43:  CALL BLAST_OFF_1    ;
/POS
P[1:"HOME"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   108.807  mm,	Y = -5886.700  mm,	Z =   887.424  mm,
	W =   -56.972 deg,	P =   -56.751 deg,	R =   -14.266 deg,
	E1= -7121.243  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2993.480  mm
};
P[2:"PERCH"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1157.122  mm,	Y = -7305.286  mm,	Z =   918.602  mm,
	W =   -74.724 deg,	P =   -55.703 deg,	R =  -104.527 deg,
	E1= -7137.327  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.079  mm
};
P[3:"Top"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1157.123  mm,	Y = -7305.281  mm,	Z =   918.602  mm,
	W =   -74.724 deg,	P =   -55.703 deg,	R =  -104.526 deg,
	E1= -7137.332  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.080  mm
};
P[4:"Bottom"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1139.449  mm,	Y = -7344.426  mm,	Z =  2699.806  mm,
	W =   -70.032 deg,	P =   -85.508 deg,	R =  -112.140 deg,
	E1= -7137.333  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.080  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1146.482  mm,	Y = -7269.736  mm,	Z =  2546.353  mm,
	W =   -87.926 deg,	P =   -42.197 deg,	R =   -93.620 deg,
	E1= -7137.336  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.081  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1148.842  mm,	Y = -7230.115  mm,	Z =  1557.456  mm,
	W =   -88.225 deg,	P =   -29.961 deg,	R =   -93.112 deg,
	E1= -7137.336  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.081  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1216.767  mm,	Y = -7153.264  mm,	Z =  1738.486  mm,
	W =   -56.756 deg,	P =   -16.646 deg,	R =   -96.870 deg,
	E1= -7137.337  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.081  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  1243.964  mm,	Y = -7170.270  mm,	Z =  2714.083  mm,
	W =   -51.584 deg,	P =   -71.034 deg,	R =  -108.184 deg,
	E1= -7137.338  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.081  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1088.445  mm,	Y = -7302.493  mm,	Z =  3071.094  mm,
	W =     1.307 deg,	P =   -49.100 deg,	R =  -175.240 deg,
	E1= -7137.338  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.081  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   942.415  mm,	Y = -7411.031  mm,	Z =  1003.271  mm,
	W =  -139.435 deg,	P =   -54.828 deg,	R =   -74.491 deg,
	E1= -7137.338  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2956.081  mm
};
/END
