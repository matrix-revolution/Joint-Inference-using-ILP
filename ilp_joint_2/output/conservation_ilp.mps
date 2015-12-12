NAME conservation_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_221
 L  constraint2_220
 L  constraint2_221
 L  constraint2_222
 L  constraint2_223
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_22_1_0  OBJ       -2.1889395125803679e-03
    Z_22_1_0  constraint1_221  1
    Z_22_1_0  constraint2_220  1
    Z_22_1_1  OBJ       -6.7726079047218946e-03
    Z_22_1_1  constraint1_221  1
    Z_22_1_1  constraint2_221  1
    Z_22_1_2  OBJ       -4.4769100550925434e-01
    Z_22_1_2  constraint1_221  1
    Z_22_1_2  constraint2_222  1
    Z_22_1_3  OBJ       -9.3457837237858679e-03
    Z_22_1_3  constraint1_221  1
    Z_22_1_3  constraint2_223  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_221  1
    RHS1      constraint2_220  1
    RHS1      constraint2_221  1
    RHS1      constraint2_222  1
    RHS1      constraint2_223  1
BOUNDS
 UP BND1      Z_22_1_0  1
 UP BND1      Z_22_1_1  1
 UP BND1      Z_22_1_2  1
 UP BND1      Z_22_1_3  1
ENDATA
