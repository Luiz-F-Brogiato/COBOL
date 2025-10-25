       IDENTIFICATION DIVISION.
       PROGRAM-ID. JUROS RECURSIVE.
       AUTHOR. LUIZ.
       DATE-WRITTEN. 16/10/2024.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-370.
       OBJECT-COMPUTER. IBM-370.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 APORTE              PIC 9(5)       VALUE ZEROS.
       01 TAXA-JUROS          PIC 9V9(2)     VALUE 0.20.
       01 TEMPO               PIC 9(2)       VALUE ZEROS.
       01 I                   PIC 9(1)        VALUE 0.
       01 VAL                 PIC 9(5)       VALUE ZEROS.

       PROCEDURE DIVISION.
           CALCULAR-JUROS.
           DISPLAY "DIGITE O VALOR INICIAL: ".
           ACCEPT APORTE.
           DISPLAY "DIGITE O TEMPO (EM MESES): ".
           ACCEPT TEMPO.

           
           IF I <= TEMPO
               COMPUTE APORTE = APORTE + (APORTE * TAXA-JUROS)
                ADD 1 TO I
                PERFORM CALCULAR-JUROS

           ELSE 
                DISPLAY "VALOR FINAL:" APORTE
           END-IF
              MOVE APORTE TO VAL.
           DISPLAY "O VALOR DOS JUROS E: " VAL.

           STOP RUN.
