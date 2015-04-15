/PROG  TTN4_OUT_E
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1118;
CREATE		= DATE 14-12-22  TIME 17:47:08;
MODIFIED	= DATE 15-03-26  TIME 13:57:28;
FILE_NAME	= TTN4_W_O;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1526;
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
   6:  R[15:Trolley INC]=50    ;
   7:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   8:   ;
   9:J P[3:SE Perch] 35% FINE    ;
  10:  WAIT    .25(sec) ;
  11:  CALL BLAST_ON_1    ;
  12:   ;
  13:  LBL[10] ;
  14:L P[1:Top] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  15:L P[2:Bottom] R[10:Panel BLST SPD]mm/sec CNT75 Offset,PR[1:Trolley Offset]    ;
  16:   ;
  17:  !Offset the trolley and sub remah ;
  18:   ;
  19:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  20:   ;
  21:  !Blast back up ;
  22:L P[2:Bottom] R[11:Trolley BLST SPD]mm/sec CNT75 Offset,PR[1:Trolley Offset]    ;
  23:L P[1:Top] R[10:Panel BLST SPD]mm/sec CNT75 Offset,PR[1:Trolley Offset]    ;
  24:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]+R[15:Trolley INC]    ;
  25:   ;
  26:  IF (PR[GP1:1,7])<(R[20:Cont Length]),JMP LBL[10] ;
  27:   ;
  28:  CALL BLAST_OFF_1    ;
/POS
P[1:"Top"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -154.697  mm,	Y = -4469.742  mm,	Z =  1238.038  mm,
	W =    64.686 deg,	P =    28.377 deg,	R =   176.713 deg,
	E1= -5355.428  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2486.164  mm
};
P[2:"Bottom"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -33.349  mm,	Y = -4409.919  mm,	Z =  3215.726  mm,
	W =    68.155 deg,	P =     5.841 deg,	R =   178.876 deg,
	E1= -5305.184  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2486.209  mm
};
P[3:"SE Perch"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -154.951  mm,	Y = -4419.861  mm,	Z =  1124.324  mm,
	W =    64.665 deg,	P =    28.381 deg,	R =   175.833 deg,
	E1= -5305.109  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  2486.288  mm
};
/END
