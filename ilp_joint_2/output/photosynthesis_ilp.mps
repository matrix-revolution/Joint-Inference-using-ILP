NAME photosynthesis_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_821
 L  constraint1_1251
 L  constraint1_1241
 L  constraint2_170
 L  constraint2_171
 L  constraint2_172
 L  constraint2_173
 L  constraint2_820
 L  constraint2_821
 L  constraint2_822
 L  constraint2_823
 L  constraint2_230
 L  constraint2_231
 L  constraint2_232
 L  constraint2_233
 L  constraint2_1050
 L  constraint2_1051
 L  constraint2_1052
 L  constraint2_1053
 L  constraint2_1250
 L  constraint2_1251
 L  constraint2_1252
 L  constraint2_1253
 L  constraint2_1320
 L  constraint2_1321
 L  constraint2_1322
 L  constraint2_1323
 L  constraint2_1240
 L  constraint2_1241
 L  constraint2_1242
 L  constraint2_1243
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_82_1_0  OBJ       -5.2033862647629658e-03
    Z_82_1_0  constraint1_821  1
    Z_82_1_0  constraint2_820  1
    Z_82_1_1  OBJ       -4.7929314422734737e-01
    Z_82_1_1  constraint1_821  1
    Z_82_1_1  constraint2_821  1
    Z_82_1_2  OBJ       -6.4445062175608747e-03
    Z_82_1_2  constraint1_821  1
    Z_82_1_2  constraint2_822  1
    Z_82_1_3  OBJ       -2.8794182864459714e-02
    Z_82_1_3  constraint1_821  1
    Z_82_1_3  constraint2_823  1
    Z_125_1_0  OBJ       -5.3149660705228974e-03
    Z_125_1_0  constraint1_1251  1
    Z_125_1_0  constraint2_1250  1
    Z_125_1_1  OBJ       -1.7964958373020423e-02
    Z_125_1_1  constraint1_1251  1
    Z_125_1_1  constraint2_1251  1
    Z_125_1_2  OBJ       -1.2943832616375306e-01
    Z_125_1_2  constraint1_1251  1
    Z_125_1_2  constraint2_1252  1
    Z_125_1_3  OBJ       -4.4125445639067024e-01
    Z_125_1_3  constraint1_1251  1
    Z_125_1_3  constraint2_1253  1
    Z_124_1_0  OBJ       -6.9484867186159205e-04
    Z_124_1_0  constraint1_1241  1
    Z_124_1_0  constraint2_1240  1
    Z_124_1_1  OBJ       -7.4944046106567019e-03
    Z_124_1_1  constraint1_1241  1
    Z_124_1_1  constraint2_1241  1
    Z_124_1_2  OBJ       -2.6323818192410575e-01
    Z_124_1_2  constraint1_1241  1
    Z_124_1_2  constraint2_1242  1
    Z_124_1_3  OBJ       -3.6542717819488008e-01
    Z_124_1_3  constraint1_1241  1
    Z_124_1_3  constraint2_1243  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_821  1
    RHS1      constraint1_1251  1
    RHS1      constraint1_1241  1
    RHS1      constraint2_170  1
    RHS1      constraint2_171  1
    RHS1      constraint2_172  1
    RHS1      constraint2_173  1
    RHS1      constraint2_820  1
    RHS1      constraint2_821  1
    RHS1      constraint2_822  1
    RHS1      constraint2_823  1
    RHS1      constraint2_230  1
    RHS1      constraint2_231  1
    RHS1      constraint2_232  1
    RHS1      constraint2_233  1
    RHS1      constraint2_1050  1
    RHS1      constraint2_1051  1
    RHS1      constraint2_1052  1
    RHS1      constraint2_1053  1
    RHS1      constraint2_1250  1
    RHS1      constraint2_1251  1
    RHS1      constraint2_1252  1
    RHS1      constraint2_1253  1
    RHS1      constraint2_1320  1
    RHS1      constraint2_1321  1
    RHS1      constraint2_1322  1
    RHS1      constraint2_1323  1
    RHS1      constraint2_1240  1
    RHS1      constraint2_1241  1
    RHS1      constraint2_1242  1
    RHS1      constraint2_1243  1
BOUNDS
 UP BND1      Z_82_1_0  1
 UP BND1      Z_82_1_1  1
 UP BND1      Z_82_1_2  1
 UP BND1      Z_82_1_3  1
 UP BND1      Z_125_1_0  1
 UP BND1      Z_125_1_1  1
 UP BND1      Z_125_1_2  1
 UP BND1      Z_125_1_3  1
 UP BND1      Z_124_1_0  1
 UP BND1      Z_124_1_1  1
 UP BND1      Z_124_1_2  1
 UP BND1      Z_124_1_3  1
QUADOBJ
    Z_82_1_0  Z_125_1_0  -2.4653238626870150e-01
    Z_82_1_0  Z_124_1_0  -5.0453495487797415e-02
    Z_82_1_1  Z_125_1_1  -2.4653238626870150e-01
    Z_82_1_1  Z_124_1_1  -5.0453495487797415e-02
    Z_82_1_2  Z_125_1_2  -2.4653238626870150e-01
    Z_82_1_2  Z_124_1_2  -5.0453495487797415e-02
    Z_82_1_3  Z_125_1_3  -2.4653238626870150e-01
    Z_82_1_3  Z_124_1_3  -5.0453495487797415e-02
    Z_125_1_0  Z_124_1_0  -4.0372894809577109e-01
    Z_125_1_1  Z_124_1_1  -4.0372894809577109e-01
    Z_125_1_2  Z_124_1_2  -4.0372894809577109e-01
    Z_125_1_3  Z_124_1_3  -4.0372894809577109e-01
ENDATA
