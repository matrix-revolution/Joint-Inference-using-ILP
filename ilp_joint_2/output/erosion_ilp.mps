NAME erosion_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1111
 L  constraint2_1110
 L  constraint2_1111
 L  constraint2_1112
 L  constraint2_1113
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_111_1_0  OBJ       -5.0741480021426755e-04
    Z_111_1_0  constraint1_1111  1
    Z_111_1_0  constraint2_1110  1
    Z_111_1_1  OBJ       -2.5749885512604265e-03
    Z_111_1_1  constraint1_1111  1
    Z_111_1_1  constraint2_1111  1
    Z_111_1_2  OBJ       -4.5645416462643135e-01
    Z_111_1_2  constraint1_1111  1
    Z_111_1_2  constraint2_1112  1
    Z_111_1_3  OBJ       -4.0827091836910670e-03
    Z_111_1_3  constraint1_1111  1
    Z_111_1_3  constraint2_1113  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1111  1
    RHS1      constraint2_1110  1
    RHS1      constraint2_1111  1
    RHS1      constraint2_1112  1
    RHS1      constraint2_1113  1
BOUNDS
 UP BND1      Z_111_1_0  1
 UP BND1      Z_111_1_1  1
 UP BND1      Z_111_1_2  1
 UP BND1      Z_111_1_3  1
ENDATA
