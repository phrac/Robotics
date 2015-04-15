/PROG  TTN4_BOTTOM
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 1637;
CREATE		= DATE 15-01-27  TIME 13:23:24;
MODIFIED	= DATE 15-03-26  TIME 14:00:58;
FILE_NAME	= TTN4_BOT;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 2125;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   5:  R[19:MM Remain]=R[20:Cont Length]    ;
   6:   ;
   7:J P[1] 55% CNT R[12:CNTSPD]    ;
   8:  WAIT    .25(sec) ;
   9:  CALL BLAST_ON_1    ;
  10:  LBL[10] ;
  11:L P[2] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  12:L P[3] R[3:Bottom Secs]sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  13:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  14:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  15:L P[3] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  16:L P[2] R[3:Bottom Secs]sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  17:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  18:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  19:  IF R[19:MM Remain]>0,JMP LBL[10] ;
  20:   ;
  21:J P[4] 50% CNT R[12:CNTSPD]    ;
  22:J P[5] 50% CNT R[12:CNTSPD]    ;
  23:J P[6] 50% CNT R[12:CNTSPD]    ;
  24:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  25:  R[19:MM Remain]=R[20:Cont Length]    ;
  26:   ;
  27:  WAIT    .25(sec) ;
  28:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  29:  LBL[20] ;
  30:L P[7] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  31:L P[8] R[4:Floor pass secs]sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  32:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  33:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  34:L P[8] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  35:L P[7] R[4:Floor pass secs]sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  36:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  37:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  38:  IF R[19:MM Remain]>0,JMP LBL[20] ;
  39:   ;
  40:  CALL BLAST_OFF_1    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -179.585  mm,	Y = -8493.472  mm,	Z =  2403.234  mm,
	W =   -96.989 deg,	P =   -44.819 deg,	R =  -178.093 deg,
	E1= -7296.035  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2084.856  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -110.572  mm,	Y = -8424.541  mm,	Z =  2384.924  mm,
	W =   -89.738 deg,	P =   -23.791 deg,	R =   176.860 deg,
	E1= -7207.464  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2084.856  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -160.570  mm,	Y = -8421.521  mm,	Z =  2415.207  mm,
	W =   -89.684 deg,	P =   -38.371 deg,	R =   176.763 deg,
	E1= -7207.414  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2084.857  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -110.617  mm,	Y =  5523.265  mm,	Z =  2385.313  mm,
	W =   -89.715 deg,	P =   -23.792 deg,	R =   176.840 deg,
	E1=  6739.724  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2084.857  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -110.647  mm,	Y =  5523.425  mm,	Z =  2385.424  mm,
	W =   -89.708 deg,	P =   -23.792 deg,	R =   176.833 deg,
	E1=  6739.716  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2443.485  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   200.529  mm,	Y =  3631.220  mm,	Z =  2669.332  mm,
	W =    99.626 deg,	P =    64.137 deg,	R =     7.500 deg,
	E1=  4862.089  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2443.472  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   200.549  mm,	Y =  3631.448  mm,	Z =  2669.453  mm,
	W =    99.610 deg,	P =    64.138 deg,	R =     7.488 deg,
	E1=  4862.098  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2443.471  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   183.646  mm,	Y =  3634.796  mm,	Z =  2714.126  mm,
	W =    96.649 deg,	P =    51.108 deg,	R =     5.877 deg,
	E1=  4862.099  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2443.471  mm
};
/END
