       IDENTIFICATION DIVISION.
         PROGRAM-ID. PAR.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
            SPECIAL-NAMES. 
               DECIMAL-POINT IS COMMA.
            DATA DIVISION.
            WORKING-STORAGE SECTION.
            01 NUMERO        PIC 9(9) VALUE ZEROS.
            01 RESTO        PIC 9(9) VALUE ZEROS.

            PROCEDURE DIVISION.
           DISPLAY "POR FAVOR, INSIRA UM NÚMERO"
           ACCEPT NUMERO.

           DIVIDE NUMERO BY 2 GIVING NUMERO REMAINDER RESTO.

           IF RESTO = 0
              DISPLAY "O NÚMERO É PAR"
           ELSE
              DISPLAY "O NÚMER É ÍMPAR"
           END-IF.
           STOP RUN.
