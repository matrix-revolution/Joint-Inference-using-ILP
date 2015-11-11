NAME srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_00
 L  constraint1_01
 L  constraint1_02
 L  constraint1_10
 L  constraint1_11
 L  constraint1_12
 L  constraint1_20
 L  constraint1_21
 L  constraint1_30
 L  constraint1_31
 L  constraint1_32
 L  constraint2_00
 L  constraint2_01
 L  constraint2_02
 L  constraint2_03
 L  constraint2_10
 L  constraint2_11
 L  constraint2_12
 L  constraint2_13
 L  constraint2_20
 L  constraint2_21
 L  constraint2_22
 L  constraint2_23
 L  constraint2_30
 L  constraint2_31
 L  constraint2_32
 L  constraint2_33
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_000     OBJ       -0.05
    Z_000     constraint1_00  1
    Z_000     constraint2_00  1
    Z_001     OBJ       -0.1
    Z_001     constraint1_00  1
    Z_001     constraint2_01  1
    Z_002     OBJ       -0.4
    Z_002     constraint1_00  1
    Z_002     constraint2_02  1
    Z_003     OBJ       -0.15
    Z_003     constraint1_00  1
    Z_003     constraint2_03  1
    Z_010     OBJ       -0.35
    Z_010     constraint1_01  1
    Z_010     constraint2_00  1
    Z_011     OBJ       -0.15
    Z_011     constraint1_01  1
    Z_011     constraint2_01  1
    Z_012     OBJ       -0.05
    Z_012     constraint1_01  1
    Z_012     constraint2_02  1
    Z_013     OBJ       -0.2
    Z_013     constraint1_01  1
    Z_013     constraint2_03  1
    Z_020     OBJ       -0.15
    Z_020     constraint1_02  1
    Z_020     constraint2_00  1
    Z_021     OBJ       -0.1
    Z_021     constraint1_02  1
    Z_021     constraint2_01  1
    Z_022     OBJ       -0.05
    Z_022     constraint1_02  1
    Z_022     constraint2_02  1
    Z_023     OBJ       -0.35
    Z_023     constraint1_02  1
    Z_023     constraint2_03  1
    Z_100     OBJ       -0.05
    Z_100     constraint1_10  1
    Z_100     constraint2_10  1
    Z_101     OBJ       -0.1
    Z_101     constraint1_10  1
    Z_101     constraint2_11  1
    Z_102     OBJ       -0.35
    Z_102     constraint1_10  1
    Z_102     constraint2_12  1
    Z_103     OBJ       -0.1
    Z_103     constraint1_10  1
    Z_103     constraint2_13  1
    Z_110     OBJ       -0.4
    Z_110     constraint1_11  1
    Z_110     constraint2_10  1
    Z_111     OBJ       -0.1
    Z_111     constraint1_11  1
    Z_111     constraint2_11  1
    Z_112     constraint1_11  1
    Z_112     constraint2_12  1
    Z_113     OBJ       -0.15
    Z_113     constraint1_11  1
    Z_113     constraint2_13  1
    Z_120     OBJ       -0.25
    Z_120     constraint1_12  1
    Z_120     constraint2_10  1
    Z_121     OBJ       -0.1
    Z_121     constraint1_12  1
    Z_121     constraint2_11  1
    Z_122     OBJ       -0.05
    Z_122     constraint1_12  1
    Z_122     constraint2_12  1
    Z_123     OBJ       -0.35
    Z_123     constraint1_12  1
    Z_123     constraint2_13  1
    Z_200     OBJ       -0.05
    Z_200     constraint1_20  1
    Z_200     constraint2_20  1
    Z_201     OBJ       -0.1
    Z_201     constraint1_20  1
    Z_201     constraint2_21  1
    Z_202     OBJ       -0.35
    Z_202     constraint1_20  1
    Z_202     constraint2_22  1
    Z_203     OBJ       -0.05
    Z_203     constraint1_20  1
    Z_203     constraint2_23  1
    Z_210     OBJ       -0.25
    Z_210     constraint1_21  1
    Z_210     constraint2_20  1
    Z_211     OBJ       -0.15
    Z_211     constraint1_21  1
    Z_211     constraint2_21  1
    Z_212     OBJ       -0.05
    Z_212     constraint1_21  1
    Z_212     constraint2_22  1
    Z_213     OBJ       -0.4
    Z_213     constraint1_21  1
    Z_213     constraint2_23  1
    Z_300     OBJ       -0.05
    Z_300     constraint1_30  1
    Z_300     constraint2_30  1
    Z_301     OBJ       -0.05
    Z_301     constraint1_30  1
    Z_301     constraint2_31  1
    Z_302     OBJ       -0.4
    Z_302     constraint1_30  1
    Z_302     constraint2_32  1
    Z_303     OBJ       -0.05
    Z_303     constraint1_30  1
    Z_303     constraint2_33  1
    Z_310     OBJ       -0.35
    Z_310     constraint1_31  1
    Z_310     constraint2_30  1
    Z_311     OBJ       -0.1
    Z_311     constraint1_31  1
    Z_311     constraint2_31  1
    Z_312     OBJ       -0.05
    Z_312     constraint1_31  1
    Z_312     constraint2_32  1
    Z_313     OBJ       -0.25
    Z_313     constraint1_31  1
    Z_313     constraint2_33  1
    Z_320     OBJ       -0.2
    Z_320     constraint1_32  1
    Z_320     constraint2_30  1
    Z_321     OBJ       -0.1
    Z_321     constraint1_32  1
    Z_321     constraint2_31  1
    Z_322     OBJ       -0.05
    Z_322     constraint1_32  1
    Z_322     constraint2_32  1
    Z_323     OBJ       -0.35
    Z_323     constraint1_32  1
    Z_323     constraint2_33  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_00  1
    RHS1      constraint1_01  1
    RHS1      constraint1_02  1
    RHS1      constraint1_10  1
    RHS1      constraint1_11  1
    RHS1      constraint1_12  1
    RHS1      constraint1_20  1
    RHS1      constraint1_21  1
    RHS1      constraint1_30  1
    RHS1      constraint1_31  1
    RHS1      constraint1_32  1
    RHS1      constraint2_00  1
    RHS1      constraint2_01  1
    RHS1      constraint2_02  1
    RHS1      constraint2_03  1
    RHS1      constraint2_10  1
    RHS1      constraint2_11  1
    RHS1      constraint2_12  1
    RHS1      constraint2_13  1
    RHS1      constraint2_20  1
    RHS1      constraint2_21  1
    RHS1      constraint2_22  1
    RHS1      constraint2_23  1
    RHS1      constraint2_30  1
    RHS1      constraint2_31  1
    RHS1      constraint2_32  1
    RHS1      constraint2_33  1
