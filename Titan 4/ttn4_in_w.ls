/PROG  TTN4_IN_W
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1594;
CREATE		= DATE 15-01-15  TIME 11:33:34;
MODIFIED	= DATE 15-03-20  TIME 11:51:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 2062;
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
   5:   ;
   6:  R[19:MM Remain]=R[20:Cont Length]*.8    ;
   7:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   8:   ;
   9:J P[1] 30% CNT75    ;
  10:J P[4] 20% CNT R[12:CNTSPD]    ;
  11:  WAIT    .25(sec) ;
  12:  CALL BLAST_ON_1    ;
  13:   ;
  14:  LBL[10] ;
  15:L P[2] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  16:L P[3] R[10:Panel BLST SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  17:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  18:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  19:L P[3] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  20:L P[2] R[10:Panel BLST SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  21:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  22:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  23:   ;
  24:  IF R[19:MM Remain]>0,JMP LBL[10] ;
  25:   ;
  26:   ;
  27:J P[5] 30% CNT R[12:CNTSPD]    ;
  28:  R[19:MM Remain]=R[20:Cont Length]*.19    ;
  29:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  30:  WAIT    .25(sec) ;
  31:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  32:  LBL[20] ;
  33:L P[6] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  34:L P[7] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  35:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  36:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  37:L P[7] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  38:L P[6] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  39:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  40:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  41:  IF R[19:MM Remain]>0,JMP LBL[20] ;
  42:   ;
  43:  CALL BLAST_OFF_1    ;
  44:   ;
  45:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   207.504  mm,	Y =  3680.352  mm,	Z =  2795.123  mm,
	W =   -11.938 deg,	P =   -15.466 deg,	R =  -161.246 deg,
	E1=  3996.212  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   -67.786  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   254.519  mm,	Y =  4102.012  mm,	Z =  1636.782  mm,
	W =   -76.805 deg,	P =   -21.283 deg,	R =  -167.678 deg,
	E1=  4838.502  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -888.359  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   195.608  mm,	Y =  4079.570  mm,	Z =  2841.059  mm,
	W =   -28.683 deg,	P =   -79.130 deg,	R =   149.345 deg,
	E1=  4838.499  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -888.353  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   254.550  mm,	Y =  4102.035  mm,	Z =  1636.782  mm,
	W =   -76.805 deg,	P =   -21.284 deg,	R =  -167.675 deg,
	E1=  4838.515  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -888.378  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   265.517  mm,	Y = -5010.801  mm,	Z =  1943.442  mm,
	W =    80.940 deg,	P =    62.818 deg,	R =   133.786 deg,
	E1= -5036.953  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -888.284  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   265.517  mm,	Y = -5010.800  mm,	Z =  1943.442  mm,
	W =    80.940 deg,	P =    62.818 deg,	R =   133.786 deg,
	E1= -5036.952  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -888.283  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   409.488  mm,	Y = -5134.734  mm,	Z =  3076.235  mm,
	W =    85.507 deg,	P =     8.827 deg,	R =   137.514 deg,
	E1= -5036.948  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -888.281  mm
};
/END
