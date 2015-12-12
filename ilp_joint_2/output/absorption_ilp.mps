NAME absorption_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1331
 L  constraint2_1330
 L  constraint2_1331
 L  constraint2_1332
 L  constraint2_1333
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_133_1_0  OBJ       -3.6009468857473026e-04
    Z_133_1_0  constraint1_1331  1
    Z_133_1_0  constraint2_1330  1
    Z_133_1_1  OBJ       -2.3866563828870424e-03
    Z_133_1_1  constraint1_1331  1
    Z_133_1_1  constraint2_1331  1
    Z_133_1_2  OBJ       -4.7972639252707172e-01
    Z_133_1_2  constraint1_1331  1
    Z_133_1_2  constraint2_1332  1
    Z_133_1_3  OBJ       -1.1766924156519105e-03
    Z_133_1_3  constraint1_1331  1
    Z_133_1_3  constraint2_1333  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1331  1
    RHS1      constraint2_1330  1
    RHS1      constraint2_1331  1
    RHS1      constraint2_1332  1
    RHS1      constraint2_1333  1
BOUNDS
 UP BND1      Z_133_1_0  1
 UP BND1      Z_133_1_1  1
 UP BND1      Z_133_1_2  1
 UP BND1      Z_133_1_3  1
ENDATA
