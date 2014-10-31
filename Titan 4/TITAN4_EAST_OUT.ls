/PROG TITAN4_EAST_OUT
/MN

: ! This program blasts the east outside edge of a TITAN 4 container

: UFRAME_NUM=1;
: UTOOL_NUM=1;

: ! Set the length of our container in MM
: R[5:Container Length] = (40 * 12) * 25.4 ;
: R[1:Blast Move Speed] = 400 ;

: J P[1:A_1] 70% CNT100 ;

: LBL[100: BLAST_SIDE] ;
: L P[2:BLAST_TOP] R[1:Blast Move Speed]mm/secCNT100 Offset, PR[1:Trolley Offset] ;
: L P[3:BLAST_BOTTOM] R[1:Blast Move Speed]mm/sec CNT100 Offset, PR[1:Trolley Offset] ;

: !! Offset our trolley and blast back up ;
: PR[GP1:1,7] = PR[GP1:1,7] + R[2:Trolley Inc] ;
: L P[3:BLAST_BOTTOM] R[1:Blast Move Speed]mm/sec CNT100 Offset, PR[1:Trolley Offset] ;
: L P[2:BLAST_TOP] R[1:Blast Move Speed]mm/sec CNT100 Offset, PR[1:Trolley Offset] ;

: !! Offset trolley again for the trip back down ;
: PR[GP1:1,7] = PR[GP1:1,7] + R[2:Trolley Inc] ;

: ! See if we have blasted the whole side ;
: ! If not, we start again from the top ;
: IF (PR[GP1:1,7] <= R[5:Container Length]), JMP LBL[100] ;
: JMP LBL[200] ;

: LBL[200] ;
: ! Reset our offsets and get outta here ;
: PR[1:Trolley Offset]=PR[51:Joint Zero]    ;


/END