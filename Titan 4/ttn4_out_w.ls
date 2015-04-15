/PROG  TTN4_OUT_W
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1248;
CREATE		= DATE 15-01-09  TIME 07:42:04;
MODIFIED	= DATE 15-03-26  TIME 13:54:04;
FILE_NAME	= TTN4_OUT;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1652;
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
   6:   ;
   7:J P[5] 30% CNT75    ;
   8:J P[12] 30% CNT R[12:CNTSPD]    ;
   9:J P[3:NW Perch] 50% FINE Offset,PR[1:Trolley Offset]    ;
  10:   ;
  11:  CALL BLAST_ON_1    ;
  12:   ;
  13:  LBL[10] ;
  14:L P[1:Top] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  15:L P[2:Bottom] R[10:Panel BLST SPD]mm/sec CNT75 Offset,PR[1:Trolley Offset]    ;
  16:   ;
  17:  !Offset the trolley and sub remah ;
  18:   ;
  19:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  20:   ;
  21:  !Blast back up ;
  22:L P[2:Bottom] R[11:Trolley BLST SPD]mm/sec CNT75 Offset,PR[1:Trolley Offset]    ;
  23:L P[1:Top] R[10:Panel BLST SPD]mm/sec CNT75 Offset,PR[1:Trolley Offset]    ;
  24:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  25:   ;
  26:  IF ((PR[GP1:1,7]*(-1))<=R[20:Cont Length]),JMP LBL[10] ;
  27:   ;
  28:  CALL BLAST_OFF_1    ;
  29:   ;
/POS
P[1:"Top"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   108.919  mm,	Y =  8732.365  mm,	Z =   887.431  mm,
	W =   -56.965 deg,	P =   -56.759 deg,	R =   -14.280 deg,
	E1=  7497.892  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2999.847  mm
};
P[2:"Bottom"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   118.248  mm,	Y =  8727.360  mm,	Z =  2798.237  mm,
	W =   -27.659 deg,	P =   -77.045 deg,	R =   -44.192 deg,
	E1=  7497.887  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2999.846  mm
};
P[3:"NW Perch"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   108.920  mm,	Y =  8732.368  mm,	Z =   887.431  mm,
	W =   -56.965 deg,	P =   -56.759 deg,	R =   -14.280 deg,
	E1=  7497.896  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2999.848  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   347.249  mm,	Y =  8751.402  mm,	Z =  1772.252  mm,
	W =    71.868 deg,	P =    53.679 deg,	R =    56.887 deg,
	E1=  7926.569  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1866.159  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   347.232  mm,	Y =  8751.460  mm,	Z =  1772.269  mm,
	W =    71.859 deg,	P =    53.678 deg,	R =    56.878 deg,
	E1=  7926.569  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2999.909  mm
};
/END
