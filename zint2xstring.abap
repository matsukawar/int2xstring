REPORT ZINT2XSTRING.

DATA:
  INT_VAL  TYPE INT4 VALUE 11259375,             " Input int4 value.
  OUT_XSTR TYPE XSTRING,                         " Output xstring value.
  TMP_INT  TYPE INT8,
  BASE     TYPE INT8,
  DIV      TYPE I,
  TMP_X    TYPE XSTRING,
  TMP_S(2) TYPE C,
  TMP_B(2) TYPE C,
  TMP_C(8) TYPE C.

TMP_INT = INT_VAL.

DO 8 TIMES.
  
  BASE = 16 ** ( 8 - SY-INDEX ).
  DIV = TMP_INT DIV BASE.
  
  IF DIV EQ 0.
    CONTINUE.
  ENDIF.
  
  TMP_X = DIV.
  TMP_S = TMP_X.
  TMP_B = TMP_B && TMP_S+1(1).
  
  IF STRLEN( TMP_B ) EQ 2.
    TMP_C = TMP_C && TMP_B.
    CLEAR TMP_B.
  ENDIF.
  
  TMP_INT = TMP_INT - DIV * BASE.
  
ENDDO.

OUT_XSTR = TMP_C.

WRITE / INT_VAL && '(INT)'.
WRITE / OUT_XSTR && '(XSTRING)'.
