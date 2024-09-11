
exports.getExercises = async (req, res) => {
    try {
        const exercises = [
            {
                muscleGroup: "Chest",
                exercise: "Push-Up"
            },
            {
                muscleGroup: "Back",
                exercise: "Pull-Up"
            },
            {
                muscleGroup: "Legs",
                exercise: "Squat"
            },
            {
                muscleGroup: "Core",
                exercise: "Plank"
            },
            {
                muscleGroup: "Shoulders",
                exercise: "Handstand Push-Up"
            },
            {
                muscleGroup: "Arms",
                exercise: "Dips"
            },
            {
                muscleGroup: "Core",
                exercise: "Leg Raise"
            },
            {
                muscleGroup: "Legs",
                exercise: "Lunge"
            },
            {
                muscleGroup: "Back",
                exercise: "Inverted Row"
            },
            {
                muscleGroup: "Chest",
                exercise: "Decline Push-Up"
            }
        ];

        res.status(200).json({
            status: "success",
            data: {
                exercises,
            },
        });

    } catch (err) {
        res.status(404).json({
            status: "fail",
            message: err,
        });
    }
}

