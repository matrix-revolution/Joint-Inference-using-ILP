sentence_to_id = {
    "Evaporation is the process of changing liquid water into water vapor (a gas).": 0,
    "Evaporation is the process of converting water from liquid to gaseous phase.": 1,
    "Evaporation is the process of returning damp to the atmosphere.": 2,
    "Evaporation is the process of turning a liquid, at its saturation temperature, into vapor.": 3
}

sentence_to_args = {
    0: ["changing", "liquid water", "water vapor"],
    1: ["converting", "liquid", "gas"],
    2: ["returning", "damp"],
    3: ["turning", "a liquid", "vapor"]
}

arg_role_scores = {
    (0, "changing"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.1,
        "TRIGGER": 0.8,
        "RESULT": 0.1
    },
    (0, "liquid water"): {
        "UNDERGOER": 0.7,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.5
    },
    (0, "water vapor"): {
        "UNDERGOER": 0.4,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.7
    },
    (1, "converting"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.2,
        "TRIGGER": 0.8,
        "RESULT": 0.3
    },
    (1, "liquid"): {
        "UNDERGOER": 0.7,
        "ENABLER": 0.3,
        "TRIGGER": 0.1,
        "RESULT": 0.4
    },
    (1, "gas"): {
        "UNDERGOER": 0.3,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.7
    },
    (2, "returning"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.2,
        "TRIGGER": 0.7,
        "RESULT": 0.1
    },
    (2, "damp"): {
        "UNDERGOER": 0.5,
        "ENABLER": 0.3,
        "TRIGGER": 0.1,
        "RESULT": 0.8
    },
    (3, "turning"): {
        "UNDERGOER": 0.1,
        "ENABLER": 0.2,
        "TRIGGER": 0.7,
        "RESULT": 0.2
    },
    (3, "a liquid"): {
        "UNDERGOER": 0.8,
        "ENABLER": 0.2,
        "TRIGGER": 0.0,
        "RESULT": 0.3
    },
    (3, "vapor"): {
        "UNDERGOER": 0.5,
        "ENABLER": 0.2,
        "TRIGGER": 0.1,
        "RESULT": 0.7
    }
}
