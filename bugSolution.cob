01  WS-AREA-1.      PIC X(100).
01  WS-AREA-2.      PIC X(100).
01  WS-AREA-3.      PIC 9(5).
01  WS-AREA-4.      PIC 9(5).

PROCEDURE DIVISION.
    MOVE "Hello" TO WS-AREA-1.
    MOVE WS-AREA-1 TO WS-AREA-2.  
    DISPLAY WS-AREA-2. 
    
    MOVE 12345 TO WS-AREA-3.
    MOVE WS-AREA-3 TO WS-AREA-4. 
    DISPLAY WS-AREA-4.
    
    GOBACK.

This solution focuses on the use of explicit MOVE statements, which should resolve the issue. The addition of another section with numeric fields is for better coverage of implicit data type issues that can lead to unexpected results. Ensure consistent PICTURE clauses to avoid implicit conversions.