/PROG  TTN4_IN_N
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 2371;
CREATE		= DATE 15-01-26  TIME 15:44:26;
MODIFIED	= DATE 15-03-26  TIME 08:44:06;
FILE_NAME	= TTN4_IN_;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 2819;
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
   3:  UFRAME_NUM=1 ;
   4:  UTOOL_NUM=1 ;
   5:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
   6:  R[19:MM Remain]=R[21:End Length]*.55    ;
   7:J P[18] 20% CNT R[12:CNTSPD]    ;
   8:J P[2] 30% CNT R[12:CNTSPD]    ;
   9:   ;
  10:  WAIT    .25(sec) ;
  11:  CALL BLAST_ON_1    ;
  12:  LBL[10] ;
  13:   ;
  14:J P[22] 25% CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  15:L P[23] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  16:L P[1] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  17:L P[3] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  18:   ;
  19:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[16:Bridge INC]    ;
  20:  R[19:MM Remain]=R[19:MM Remain]-R[16:Bridge INC]    ;
  21:  IF R[19:MM Remain]>0,JMP LBL[10] ;
  22:   ;
  23:J P[7] 30% CNT R[12:CNTSPD]    ;
  24:  R[19:MM Remain]=R[21:End Length]*.55    ;
  25:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  26:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  27:   ;
  28:  LBL[20] ;
  29:J P[8] 25% CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  30:L P[9] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  31:L P[4] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  32:L P[5] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  33:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]-R[16:Bridge INC]    ;
  34:  R[19:MM Remain]=R[19:MM Remain]-R[16:Bridge INC]    ;
  35:  IF R[19:MM Remain]>0,JMP LBL[20] ;
  36:   ;
  37:  //WAIT    .20(sec) ;
  38:  //IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  39:  //J P[6] 50% CNT R[12:CNTSPD]    ;
  40:  //L P[10] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  41:  //    ;
  42:  //J P[11] 50% CNT R[12:CNTSPD]    ;
  43:  //L P[17] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  44:  //J P[12] 50% CNT R[12:CNTSPD]    ;
  45:  //L P[13] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  46:  //J P[14] 40% CNT R[12:CNTSPD]    ;
  47:  //L P[15] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  48:  //J P[16] 60% CNT R[12:CNTSPD]    ;
  49:  CALL BLAST_OFF_1    ;
  50:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -888.047  mm,	Y =  5778.109  mm,	Z =  2970.992  mm,
	W =    95.257 deg,	P =     1.088 deg,	R =   -85.032 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.246  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -908.857  mm,	Y =  5684.690  mm,	Z =  1933.045  mm,
	W =    86.750 deg,	P =    67.107 deg,	R =  -106.654 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.248  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -830.116  mm,	Y =  5548.793  mm,	Z =  1956.347  mm,
	W =    70.682 deg,	P =    74.523 deg,	R =  -102.099 deg,
	E1=  5354.996  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.222  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =  -212.166  mm,	Y =  5504.314  mm,	Z =  2789.534  mm,
	W =    53.086 deg,	P =   -85.783 deg,	R =   117.613 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   810.007  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -182.087  mm,	Y =  5652.641  mm,	Z =  1583.104  mm,
	W =   -88.666 deg,	P =   -20.258 deg,	R =   -99.485 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   810.007  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -207.667  mm,	Y =  5605.061  mm,	Z =  1580.080  mm,
	W =   -89.796 deg,	P =   -22.279 deg,	R =  -106.653 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  1079.388  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -156.733  mm,	Y =  5782.271  mm,	Z =  1630.661  mm,
	W =   -89.776 deg,	P =   -24.157 deg,	R =   -74.759 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   810.003  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -156.733  mm,	Y =  5782.271  mm,	Z =  1630.661  mm,
	W =   -89.776 deg,	P =   -24.157 deg,	R =   -74.759 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   810.005  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -121.272  mm,	Y =  5651.293  mm,	Z =  2746.643  mm,
	W =   -86.995 deg,	P =   -86.061 deg,	R =   -77.654 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   810.007  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =  -247.969  mm,	Y =  5471.841  mm,	Z =  2761.075  mm,
	W =    88.960 deg,	P =   -79.602 deg,	R =    74.454 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  1079.374  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =  -327.828  mm,	Y =  5420.300  mm,	Z =  2753.902  mm,
	W =    74.666 deg,	P =   -83.425 deg,	R =    75.478 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=    52.776  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -134.112  mm,	Y =  5793.185  mm,	Z =  1643.253  mm,
	W =   -82.876 deg,	P =   -26.018 deg,	R =   -75.657 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -117.035  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -116.370  mm,	Y =  5661.685  mm,	Z =  2789.926  mm,
	W =   174.678 deg,	P =   -87.215 deg,	R =    22.463 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -117.026  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -831.353  mm,	Y =  5704.318  mm,	Z =  3027.794  mm,
	W =    91.092 deg,	P =    -5.517 deg,	R =   -72.822 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -604.200  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -761.902  mm,	Y =  5477.966  mm,	Z =  1877.112  mm,
	W =    98.880 deg,	P =    70.605 deg,	R =   -64.817 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -604.182  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -857.257  mm,	Y =  5776.152  mm,	Z =  2138.782  mm,
	W =    92.847 deg,	P =   -20.437 deg,	R =   -74.131 deg,
	E1=  5355.001  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   -95.104  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, -1',
	X =  -253.221  mm,	Y =  5538.819  mm,	Z =  1640.118  mm,
	W =   -87.811 deg,	P =   -19.521 deg,	R =  -122.491 deg,
	E1=  5355.000  mm
   GP2:
	UF : 1, UT : 1,	
	J1=    52.772  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F D B, 0, 0, 0',
	X = -1151.452  mm,	Y =  4316.079  mm,	Z =  3078.550  mm,
	W =    12.709 deg,	P =   -23.304 deg,	R =    16.082 deg,
	E1=  4348.380  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   706.749  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -909.054  mm,	Y =  5684.816  mm,	Z =  1932.904  mm,
	W =    86.782 deg,	P =    67.103 deg,	R =  -106.628 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.393  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, -1',
	X =  -887.403  mm,	Y =  5869.533  mm,	Z =  2967.045  mm,
	W =    95.683 deg,	P =     6.625 deg,	R =  -102.886 deg,
	E1=  5355.004  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.249  mm
};
/END
