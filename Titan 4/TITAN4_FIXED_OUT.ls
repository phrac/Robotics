/PROG TITAN4_FIXED_OUT
/MN

: ! This program blasts the fixed outside end of a TITAN 4 container

: UFRAME_NUM=1;
: UTOOL_NUM=1;

: ! Set the length of our container in MM

: R[5:Container Length] = (40 * 12) * 25.4 ;
: R[4:Blast Speed] = 400 ;

: J P[1:A_1] 70% CNT100 ;

: LBL[100: BLAST_SIDE] ;
: L P[2:BLAST_TOP] 75% CNT100 Offset PR[1:Trolley Offset] ;
: L P[3:BLAST_BOTTOM] 75% CNT100 Offset PR[1:Trolley Offset] ;

: !! Offset our trolley and blast back up ;
: PR[GP1:1,7] = PR[GP1:1,7] + R[1:Trolley Inc] ;
: L P[3:BLAST_BOTTOM] 75% CNT100 Offset PR[1:Trolley Offset] ;
: L P[2:BLAST_TOP] 75% CNT100 Offset PR[1:Trolley Offset] ;
: PR[GP1:1,7] = PR[GP1:1,7] + R[1:Trolley Inc] ;

: ! See if we have blasted the whole container ;
: ! If not, we start again from the top
: IF PR[GP1:1,7] <= R[5] JMP LBL[100] ;
: JMP LBL[200] ;

: LBL[200] ;
: ! Reset our offsets and get outta here ;
: PR[GP1:1] = PR[53] ;



/POS
/END