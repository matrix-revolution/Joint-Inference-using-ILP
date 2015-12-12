NAME sexual reproduction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_311
 L  constraint2_310
 L  constraint2_311
 L  constraint2_312
 L  constraint2_313
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_31_1_0  OBJ       -5.7726296920606601e-03
    Z_31_1_0  constraint1_311  1
    Z_31_1_0  constraint2_310  1
    Z_31_1_1  OBJ       -1.6008675773754144e-02
    Z_31_1_1  constraint1_311  1
    Z_31_1_1  constraint2_311  1
    Z_31_1_2  OBJ       -1.8913605262803057e-03
    Z_31_1_2  constraint1_311  1
    Z_31_1_2  constraint2_312  1
    Z_31_1_3  OBJ       -4.2911164977490751e-01
    Z_31_1_3  constraint1_311  1
    Z_31_1_3  constraint2_313  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_311  1
    RHS1      constraint2_310  1
    RHS1      constraint2_311  1
    RHS1      constraint2_312  1
    RHS1      constraint2_313  1
BOUNDS
 UP BND1      Z_31_1_0  1
 UP BND1      Z_31_1_1  1
 UP BND1      Z_31_1_2  1
 UP BND1      Z_31_1_3  1
ENDATA