BOUNDS
 UP BND1      Z_000     1
 UP BND1      Z_001     1
 UP BND1      Z_002     1
 UP BND1      Z_003     1
 UP BND1      Z_010     1
 UP BND1      Z_011     1
 UP BND1      Z_012     1
 UP BND1      Z_013     1
 UP BND1      Z_020     1
 UP BND1      Z_021     1
 UP BND1      Z_022     1
 UP BND1      Z_023     1
 UP BND1      Z_100     1
 UP BND1      Z_101     1
 UP BND1      Z_102     1
 UP BND1      Z_103     1
 UP BND1      Z_110     1
 UP BND1      Z_111     1
 UP BND1      Z_112     1
 UP BND1      Z_113     1
 UP BND1      Z_120     1
 UP BND1      Z_121     1
 UP BND1      Z_122     1
 UP BND1      Z_123     1
 UP BND1      Z_200     1
 UP BND1      Z_201     1
 UP BND1      Z_202     1
 UP BND1      Z_203     1
 UP BND1      Z_210     1
 UP BND1      Z_211     1
 UP BND1      Z_212     1
 UP BND1      Z_213     1
 UP BND1      Z_300     1
 UP BND1      Z_301     1
 UP BND1      Z_302     1
 UP BND1      Z_303     1
 UP BND1      Z_310     1
 UP BND1      Z_311     1
 UP BND1      Z_312     1
 UP BND1      Z_313     1
 UP BND1      Z_320     1
 UP BND1      Z_321     1
 UP BND1      Z_322     1
 UP BND1      Z_323     1
