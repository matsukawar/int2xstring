# int2xstring
ABAP program for converting INT4 to XSTRING based bit operation calculation.
This is minimal sample code how to imprement bit convertion caluculation on SAP Net Weaver ABAP program.

* INT4 type is signed integer value and its size are 4 bytes (31 bits with signed bit).
* XSTRING type is hex string value. 

Of course, we can convert INT value to XSTRING directly
so you don't need to write such bit operation ABAP code when you convert int to xstring.
```abap
" Directly convertion.
DATA LW_XVAL TYPE X LENGTH 5.
LW_XVAL = 11259375.
WRITE / |LW_XVAL={ LW_XVAL }|.
```

But we need bit convertion ABAP program when we calculate Big Number such as scientific caluclations.
This program mainly use for dynamically generating binary data in ABAP program or scientific caluclations.

## Execution result of this report program.
```abap
11259375(INT)
ABCDEF(XSTRING)
```

Regards.
RYOSUKE MATSUKAWA
