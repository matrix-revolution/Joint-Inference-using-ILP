NAME reproduction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1211
 L  constraint1_1212
 L  constraint1_741
 L  constraint2_1210
 L  constraint2_1211
 L  constraint2_1212
 L  constraint2_1213
 L  constraint2_740
 L  constraint2_741
 L  constraint2_742
 L  constraint2_743
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_121_1_0  OBJ       -1.9059090135250534e-03
    Z_121_1_0  constraint1_1211  1
    Z_121_1_0  constraint2_1210  1
    Z_121_1_1  OBJ       -2.3875217221606126e-03
    Z_121_1_1  constraint1_1211  1
    Z_121_1_1  constraint2_1211  1
    Z_121_1_2  OBJ       -4.0098345069351776e-01
    Z_121_1_2  constraint1_1211  1
    Z_121_1_2  constraint2_1212  1
    Z_121_1_3  OBJ       -3.1941183735917744e-03
    Z_121_1_3  constraint1_1211  1
    Z_121_1_3  constraint2_1213  1
    Z_121_2_0  OBJ       -2.7428410655089608e-02
    Z_121_2_0  constraint1_1212  1
    Z_121_2_0  constraint2_1210  1
    Z_121_2_1  OBJ       -2.0617648262515442e-02
    Z_121_2_1  constraint1_1212  1
    Z_121_2_1  constraint2_1211  1
    Z_121_2_2  OBJ       -6.2484958562957216e-03
    Z_121_2_2  constraint1_1212  1
    Z_121_2_2  constraint2_1212  1
    Z_121_2_3  OBJ       -2.8372569809692183e-01
    Z_121_2_3  constraint1_1212  1
    Z_121_2_3  constraint2_1213  1
    Z_74_1_0  OBJ       -1.9108852135141241e-03
    Z_74_1_0  constraint1_741  1
    Z_74_1_0  constraint2_740  1
    Z_74_1_1  OBJ       -2.4030446092131452e-03
    Z_74_1_1  constraint1_741  1
    Z_74_1_1  constraint2_741  1
    Z_74_1_2  OBJ       -3.6384159451914810e-01
    Z_74_1_2  constraint1_741  1
    Z_74_1_2  constraint2_742  1
    Z_74_1_3  OBJ       -5.2009388311570967e-03
    Z_74_1_3  constraint1_741  1
    Z_74_1_3  constraint2_743  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1211  1
    RHS1      constraint1_1212  1
    RHS1      constraint1_741  1
    RHS1      constraint2_1210  1
    RHS1      constraint2_1211  1
    RHS1      constraint2_1212  1
    RHS1      constraint2_1213  1
    RHS1      constraint2_740  1
    RHS1      constraint2_741  1
    RHS1      constraint2_742  1
    RHS1      constraint2_743  1
BOUNDS
 UP BND1      Z_121_1_0  1
 UP BND1      Z_121_1_1  1
 UP BND1      Z_121_1_2  1
 UP BND1      Z_121_1_3  1
 UP BND1      Z_121_2_0  1
 UP BND1      Z_121_2_1  1
 UP BND1      Z_121_2_2  1
 UP BND1      Z_121_2_3  1
 UP BND1      Z_74_1_0  1
 UP BND1      Z_74_1_1  1
 UP BND1      Z_74_1_2  1
 UP BND1      Z_74_1_3  1
QUADOBJ
    Z_121_1_0  Z_74_1_0  -7.3913043478260865e-01
    Z_121_1_1  Z_74_1_1  -7.3913043478260865e-01
    Z_121_1_2  Z_74_1_2  -7.3913043478260865e-01
    Z_121_1_3  Z_74_1_3  -7.3913043478260865e-01
ENDATA
