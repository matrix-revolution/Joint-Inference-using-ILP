sentence_to_id = {
    "Evaporation is the process of changing liquid water into water vapor (a gas).": 0,
    "Evaporation is the process of converting water from liquid to gaseous phase.": 1,
    "Evaporation is the process of returning damp to the atmosphere.": 2,
    "Evaporation is the process of turning a liquid, at its saturation temperature, into vapor.": 3
}

sentence_to_args = {
    0: [(1, "changing"), (2, "liquid water"), (4, "water vapor")],
    1: [(2, "converting"), (1, "liquid"), (3, "gas")],
    2: [(3, "returning"), (2, "damp")],
    3: [(1, "turning"), (2, "a liquid"), (3, "vapor")]
}

arg_role_scores = {
    (0, 1): {
        "undergoer": 0.1,
        "enabler": 0.1,
        "trigger": 0.8,
        "result": 0.1
    },
    (0, 2): {
        "undergoer": 0.7,
        "enabler": 0.2,
        "trigger": 0.1,
        "result": 0.5
    },
    (0, 4): {
        "undergoer": 0.4,
        "enabler": 0.2,
        "trigger": 0.1,
        "result": 0.7
    },
    (1, 2): {
        "undergoer": 0.1,
        "enabler": 0.2,
        "trigger": 0.8,
        "result": 0.3
    },
    (1, 1): {
        "undergoer": 0.7,
        "enabler": 0.3,
        "trigger": 0.1,
        "result": 0.4
    },
    (1, 3): {
        "undergoer": 0.3,
        "enabler": 0.2,
        "trigger": 0.1,
        "result": 0.7
    },
    (2, 3): {
        "undergoer": 0.1,
        "enabler": 0.2,
        "trigger": 0.7,
        "result": 0.1
    },
    (2, 2): {
        "undergoer": 0.5,
        "enabler": 0.3,
        "trigger": 0.1,
        "result": 0.8
    },
    (3, 1): {
        "undergoer": 0.1,
        "enabler": 0.2,
        "trigger": 0.7,
        "result": 0.2
    },
    (3, 2): {
        "undergoer": 0.8,
        "enabler": 0.2,
        "trigger": 0.0,
        "result": 0.3
    },
    (3, 3): {
        "undergoer": 0.5,
        "enabler": 0.2,
        "trigger": 0.1,
        "result": 0.7
    }
}
