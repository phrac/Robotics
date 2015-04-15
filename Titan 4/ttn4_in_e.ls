/PROG  TTN4_IN_E
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 1626;
CREATE		= DATE 15-01-27  TIME 13:16:00;
MODIFIED	= DATE 15-03-18  TIME 09:28:50;
FILE_NAME	= TTN4_IN_;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 2106;
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
   6:  R[19:MM Remain]=R[20:Cont Length]*.75    ;
   7:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   8:  R[10:Panel BLST SPD]=140    ;
   9:  R[15:Trolley INC]=44    ;
  10:J P[1] 30% CNT75    ;
  11:J P[2] 30% CNT R[12:CNTSPD]    ;
  12:   ;
  13:  WAIT    .25(sec) ;
  14:  CALL BLAST_ON_1    ;
  15:   ;
  16:  LBL[10] ;
  17:L P[3] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  18:L P[4] R[10:Panel BLST SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  19:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  20:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  21:L P[4] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  22:L P[3] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  23:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  24:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  25:  IF R[19:MM Remain]>0,JMP LBL[10] ;
  26:   ;
  27:  WAIT    .25(sec) ;
  28:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  29:J P[5] 50% CNT R[12:CNTSPD]    ;
  30:  R[19:MM Remain]=R[20:Cont Length]*.22    ;
  31:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  32:  LBL[20] ;
  33:L P[6] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  34:L P[7] R[10:Panel BLST SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  35:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  36:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  37:L P[7] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  38:L P[6] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  39:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  40:  R[19:MM Remain]=R[19:MM Remain]-R[15:Trolley INC]    ;
  41:  IF R[19:MM Remain]>0,JMP LBL[20] ;
  42:  CALL BLAST_OFF_1    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -857.211  mm,	Y =  5776.035  mm,	Z =  2138.865  mm,
	W =    92.837 deg,	P =   -20.435 deg,	R =   -74.124 deg,
	E1=  5355.000  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   -95.110  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -323.372  mm,	Y =  5683.480  mm,	Z =  1982.495  mm,
	W =    76.997 deg,	P =    77.534 deg,	R =   -31.766 deg,
	E1=  5693.916  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   778.887  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -323.372  mm,	Y =  5683.477  mm,	Z =  1982.495  mm,
	W =    76.997 deg,	P =    77.534 deg,	R =   -31.766 deg,
	E1=  5693.913  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   778.887  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -562.050  mm,	Y =  5754.817  mm,	Z =  3042.483  mm,
	W =    91.978 deg,	P =    -6.027 deg,	R =   -19.247 deg,
	E1=  5693.902  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   778.886  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -509.541  mm,	Y = -3889.559  mm,	Z =  1763.890  mm,
	W =   -75.592 deg,	P =   -14.844 deg,	R =    26.337 deg,
	E1= -4573.308  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   778.885  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -509.551  mm,	Y = -3889.528  mm,	Z =  1763.891  mm,
	W =   -75.592 deg,	P =   -14.844 deg,	R =    26.338 deg,
	E1= -4573.269  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   778.885  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =  -446.010  mm,	Y = -3849.707  mm,	Z =  2739.513  mm,
	W =     5.431 deg,	P =   -83.726 deg,	R =   -50.211 deg,
	E1= -4573.266  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   778.885  mm
};
/END
