/PROG  TTN4_IN_FLOOR
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 1706;
CREATE		= DATE 15-01-26  TIME 11:33:44;
MODIFIED	= DATE 15-03-26  TIME 07:00:20;
FILE_NAME	= TTN4_IN_;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 2170;
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
   1:  --eg:Blasts the inner floor of a
    :  Titan 4 ;
   2:  UFRAME_NUM=1 ;
   3:  UTOOL_NUM=1 ;
   4:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   5:  R[19:MM Remain]=R[20:Cont Length]*.8    ;
   6:J P[1] 30% CNT R[12:CNTSPD]    ;
   7:J P[2] 30% CNT R[12:CNTSPD]    ;
   8:  WAIT    .25(sec) ;
   9:  CALL BLAST_ON_1    ;
  10:  LBL[10] ;
  11:L P[3:SW Corner] R[11:Trolley BLST SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  12:L P[4:SE Corner] R[4:Floor pass secs]sec FINE Offset,PR[1:Trolley Offset]    ;
  13:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  14:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  15:L P[4:SE Corner] 2400mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  16:L P[3:SW Corner] R[4:Floor pass secs]sec FINE Offset,PR[1:Trolley Offset]    ;
  17:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  18:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  19:  IF R[19:MM Remain]>0,JMP LBL[10] ;
  20:   ;
  21:   ;
  22:  WAIT    .25(sec) ;
  23:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  24:   ;
  25:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  26:  R[19:MM Remain]=R[20:Cont Length]*.8    ;
  27:  R[4:Floor pass secs]=12    ;
  28:J P[6] 30% CNT R[12:CNTSPD]    ;
  29:  WAIT    .25(sec) ;
  30:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  31:  LBL[20] ;
  32:L P[7] R[11:Trolley BLST SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  33:L P[8] R[4:Floor pass secs]sec FINE Offset,PR[1:Trolley Offset]    ;
  34:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  35:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  36:L P[8] 2400mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  37:L P[7] R[4:Floor pass secs]sec FINE Offset,PR[1:Trolley Offset]    ;
  38:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  39:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  40:  IF R[19:MM Remain]>0,JMP LBL[20] ;
  41:   ;
  42:   ;
  43:   ;
  44:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   265.081  mm,	Y =  2809.013  mm,	Z =  3040.670  mm,
	W =     2.632 deg,	P =   -28.719 deg,	R =  -139.299 deg,
	E1=  3564.419  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.101  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =    22.931  mm,	Y =  4445.021  mm,	Z =  3146.744  mm,
	W =     9.167 deg,	P =   -18.863 deg,	R =   175.195 deg,
	E1=  4734.112  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.074  mm
};
P[3:"SW Corner"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =    16.174  mm,	Y =  4445.678  mm,	Z =  3149.089  mm,
	W =     9.772 deg,	P =   -18.566 deg,	R =   173.314 deg,
	E1=  4733.980  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.049  mm
};
P[4:"SE Corner"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, -1, 0',
	X =   368.390  mm,	Y =  4445.190  mm,	Z =  3146.798  mm,
	W =    14.189 deg,	P =   -18.960 deg,	R =   -87.518 deg,
	E1=  4734.093  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.069  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F D B, 0, 0, 0',
	X =  -891.929  mm,	Y = -5334.295  mm,	Z =  3048.294  mm,
	W =    27.121 deg,	P =   -12.561 deg,	R =    67.469 deg,
	E1= -4965.509  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.004  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F D B, 0, 0, 0',
	X =  -892.152  mm,	Y = -5334.356  mm,	Z =  3048.193  mm,
	W =    27.118 deg,	P =   -12.565 deg,	R =    67.469 deg,
	E1= -4965.490  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.006  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F D B, 0, 0, 0',
	X =   689.351  mm,	Y = -5334.304  mm,	Z =  3048.232  mm,
	W =    27.113 deg,	P =   -12.565 deg,	R =    23.839 deg,
	E1= -4965.490  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -305.005  mm
};
/END
