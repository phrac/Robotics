/PROG  TTN4_FRAME_PREP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 736;
CREATE		= DATE 15-01-30  TIME 07:37:24;
MODIFIED	= DATE 15-01-30  TIME 08:42:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 1028;
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
   3:   ;
   4:  PR[100:Frame prep]=JPOS    ;
   5:   ;
   6:   ;
   7:  PR[GP1:100,1:Frame prep]=90    ;
   8:  PR[GP1:100,2:Frame prep]=(-45)    ;
   9:  PR[GP1:100,3:Frame prep]=0    ;
  10:  PR[GP1:100,4:Frame prep]=(-90)    ;
  11:  PR[GP1:100,5:Frame prep]=0    ;
  12:  PR[GP1:100,6:Frame prep]=(-223)    ;
  13:   ;
  14:J PR[100:Frame prep] 75% FINE    ;
  15:J P[1] 30% FINE    ;
  16:   ;
  17:   ;
  18:   ;
  19:   ;
  20:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   157.231  mm,	Y = -2865.540  mm,	Z =  1171.327  mm,
	W =    90.000 deg,	P =   -43.084 deg,	R =   179.995 deg,
	E1= -4335.746  mm
   GP2:
	UF : 0, UT : 1,	
	J1=  1115.426  mm
};
/END
