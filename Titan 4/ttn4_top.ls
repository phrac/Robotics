/PROG  TTN4_TOP
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 2341;
CREATE		= DATE 15-01-27  TIME 13:17:18;
MODIFIED	= DATE 15-03-27  TIME 06:32:44;
FILE_NAME	= TTN4_TOP;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2701;
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
   2:  UFRAME_NUM=1 ;
   3:  UTOOL_NUM=1 ;
   4:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   5:  R[15:Trolley INC]=67    ;
   6:J P[1] 50% CNT R[12:CNTSPD]    ;
   7:  CALL BLAST_ON_1    ;
   8:   ;
   9:L P[2] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD]    ;
  10:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[15:Trolley INC]    ;
  11:L P[2] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  12:L P[1] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  13:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[15:Trolley INC]    ;
  14:L P[1] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  15:L P[2] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  16:   ;
  17:  --eg:East side ;
  18:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  19:J P[3] 50% CNT R[12:CNTSPD]    ;
  20:L P[4] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD]    ;
  21:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  22:L P[4] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  23:L P[3] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  24:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  25:L P[3] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  26:L P[4] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  27:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  28:L P[4] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  29:L P[3] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  30:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  31:L P[3] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  32:L P[4] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  33:   ;
  34:  --eg:EAST SIDE ;
  35:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  36:J P[5] 50% CNT R[12:CNTSPD]    ;
  37:  WAIT    .25(sec) ;
  38:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  39:L P[6] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD]    ;
  40:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[15:Trolley INC]    ;
  41:L P[6] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  42:L P[5] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  43:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[15:Trolley INC]    ;
  44:L P[5] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  45:L P[6] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  46:   ;
  47:  --eg:NORTH SIDE ;
  48:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  49:  WAIT    .25(sec) ;
  50:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  51:   ;
  52:J P[7] 50% CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  53:L P[8] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD]    ;
  54:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  55:L P[8] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  56:L P[7] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  57:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  58:L P[7] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  59:L P[8] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  60:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  61:L P[8] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  62:L P[7] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  63:  PR[GP1:1,7:Trolley Offset]=PR[GP1:1,7:Trolley Offset]-R[15:Trolley INC]    ;
  64:L P[7] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  65:L P[8] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  66:   ;
  67:   ;
  68:  CALL BLAST_OFF_1    ;
  69:   ;
  70:  CALL HOME    ;
  71:   ;
  72:   ;
  73:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   922.214  mm,	Y = -6854.731  mm,	Z =   769.937  mm,
	W =   -60.358 deg,	P =   -67.850 deg,	R =  -122.118 deg,
	E1= -6871.175  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2576.523  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   922.238  mm,	Y =  5372.583  mm,	Z =   769.933  mm,
	W =   -60.354 deg,	P =   -67.849 deg,	R =  -122.115 deg,
	E1=  5356.093  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -2576.530  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -19.655  mm,	Y =  4424.922  mm,	Z =   808.701  mm,
	W =   -42.434 deg,	P =   -73.672 deg,	R =   130.027 deg,
	E1=  5356.089  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -996.206  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -19.638  mm,	Y =  4424.900  mm,	Z =   808.703  mm,
	W =   -42.436 deg,	P =   -73.673 deg,	R =   130.030 deg,
	E1=  5356.088  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  1892.372  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1016.327  mm,	Y =  5382.783  mm,	Z =   881.488  mm,
	W =   -13.384 deg,	P =   -68.754 deg,	R =  -151.597 deg,
	E1=  5553.566  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -155.124  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1016.377  mm,	Y = -6698.833  mm,	Z =   881.472  mm,
	W =   -13.409 deg,	P =   -68.752 deg,	R =  -151.569 deg,
	E1= -6528.062  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -155.120  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -26.468  mm,	Y = -7752.468  mm,	Z =   881.453  mm,
	W =   -13.434 deg,	P =   -68.750 deg,	R =   126.524 deg,
	E1= -6722.137  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  1545.069  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -26.434  mm,	Y = -7752.614  mm,	Z =   881.427  mm,
	W =   -13.458 deg,	P =   -68.747 deg,	R =   126.552 deg,
	E1= -6722.228  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1177.795  mm
};
/END