QUADOBJ
    Z_000     Z_100     -0.8
    Z_000     Z_110     -0.2
    Z_000     Z_120     -0.1
    Z_000     Z_200     -0.7
    Z_000     Z_210     -0.1
    Z_000     Z_300     -0.9
    Z_000     Z_310     -0.1
    Z_000     Z_320     -0.2
    Z_001     Z_101     -0.8
    Z_001     Z_111     -0.2
    Z_001     Z_121     -0.1
    Z_001     Z_201     -0.7
    Z_001     Z_211     -0.1
    Z_001     Z_301     -0.9
    Z_001     Z_311     -0.1
    Z_001     Z_321     -0.2
    Z_002     Z_102     -0.8
    Z_002     Z_112     -0.2
    Z_002     Z_122     -0.1
    Z_002     Z_202     -0.7
    Z_002     Z_212     -0.1
    Z_002     Z_302     -0.9
    Z_002     Z_312     -0.1
    Z_002     Z_322     -0.2
    Z_003     Z_103     -0.8
    Z_003     Z_113     -0.2
    Z_003     Z_123     -0.1
    Z_003     Z_203     -0.7
    Z_003     Z_213     -0.1
    Z_003     Z_303     -0.9
    Z_003     Z_313     -0.1
    Z_003     Z_323     -0.2
    Z_010     Z_100     -0.1
    Z_010     Z_110     -1
    Z_010     Z_120     -0.4
    Z_010     Z_200     -0.1
    Z_010     Z_210     -0.7
    Z_010     Z_300     -0.1
    Z_010     Z_310     -0.9
    Z_010     Z_320     -0.5
    Z_011     Z_101     -0.1
    Z_011     Z_111     -1
    Z_011     Z_121     -0.4
    Z_011     Z_201     -0.1
    Z_011     Z_211     -0.7
    Z_011     Z_301     -0.1
    Z_011     Z_311     -0.9
    Z_011     Z_321     -0.5
    Z_012     Z_102     -0.1
    Z_012     Z_112     -1
    Z_012     Z_122     -0.4
    Z_012     Z_202     -0.1
    Z_012     Z_212     -0.7
    Z_012     Z_302     -0.1
    Z_012     Z_312     -0.9
    Z_012     Z_322     -0.5
    Z_013     Z_103     -0.1
    Z_013     Z_113     -1
    Z_013     Z_123     -0.4
    Z_013     Z_203     -0.1
    Z_013     Z_213     -0.7
    Z_013     Z_303     -0.1
    Z_013     Z_313     -0.9
    Z_013     Z_323     -0.5
    Z_020     Z_100     -0.2
    Z_020     Z_110     -0.3
    Z_020     Z_120     -0.7
    Z_020     Z_200     -0.3
    Z_020     Z_210     -0.6
    Z_020     Z_300     -0.1
    Z_020     Z_310     -0.4
    Z_020     Z_320     -0.8
    Z_021     Z_101     -0.2
    Z_021     Z_111     -0.3
    Z_021     Z_121     -0.7
    Z_021     Z_201     -0.3
    Z_021     Z_211     -0.6
    Z_021     Z_301     -0.1
    Z_021     Z_311     -0.4
    Z_021     Z_321     -0.8
    Z_022     Z_102     -0.2
    Z_022     Z_112     -0.3
    Z_022     Z_122     -0.7
    Z_022     Z_202     -0.3
    Z_022     Z_212     -0.6
    Z_022     Z_302     -0.1
    Z_022     Z_312     -0.4
    Z_022     Z_322     -0.8
    Z_023     Z_103     -0.2
    Z_023     Z_113     -0.3
    Z_023     Z_123     -0.7
    Z_023     Z_203     -0.3
    Z_023     Z_213     -0.6
    Z_023     Z_303     -0.1
    Z_023     Z_313     -0.4
    Z_023     Z_323     -0.8
    Z_100     Z_200     -0.8
    Z_100     Z_210     -0.1
    Z_100     Z_300     -0.8
    Z_100     Z_310     -0.1
    Z_100     Z_320     -0.3
    Z_101     Z_201     -0.8
    Z_101     Z_211     -0.1
    Z_101     Z_301     -0.8
    Z_101     Z_311     -0.1
    Z_101     Z_321     -0.3
    Z_102     Z_202     -0.8
    Z_102     Z_212     -0.1
    Z_102     Z_302     -0.8
    Z_102     Z_312     -0.1
    Z_102     Z_322     -0.3
    Z_103     Z_203     -0.8
    Z_103     Z_213     -0.1
    Z_103     Z_303     -0.8
    Z_103     Z_313     -0.1
    Z_103     Z_323     -0.3
    Z_110     Z_200     -0.2
    Z_110     Z_210     -0.7
    Z_110     Z_300     -0.1
    Z_110     Z_310     -0.9
    Z_110     Z_320     -0.6
    Z_111     Z_201     -0.2
    Z_111     Z_211     -0.7
    Z_111     Z_301     -0.1
    Z_111     Z_311     -0.9
    Z_111     Z_321     -0.6
    Z_112     Z_202     -0.2
    Z_112     Z_212     -0.7
    Z_112     Z_302     -0.1
    Z_112     Z_312     -0.9
    Z_112     Z_322     -0.6
    Z_113     Z_203     -0.2
    Z_113     Z_213     -0.7
    Z_113     Z_303     -0.1
    Z_113     Z_313     -0.9
    Z_113     Z_323     -0.6
    Z_120     Z_200     -0.3
    Z_120     Z_210     -0.8
    Z_120     Z_300     -0.1
    Z_120     Z_310     -0.4
    Z_120     Z_320     -0.8
    Z_121     Z_201     -0.3
    Z_121     Z_211     -0.8
    Z_121     Z_301     -0.1
    Z_121     Z_311     -0.4
    Z_121     Z_321     -0.8
    Z_122     Z_202     -0.3
    Z_122     Z_212     -0.8
    Z_122     Z_302     -0.1
    Z_122     Z_312     -0.4
    Z_122     Z_322     -0.8
    Z_123     Z_203     -0.3
    Z_123     Z_213     -0.8
    Z_123     Z_303     -0.1
    Z_123     Z_313     -0.4
    Z_123     Z_323     -0.8
    Z_200     Z_300     -0.7
    Z_200     Z_310     -0.2
    Z_200     Z_320     -0.3
    Z_201     Z_301     -0.7
    Z_201     Z_311     -0.2
    Z_201     Z_321     -0.3
    Z_202     Z_302     -0.7
    Z_202     Z_312     -0.2
    Z_202     Z_322     -0.3
    Z_203     Z_303     -0.7
    Z_203     Z_313     -0.2
    Z_203     Z_323     -0.3
    Z_210     Z_300     -0.1
    Z_210     Z_310     -0.6
    Z_210     Z_320     -0.6
    Z_211     Z_301     -0.1
    Z_211     Z_311     -0.6
    Z_211     Z_321     -0.6
    Z_212     Z_302     -0.1
    Z_212     Z_312     -0.6
    Z_212     Z_322     -0.6
    Z_213     Z_303     -0.1
    Z_213     Z_313     -0.6
    Z_213     Z_323     -0.6
ENDATA
