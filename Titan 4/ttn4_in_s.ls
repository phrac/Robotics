/PROG  TTN4_IN_S
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 2837;
CREATE		= DATE 15-01-26  TIME 11:53:18;
MODIFIED	= DATE 15-03-26  TIME 06:54:18;
FILE_NAME	= TTN4_IN_;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 3261;
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
   7:  R[16:Bridge INC]=60    ;
   8:   ;
   9:J P[2:POUNCE] 30% CNT R[12:CNTSPD]    ;
  10:   ;
  11:  WAIT    .25(sec) ;
  12:  CALL BLAST_ON_1    ;
  13:  LBL[10] ;
  14:J P[3:TOP] 25% FINE Offset,PR[1:Trolley Offset]    ;
  15:L P[4:BOTTOM] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  16:J P[5] 10% CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  17:L P[6] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  18:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]-R[16:Bridge INC]    ;
  19:  R[19:MM Remain]=R[19:MM Remain]-R[16:Bridge INC]    ;
  20:  IF R[19:MM Remain]>0,JMP LBL[10] ;
  21:   ;
  22:J P[1] 40% CNT R[12:CNTSPD]    ;
  23:  PR[1:Trolley Offset]=PR[51:Joint Zero]    ;
  24:  R[19:MM Remain]=R[21:End Length]*.45    ;
  25:   ;
  26:  WAIT    .25(sec) ;
  27:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  28:  LBL[20] ;
  29:J P[7] 25% FINE Offset,PR[1:Trolley Offset]    ;
  30:L P[8] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  31:J P[9] 10% CNT R[12:CNTSPD] Offset,PR[1:Trolley Offset]    ;
  32:L P[10] R[14:End Blast SPD]mm/sec FINE Offset,PR[1:Trolley Offset]    ;
  33:  PR[GP2:1,1:Trolley Offset]=PR[GP2:1,1:Trolley Offset]+R[16:Bridge INC]    ;
  34:  R[19:MM Remain]=R[19:MM Remain]-R[16:Bridge INC]    ;
  35:  IF R[19:MM Remain]>0,JMP LBL[20] ;
  36:   ;
  37:  WAIT    .25(sec) ;
  38:  IF DO[24:Blast 1 Robot Media]=OFF,CALL BLAST_ON_1 ;
  39:J P[11] 40% CNT R[12:CNTSPD]    ;
  40:L P[12] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD]    ;
  41:L P[13] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD]    ;
  42:L P[14] R[13:Bridge Blst Spd]mm/sec CNT R[12:CNTSPD]    ;
  43:L P[15] R[14:End Blast SPD]mm/sec CNT R[12:CNTSPD]    ;
  44:L P[16] R[10:Panel BLST SPD]mm/sec CNT R[12:CNTSPD]    ;
  45:L P[17] R[11:Trolley BLST SPD]mm/sec CNT R[12:CNTSPD]    ;
  46:J P[18] 20% CNT R[12:CNTSPD]    ;
  47:L P[19] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  48:J P[20] 20% CNT R[12:CNTSPD]    ;
  49:L P[21] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  50:J P[22] 20% CNT R[12:CNTSPD]    ;
  51:L P[23] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  52:J P[24] 30% FINE    ;
  53:L P[25] R[9:Heavy Blast]mm/sec CNT R[12:CNTSPD]    ;
  54:   ;
  55:  CALL BLAST_OFF_1    ;
  56:J P[26] 50% FINE    ;
  57:  CALL HOME    ;
  58:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -138.230  mm,	Y = -5361.361  mm,	Z =  1628.022  mm,
	W =   -84.216 deg,	P =   -24.888 deg,	R =   106.857 deg,
	E1= -4993.878  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -914.053  mm
};
P[2:"POUNCE"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   592.758  mm,	Y = -5247.313  mm,	Z =  1953.799  mm,
	W =    71.401 deg,	P =    64.856 deg,	R =    55.081 deg,
	E1= -4993.892  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   -53.095  mm
};
P[3:"TOP"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   566.864  mm,	Y = -5178.643  mm,	Z =  1972.466  mm,
	W =    64.335 deg,	P =    65.656 deg,	R =    55.373 deg,
	E1= -4993.803  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   111.037  mm
};
P[4:"BOTTOM"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   521.293  mm,	Y = -5436.386  mm,	Z =  2913.250  mm,
	W =    84.870 deg,	P =     3.831 deg,	R =    68.337 deg,
	E1= -4993.882  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   111.056  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   529.675  mm,	Y = -5262.887  mm,	Z =  2911.699  mm,
	W =    85.097 deg,	P =    -4.657 deg,	R =   107.649 deg,
	E1= -4993.883  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   111.057  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   428.608  mm,	Y = -5002.893  mm,	Z =  1909.731  mm,
	W =    83.471 deg,	P =    66.916 deg,	R =   109.919 deg,
	E1= -4993.879  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   111.051  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -138.231  mm,	Y = -5361.361  mm,	Z =  1628.023  mm,
	W =   -84.216 deg,	P =   -24.888 deg,	R =   106.857 deg,
	E1= -4993.878  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -914.015  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -165.339  mm,	Y = -5234.339  mm,	Z =  2813.405  mm,
	W =   -95.226 deg,	P =   -82.579 deg,	R =   114.885 deg,
	E1= -4993.878  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -913.995  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =      .721  mm,	Y = -4999.715  mm,	Z =  2855.875  mm,
	W =   110.930 deg,	P =   -84.659 deg,	R =  -132.725 deg,
	E1= -4993.878  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -913.993  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   -60.922  mm,	Y = -5154.705  mm,	Z =  1694.012  mm,
	W =   -90.591 deg,	P =   -18.325 deg,	R =    70.017 deg,
	E1= -4993.878  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -913.992  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -117.223  mm,	Y = -5224.085  mm,	Z =  1724.075  mm,
	W =   -85.037 deg,	P =   -16.972 deg,	R =    82.934 deg,
	E1= -4982.650  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1032.598  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -106.707  mm,	Y = -5093.204  mm,	Z =  2792.111  mm,
	W =     9.271 deg,	P =   -87.330 deg,	R =    -9.622 deg,
	E1= -4982.677  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1032.595  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -106.827  mm,	Y = -5093.257  mm,	Z =  2792.176  mm,
	W =     9.105 deg,	P =   -87.321 deg,	R =    -9.448 deg,
	E1= -4982.809  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -893.500  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -106.827  mm,	Y = -5093.257  mm,	Z =  2792.176  mm,
	W =     9.105 deg,	P =   -87.321 deg,	R =    -9.448 deg,
	E1= -4982.809  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -893.500  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -117.623  mm,	Y = -5234.276  mm,	Z =  1623.266  mm,
	W =   -87.131 deg,	P =   -22.714 deg,	R =    88.559 deg,
	E1= -4982.813  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -893.502  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -117.475  mm,	Y = -5226.287  mm,	Z =  1626.807  mm,
	W =   -87.080 deg,	P =   -24.868 deg,	R =    88.440 deg,
	E1= -4982.817  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -881.987  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -117.557  mm,	Y = -5226.200  mm,	Z =  1626.854  mm,
	W =   -87.077 deg,	P =   -24.864 deg,	R =    88.440 deg,
	E1= -4982.818  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1256.973  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   -44.589  mm,	Y = -5096.744  mm,	Z =  1620.902  mm,
	W =   -87.860 deg,	P =   -23.742 deg,	R =    64.076 deg,
	E1= -4982.821  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1011.486  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =    20.166  mm,	Y = -4975.293  mm,	Z =  2806.862  mm,
	W =    36.158 deg,	P =   -87.571 deg,	R =   -61.239 deg,
	E1= -4982.822  mm
   GP2:
	UF : 1, UT : 1,	
	J1= -1011.492  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =    16.953  mm,	Y = -4966.893  mm,	Z =  2812.023  mm,
	W =   -22.989 deg,	P =   -84.036 deg,	R =    -2.224 deg,
	E1= -4982.823  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.375  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   -43.349  mm,	Y = -5073.073  mm,	Z =  1659.977  mm,
	W =   -85.245 deg,	P =   -20.710 deg,	R =    58.590 deg,
	E1= -4982.823  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.374  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =    60.595  mm,	Y = -5001.600  mm,	Z =  1649.950  mm,
	W =   -88.023 deg,	P =   -24.551 deg,	R =    41.610 deg,
	E1= -4982.824  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.374  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   164.300  mm,	Y = -4915.713  mm,	Z =  2830.606  mm,
	W =    13.798 deg,	P =   -88.145 deg,	R =   -61.372 deg,
	E1= -4982.826  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -258.374  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   474.964  mm,	Y = -5308.669  mm,	Z =  3131.649  mm,
	W =    73.622 deg,	P =     5.712 deg,	R =    88.124 deg,
	E1= -4997.625  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   325.537  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   451.451  mm,	Y = -5015.579  mm,	Z =  2043.881  mm,
	W =    62.488 deg,	P =    73.539 deg,	R =    82.533 deg,
	E1= -4997.602  mm
   GP2:
	UF : 1, UT : 1,	
	J1=   325.533  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =   390.113  mm,	Y = -3480.504  mm,	Z =  2044.050  mm,
	W =    62.428 deg,	P =    73.544 deg,	R =    54.469 deg,
	E1= -3253.153  mm
   GP2:
	UF : 1, UT : 1,	
	J1=  -462.796  mm
};
/END
