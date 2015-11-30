sentence_to_id = {
    "Asexual reproduction is the process of reproducing cells or organisms without the union of separate individuals.": 0,
    "Asexual reproduction is the process of one individual organism producing one or more new individuals.": 1,
    "Asexual reproduction is the process of creating offspring that are genetically identical to the parent.": 2,
    "Asexual reproduction is the process of creating offspring from just one parent.": 3,
    "Asexual reproduction is the formation of an individual from a single parent without the use of sex cells and does not undergo    processes such as meoisis.": 4,
    "Asexual reproduction is the formation of new individuals from the cell(s) of a single parent": 5
}


sentence_to_args = {
    0: ["reproducing"],
    1: ["one individual organism", "producing", "one or more new individuals"],
    2: ["creating", "offspring"],
    3: ["creating", "offspring", "just one parent"],
    4: ["formation", "individual", "single parent"],
    5: ["formation", "new individual", "cells of a single parent"]
}

arg_role_scores = {
    (0, "reproducing"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.1,
        "TRIGGER": 0.8,
        "RESULT": 0.1
    },
    (1, "one individual organism"): {
        "UNDERGOER": 0.7,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.5
    },
    (1, "producing"): {
        "UNDERGOER": 0.4,
        "ENABLER": 0.2,
        "TRIGGER": 0.7,
        "RESULT": 0.1
    },
    (1, "one or more new individuals"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.2,
        "TRIGGER": 0.3,
        "RESULT": 0.8
    },
    (2, "creating"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.3,
        "TRIGGER": 0.7,
        "RESULT": 0.4
    },
    (2, "offspring"): {
        "UNDERGOER": 0.3,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.7
    },
    (3, "creating"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.2,
        "TRIGGER": 0.7,
        "RESULT": 0.1
    },
    (3, "offspring"): {
        "UNDERGOER": 0.5,
        "ENABLER": 0.3,
        "TRIGGER": 0.1,
        "RESULT": 0.8
    },
    (3, "just one parent"): {
        "UNDERGOER": 0.7,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.2
    },
    (4, "formation"): {
        "UNDERGOER": 0.0,
        "ENABLER": 0.2,
        "TRIGGER": 0.8,
        "RESULT": 0.3
    },
    (4, "individual"): {
        "UNDERGOER": 0.5,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.7
    },
    (4, "single parent"): {
        "UNDERGOER": 0.8,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.5
    },
    (5, "formation"): {
        "UNDERGOER": 0.5,
        "ENABLER": 0.2,
        "TRIGGER": 0.7,
        "RESULT": 0.1
    },
    (5, "new individual"): {
        "UNDERGOER": 0.5,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.7
    },
    (5, "cells of a single parent"): {
        "UNDERGOER": 0.8,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.3
    }
}
