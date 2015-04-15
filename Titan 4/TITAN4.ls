/PROG  TITAN4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Main Titan 4 prg";
PROG_SIZE	= 735;
CREATE		= DATE 14-12-22  TIME 14:36:56;
MODIFIED	= DATE 15-03-16  TIME 13:37:36;
FILE_NAME	= TTN4DEMO;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1087;
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
   2:  !This is the main Titan 4 program ;
   3:  !------------------------- ;
   4:  TIMER[1]=RESET ;
   5:  TIMER[1]=START ;
   6:  //CALL HOME    ;
   7:  CALL TTN4_INIT    ;
   8:   ;
   9:  CALL TTN4_IN_FLOOR    ;
  10:   ;
  11:  CALL TTN4_IN_N    ;
  12:   ;
  13:  CALL TTN4_IN_E    ;
  14:   ;
  15:  CALL TTN4_IN_W    ;
  16:   ;
  17:  CALL TTN4_IN_S    ;
  18:  WAIT  10.00(sec) ;
  19:  CALL TTN4_OUT_E    ;
  20:   ;
  21:  CALL TTN4_OUT_N    ;
  22:   ;
  23:  CALL TTN4_OUT_W    ;
  24:   ;
  25:  CALL TTN4_OUT_S    ;
  26:   ;
  27:  CALL TTN4_TOP    ;
  28:  CALL SE_PERCH    ;
  29:   ;
  30:  TIMER[1]=STOP ;
  31:   ;
/POS
/END
