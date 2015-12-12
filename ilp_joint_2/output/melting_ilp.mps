NAME melting_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_301
 L  constraint1_21
 L  constraint2_300
 L  constraint2_301
 L  constraint2_302
 L  constraint2_303
 L  constraint2_210
 L  constraint2_211
 L  constraint2_212
 L  constraint2_213
 L  constraint2_20
 L  constraint2_21
 L  constraint2_22
 L  constraint2_23
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_30_1_0  OBJ       -3.7731764582776273e-03
    Z_30_1_0  constraint1_301  1
    Z_30_1_0  constraint2_300  1
    Z_30_1_1  OBJ       -2.5725948196375636e-03
    Z_30_1_1  constraint1_301  1
    Z_30_1_1  constraint2_301  1
    Z_30_1_2  OBJ       -4.1725464472177665e-01
    Z_30_1_2  constraint1_301  1
    Z_30_1_2  constraint2_302  1
    Z_30_1_3  OBJ       -2.6194258782001097e-03
    Z_30_1_3  constraint1_301  1
    Z_30_1_3  constraint2_303  1
    Z_2_1_0   OBJ       -7.5272789769781356e-04
    Z_2_1_0   constraint1_21  1
    Z_2_1_0   constraint2_20  1
    Z_2_1_1   OBJ       -2.7893283573282024e-03
    Z_2_1_1   constraint1_21  1
    Z_2_1_1   constraint2_21  1
    Z_2_1_2   OBJ       -4.5816089332326848e-01
    Z_2_1_2   constraint1_21  1
    Z_2_1_2   constraint2_22  1
    Z_2_1_3   OBJ       -2.4757801785693298e-03
    Z_2_1_3   constraint1_21  1
    Z_2_1_3   constraint2_23  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_301  1
    RHS1      constraint1_21  1
    RHS1      constraint2_300  1
    RHS1      constraint2_301  1
    RHS1      constraint2_302  1
    RHS1      constraint2_303  1
    RHS1      constraint2_210  1
    RHS1      constraint2_211  1
    RHS1      constraint2_212  1
    RHS1      constraint2_213  1
    RHS1      constraint2_20  1
    RHS1      constraint2_21  1
    RHS1      constraint2_22  1
    RHS1      constraint2_23  1
BOUNDS
 UP BND1      Z_30_1_0  1
 UP BND1      Z_30_1_1  1
 UP BND1      Z_30_1_2  1
 UP BND1      Z_30_1_3  1
 UP BND1      Z_2_1_0   1
 UP BND1      Z_2_1_1   1
 UP BND1      Z_2_1_2   1
 UP BND1      Z_2_1_3   1
ENDATA
