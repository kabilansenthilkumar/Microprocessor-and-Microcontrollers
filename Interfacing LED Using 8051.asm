ORG 0000H;
SETB P0.0;          //INITIALIZING P0.0 AS INPUT
SETB P0.1;          //INITIALIZING P0.1 AS INPUT
READ:MOV A,#0X03;   //MOVING IMMEDIATE VALUE(03) TO ACCUMULATOR
ANL A,P0;           //AND A AND P0
CJNE A,0X03,LEDON;  //COMPARE A AND IMMEDIATE VALUE(03) IF NOT EQUAL JUMP TO LEDOON
CLR P0.2;           //CLEAR PORT PIN P0.2 IF A==03H
LEDON:SETB P0.2;    //SET PORT PIN P0.2 IF A!==03H
SJMP READ;          //Return to READ
END
