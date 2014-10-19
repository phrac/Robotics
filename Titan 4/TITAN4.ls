/PROG TITAN4
/ATTR
/MN

: ! This is the blast program for a Titan 4 container ;

: UFRAME_NUM=1 ;
: UTOOL_NUM=1 ;

: CALL TITAN4_INIT ;
: CALL HOME ;
: CALL TITAN4_FIXED_OUT ;

: J P[1:A_1] 70% CNT100 ;

: LBL[100] ;
: L P[2:BLAST_TOP] 75% CNT100 ;
: L P[3:BLAST_BOTTOM] 75% CNT100 ;

/POS
/END
