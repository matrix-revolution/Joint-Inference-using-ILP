NAME conduction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1231
 L  constraint2_1230
 L  constraint2_1231
 L  constraint2_1232
 L  constraint2_1233
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_123_1_0  OBJ       -2.5717383711340025e-03
    Z_123_1_0  constraint1_1231  1
    Z_123_1_0  constraint2_1230  1
    Z_123_1_1  OBJ       -3.8755607911232226e-03
    Z_123_1_1  constraint1_1231  1
    Z_123_1_1  constraint2_1231  1
    Z_123_1_2  OBJ       -4.5618418847066766e-01
    Z_123_1_2  constraint1_1231  1
    Z_123_1_2  constraint2_1232  1
    Z_123_1_3  OBJ       -2.4430903731674459e-03
    Z_123_1_3  constraint1_1231  1
    Z_123_1_3  constraint2_1233  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1231  1
    RHS1      constraint2_1230  1
    RHS1      constraint2_1231  1
    RHS1      constraint2_1232  1
    RHS1      constraint2_1233  1
BOUNDS
 UP BND1      Z_123_1_0  1
 UP BND1      Z_123_1_1  1
 UP BND1      Z_123_1_2  1
 UP BND1      Z_123_1_3  1
ENDATA
