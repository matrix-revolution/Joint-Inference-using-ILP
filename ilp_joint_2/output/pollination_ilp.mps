NAME pollination_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1301
 L  constraint2_1300
 L  constraint2_1301
 L  constraint2_1302
 L  constraint2_1303
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_130_1_0  OBJ       -3.0563151518586684e-04
    Z_130_1_0  constraint1_1301  1
    Z_130_1_0  constraint2_1300  1
    Z_130_1_1  OBJ       -3.4613216719043272e-03
    Z_130_1_1  constraint1_1301  1
    Z_130_1_1  constraint2_1301  1
    Z_130_1_2  OBJ       -4.8584473488271468e-01
    Z_130_1_2  constraint1_1301  1
    Z_130_1_2  constraint2_1302  1
    Z_130_1_3  OBJ       -4.2431791916168887e-03
    Z_130_1_3  constraint1_1301  1
    Z_130_1_3  constraint2_1303  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1301  1
    RHS1      constraint2_1300  1
    RHS1      constraint2_1301  1
    RHS1      constraint2_1302  1
    RHS1      constraint2_1303  1
BOUNDS
 UP BND1      Z_130_1_0  1
 UP BND1      Z_130_1_1  1
 UP BND1      Z_130_1_2  1
 UP BND1      Z_130_1_3  1
ENDATA
