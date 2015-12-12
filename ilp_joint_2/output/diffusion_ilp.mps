NAME diffusion_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_501
 L  constraint1_502
 L  constraint2_500
 L  constraint2_501
 L  constraint2_502
 L  constraint2_503
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_50_1_0  OBJ       -3.3198110859666841e-04
    Z_50_1_0  constraint1_501  1
    Z_50_1_0  constraint2_500  1
    Z_50_1_1  OBJ       -2.6403372588056362e-03
    Z_50_1_1  constraint1_501  1
    Z_50_1_1  constraint2_501  1
    Z_50_1_2  OBJ       -4.7539700059928369e-01
    Z_50_1_2  constraint1_501  1
    Z_50_1_2  constraint2_502  1
    Z_50_1_3  OBJ       -2.6352532403499732e-03
    Z_50_1_3  constraint1_501  1
    Z_50_1_3  constraint2_503  1
    Z_50_2_0  OBJ       -3.3198110859666841e-04
    Z_50_2_0  constraint1_502  1
    Z_50_2_0  constraint2_500  1
    Z_50_2_1  OBJ       -2.6403372588056362e-03
    Z_50_2_1  constraint1_502  1
    Z_50_2_1  constraint2_501  1
    Z_50_2_2  OBJ       -4.7539700059928369e-01
    Z_50_2_2  constraint1_502  1
    Z_50_2_2  constraint2_502  1
    Z_50_2_3  OBJ       -2.6352532403499732e-03
    Z_50_2_3  constraint1_502  1
    Z_50_2_3  constraint2_503  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_501  1
    RHS1      constraint1_502  1
    RHS1      constraint2_500  1
    RHS1      constraint2_501  1
    RHS1      constraint2_502  1
    RHS1      constraint2_503  1
BOUNDS
 UP BND1      Z_50_1_0  1
 UP BND1      Z_50_1_1  1
 UP BND1      Z_50_1_2  1
 UP BND1      Z_50_1_3  1
 UP BND1      Z_50_2_0  1
 UP BND1      Z_50_2_1  1
 UP BND1      Z_50_2_2  1
 UP BND1      Z_50_2_3  1
ENDATA
