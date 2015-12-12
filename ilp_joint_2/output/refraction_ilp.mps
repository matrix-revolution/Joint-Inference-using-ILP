NAME refraction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_681
 L  constraint1_1091
 L  constraint1_1092
 L  constraint1_561
 L  constraint2_680
 L  constraint2_681
 L  constraint2_682
 L  constraint2_683
 L  constraint2_610
 L  constraint2_611
 L  constraint2_612
 L  constraint2_613
 L  constraint2_1150
 L  constraint2_1151
 L  constraint2_1152
 L  constraint2_1153
 L  constraint2_1090
 L  constraint2_1091
 L  constraint2_1092
 L  constraint2_1093
 L  constraint2_560
 L  constraint2_561
 L  constraint2_562
 L  constraint2_563
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_68_1_0  OBJ       -4.7736932954542399e-03
    Z_68_1_0  constraint1_681  1
    Z_68_1_0  constraint2_680  1
    Z_68_1_1  OBJ       -2.8307035682742060e-01
    Z_68_1_1  constraint1_681  1
    Z_68_1_1  constraint2_681  1
    Z_68_1_2  OBJ       -3.0638148075824212e-02
    Z_68_1_2  constraint1_681  1
    Z_68_1_2  constraint2_682  1
    Z_68_1_3  OBJ       -1.1799348054444178e-02
    Z_68_1_3  constraint1_681  1
    Z_68_1_3  constraint2_683  1
    Z_109_1_0  OBJ       -2.3897215927615179e-03
    Z_109_1_0  constraint1_1091  1
    Z_109_1_0  constraint2_1090  1
    Z_109_1_1  OBJ       -2.9101504863157301e-01
    Z_109_1_1  constraint1_1091  1
    Z_109_1_1  constraint2_1091  1
    Z_109_1_2  OBJ       -4.5074048425779278e-02
    Z_109_1_2  constraint1_1091  1
    Z_109_1_2  constraint2_1092  1
    Z_109_1_3  OBJ       -1.5186106036649404e-02
    Z_109_1_3  constraint1_1091  1
    Z_109_1_3  constraint2_1093  1
    Z_109_2_0  OBJ       -2.3897215927615179e-03
    Z_109_2_0  constraint1_1092  1
    Z_109_2_0  constraint2_1090  1
    Z_109_2_1  OBJ       -2.9101504863157301e-01
    Z_109_2_1  constraint1_1092  1
    Z_109_2_1  constraint2_1091  1
    Z_109_2_2  OBJ       -4.5074048425779278e-02
    Z_109_2_2  constraint1_1092  1
    Z_109_2_2  constraint2_1092  1
    Z_109_2_3  OBJ       -1.5186106036649404e-02
    Z_109_2_3  constraint1_1092  1
    Z_109_2_3  constraint2_1093  1
    Z_56_1_0  OBJ       -2.8293879423842427e-03
    Z_56_1_0  constraint1_561  1
    Z_56_1_0  constraint2_560  1
    Z_56_1_1  OBJ       -3.0951388267117197e-01
    Z_56_1_1  constraint1_561  1
    Z_56_1_1  constraint2_561  1
    Z_56_1_2  OBJ       -1.4073299337677314e-02
    Z_56_1_2  constraint1_561  1
    Z_56_1_2  constraint2_562  1
    Z_56_1_3  OBJ       -2.3225864313691742e-02
    Z_56_1_3  constraint1_561  1
    Z_56_1_3  constraint2_563  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_681  1
    RHS1      constraint1_1091  1
    RHS1      constraint1_1092  1
    RHS1      constraint1_561  1
    RHS1      constraint2_680  1
    RHS1      constraint2_681  1
    RHS1      constraint2_682  1
    RHS1      constraint2_683  1
    RHS1      constraint2_610  1
    RHS1      constraint2_611  1
    RHS1      constraint2_612  1
    RHS1      constraint2_613  1
    RHS1      constraint2_1150  1
    RHS1      constraint2_1151  1
    RHS1      constraint2_1152  1
    RHS1      constraint2_1153  1
    RHS1      constraint2_1090  1
    RHS1      constraint2_1091  1
    RHS1      constraint2_1092  1
    RHS1      constraint2_1093  1
    RHS1      constraint2_560  1
    RHS1      constraint2_561  1
    RHS1      constraint2_562  1
    RHS1      constraint2_563  1
BOUNDS
 UP BND1      Z_68_1_0  1
 UP BND1      Z_68_1_1  1
 UP BND1      Z_68_1_2  1
 UP BND1      Z_68_1_3  1
 UP BND1      Z_109_1_0  1
 UP BND1      Z_109_1_1  1
 UP BND1      Z_109_1_2  1
 UP BND1      Z_109_1_3  1
 UP BND1      Z_109_2_0  1
 UP BND1      Z_109_2_1  1
 UP BND1      Z_109_2_2  1
 UP BND1      Z_109_2_3  1
 UP BND1      Z_56_1_0  1
 UP BND1      Z_56_1_1  1
 UP BND1      Z_56_1_2  1
 UP BND1      Z_56_1_3  1
QUADOBJ
    Z_68_1_0  Z_109_1_0  -4.2494062543571193e-01
    Z_68_1_0  Z_109_2_0  -2.3636829835755582e-01
    Z_68_1_0  Z_56_1_0  -2.7264727356498493e-02
    Z_68_1_1  Z_109_1_1  -4.2494062543571193e-01
    Z_68_1_1  Z_109_2_1  -2.3636829835755582e-01
    Z_68_1_1  Z_56_1_1  -2.7264727356498493e-02
    Z_68_1_2  Z_109_1_2  -4.2494062543571193e-01
    Z_68_1_2  Z_109_2_2  -2.3636829835755582e-01
    Z_68_1_2  Z_56_1_2  -2.7264727356498493e-02
    Z_68_1_3  Z_109_1_3  -4.2494062543571193e-01
    Z_68_1_3  Z_109_2_3  -2.3636829835755582e-01
    Z_68_1_3  Z_56_1_3  -2.7264727356498493e-02
    Z_109_1_0  Z_56_1_0  -6.5627473940178660e-01
    Z_109_1_1  Z_56_1_1  -6.5627473940178660e-01
    Z_109_1_2  Z_56_1_2  -6.5627473940178660e-01
    Z_109_1_3  Z_56_1_3  -6.5627473940178660e-01
    Z_109_2_0  Z_56_1_0  -3.6504521837231763e-01
    Z_109_2_1  Z_56_1_1  -3.6504521837231763e-01
    Z_109_2_2  Z_56_1_2  -3.6504521837231763e-01
    Z_109_2_3  Z_56_1_3  -3.6504521837231763e-01
ENDATA
