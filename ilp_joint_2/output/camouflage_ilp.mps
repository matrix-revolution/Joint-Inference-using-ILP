NAME camouflage_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1281
 L  constraint1_381
 L  constraint1_382
 L  constraint1_1341
 L  constraint2_1280
 L  constraint2_1281
 L  constraint2_1282
 L  constraint2_1283
 L  constraint2_380
 L  constraint2_381
 L  constraint2_382
 L  constraint2_383
 L  constraint2_870
 L  constraint2_871
 L  constraint2_872
 L  constraint2_873
 L  constraint2_350
 L  constraint2_351
 L  constraint2_352
 L  constraint2_353
 L  constraint2_1340
 L  constraint2_1341
 L  constraint2_1342
 L  constraint2_1343
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_128_1_0  OBJ       -1.8314521395483230e-02
    Z_128_1_0  constraint1_1281  1
    Z_128_1_0  constraint2_1280  1
    Z_128_1_1  OBJ       -3.6619986783934599e-01
    Z_128_1_1  constraint1_1281  1
    Z_128_1_1  constraint2_1281  1
    Z_128_1_2  OBJ       -3.4679616231483301e-03
    Z_128_1_2  constraint1_1281  1
    Z_128_1_2  constraint2_1282  1
    Z_128_1_3  OBJ       -2.1361592931685498e-02
    Z_128_1_3  constraint1_1281  1
    Z_128_1_3  constraint2_1283  1
    Z_38_1_0  OBJ       -1.4637338771127939e-03
    Z_38_1_0  constraint1_381  1
    Z_38_1_0  constraint2_380  1
    Z_38_1_1  OBJ       -4.8306605591548757e-03
    Z_38_1_1  constraint1_381  1
    Z_38_1_1  constraint2_381  1
    Z_38_1_2  OBJ       -1.4974658933770624e-01
    Z_38_1_2  constraint1_381  1
    Z_38_1_2  constraint2_382  1
    Z_38_1_3  OBJ       -4.4765778687910573e-01
    Z_38_1_3  constraint1_381  1
    Z_38_1_3  constraint2_383  1
    Z_38_2_0  OBJ       -1.4637338771127939e-03
    Z_38_2_0  constraint1_382  1
    Z_38_2_0  constraint2_380  1
    Z_38_2_1  OBJ       -4.8306605591548757e-03
    Z_38_2_1  constraint1_382  1
    Z_38_2_1  constraint2_381  1
    Z_38_2_2  OBJ       -1.4974658933770624e-01
    Z_38_2_2  constraint1_382  1
    Z_38_2_2  constraint2_382  1
    Z_38_2_3  OBJ       -4.4765778687910573e-01
    Z_38_2_3  constraint1_382  1
    Z_38_2_3  constraint2_383  1
    Z_134_1_0  OBJ       -5.5186046724757631e-02
    Z_134_1_0  constraint1_1341  1
    Z_134_1_0  constraint2_1340  1
    Z_134_1_1  OBJ       -3.3639353361792601e-01
    Z_134_1_1  constraint1_1341  1
    Z_134_1_1  constraint2_1341  1
    Z_134_1_2  OBJ       -4.6310594146830586e-03
    Z_134_1_2  constraint1_1341  1
    Z_134_1_2  constraint2_1342  1
    Z_134_1_3  OBJ       -1.0441116300227510e-01
    Z_134_1_3  constraint1_1341  1
    Z_134_1_3  constraint2_1343  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1281  1
    RHS1      constraint1_381  1
    RHS1      constraint1_382  1
    RHS1      constraint1_1341  1
    RHS1      constraint2_1280  1
    RHS1      constraint2_1281  1
    RHS1      constraint2_1282  1
    RHS1      constraint2_1283  1
    RHS1      constraint2_380  1
    RHS1      constraint2_381  1
    RHS1      constraint2_382  1
    RHS1      constraint2_383  1
    RHS1      constraint2_870  1
    RHS1      constraint2_871  1
    RHS1      constraint2_872  1
    RHS1      constraint2_873  1
    RHS1      constraint2_350  1
    RHS1      constraint2_351  1
    RHS1      constraint2_352  1
    RHS1      constraint2_353  1
    RHS1      constraint2_1340  1
    RHS1      constraint2_1341  1
    RHS1      constraint2_1342  1
    RHS1      constraint2_1343  1
BOUNDS
 UP BND1      Z_128_1_0  1
 UP BND1      Z_128_1_1  1
 UP BND1      Z_128_1_2  1
 UP BND1      Z_128_1_3  1
 UP BND1      Z_38_1_0  1
 UP BND1      Z_38_1_1  1
 UP BND1      Z_38_1_2  1
 UP BND1      Z_38_1_3  1
 UP BND1      Z_38_2_0  1
 UP BND1      Z_38_2_1  1
 UP BND1      Z_38_2_2  1
 UP BND1      Z_38_2_3  1
 UP BND1      Z_134_1_0  1
 UP BND1      Z_134_1_1  1
 UP BND1      Z_134_1_2  1
 UP BND1      Z_134_1_3  1
QUADOBJ
    Z_128_1_0  Z_38_1_0  -8.5222550181148577e-07
    Z_128_1_0  Z_38_2_0  -8.5222550181148577e-07
    Z_128_1_0  Z_134_1_0  -7.2965080689657236e-02
    Z_128_1_1  Z_38_1_1  -8.5222550181148577e-07
    Z_128_1_1  Z_38_2_1  -8.5222550181148577e-07
    Z_128_1_1  Z_134_1_1  -7.2965080689657236e-02
    Z_128_1_2  Z_38_1_2  -8.5222550181148577e-07
    Z_128_1_2  Z_38_2_2  -8.5222550181148577e-07
    Z_128_1_2  Z_134_1_2  -7.2965080689657236e-02
    Z_128_1_3  Z_38_1_3  -8.5222550181148577e-07
    Z_128_1_3  Z_38_2_3  -8.5222550181148577e-07
    Z_128_1_3  Z_134_1_3  -7.2965080689657236e-02
ENDATA
