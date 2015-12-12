NAME deposition_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_701
 L  constraint1_702
 L  constraint2_700
 L  constraint2_701
 L  constraint2_702
 L  constraint2_703
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_70_1_0  OBJ       -7.5165220201860838e-02
    Z_70_1_0  constraint1_701  1
    Z_70_1_0  constraint2_700  1
    Z_70_1_1  OBJ       -8.5524771613729178e-03
    Z_70_1_1  constraint1_701  1
    Z_70_1_1  constraint2_701  1
    Z_70_1_2  OBJ       -2.9751493291465536e-03
    Z_70_1_2  constraint1_701  1
    Z_70_1_2  constraint2_702  1
    Z_70_1_3  OBJ       -3.3303992692384499e-01
    Z_70_1_3  constraint1_701  1
    Z_70_1_3  constraint2_703  1
    Z_70_2_0  OBJ       -2.8407190766925883e-03
    Z_70_2_0  constraint1_702  1
    Z_70_2_0  constraint2_700  1
    Z_70_2_1  OBJ       -5.3171806808980926e-03
    Z_70_2_1  constraint1_702  1
    Z_70_2_1  constraint2_701  1
    Z_70_2_2  OBJ       -4.2831908428432458e-01
    Z_70_2_2  constraint1_702  1
    Z_70_2_2  constraint2_702  1
    Z_70_2_3  OBJ       -1.2826008638300360e-02
    Z_70_2_3  constraint1_702  1
    Z_70_2_3  constraint2_703  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_701  1
    RHS1      constraint1_702  1
    RHS1      constraint2_700  1
    RHS1      constraint2_701  1
    RHS1      constraint2_702  1
    RHS1      constraint2_703  1
BOUNDS
 UP BND1      Z_70_1_0  1
 UP BND1      Z_70_1_1  1
 UP BND1      Z_70_1_2  1
 UP BND1      Z_70_1_3  1
 UP BND1      Z_70_2_0  1
 UP BND1      Z_70_2_1  1
 UP BND1      Z_70_2_2  1
 UP BND1      Z_70_2_3  1
ENDATA
