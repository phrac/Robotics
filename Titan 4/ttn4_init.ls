/PROG  TTN4_INIT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 437;
CREATE		= DATE 14-12-22  TIME 14:42:54;
MODIFIED	= DATE 15-03-26  TIME 13:58:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 745;
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
   1:  !------------------------- ;
   2:  !Initialize TITAN4 vars ;
   3:  !------------------------- ;
   4:  UFRAME_NUM=1 ;
   5:  UTOOL_NUM=1 ;
   6:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   7:  R[10:Panel BLST SPD]=180    ;
   8:  R[14:End Blast SPD]=115    ;
   9:  R[100:Blast 1 fills]=0    ;
  10:  R[4:Floor pass secs]=10    ;
  11:   ;
  12:  R[20:Cont Length]=12192    ;
  13:  R[21:End Length]=2440    ;
  14:   ;
  15:   ;
  16:   ;
/POS
/END
