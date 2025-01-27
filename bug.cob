01  WS-AREA-1.      PIC X(100). 
01  WS-AREA-2.      PIC X(100). 

PROCEDURE DIVISION.
    MOVE "Hello" TO WS-AREA-1.
    MOVE WS-AREA-1 TO WS-AREA-2.
    DISPLAY WS-AREA-2.
    GOBACK.

The bug lies in the MOVE statement.  If WS-AREA-1 and WS-AREA-2 have different PICTURE clauses (e.g., different lengths or data types), unexpected results may occur.  COBOL is relatively permissive but such implicit conversions can create subtle errors.  The resulting value in WS-AREA-2 might be truncated or padded with spaces incorrectly, and this can be challenging to debug.