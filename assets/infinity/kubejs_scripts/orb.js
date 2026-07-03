let powers = [
    'infinity:orb'
];

var getOpenChargeValue = function (builder, start, end) {
    let player = builder.getPlayer();
    for (let power of powers) {
        let value = animationUtil.getAnimationTimerAbilityValue(
            player, power, 'orb_open_animation_timer', builder.getPartialTicks(), start, end
        );
        if (value > 0) return value;
    }
    return 0;
};

var getCloseChargeValue = function (builder, start, end) {
    let player = builder.getPlayer();
    for (let power of powers) {
        let value = animationUtil.getAnimationTimerAbilityValue(
            player, power, 'orb_close_animation_timer', builder.getPartialTicks(), start, end
        );
        if (value > 0) return value;
    }
    return 0;
};

PalladiumEvents.registerAnimations((event) => {

    event.register('infinity/orb_open', 10, (builder) => {
        let charge1 = getOpenChargeValue(builder, 1, 6);

        if (charge1 > 0) {

            // Third-person
            if (!builder.isFirstPerson()) {
                builder.get('right_arm')
                    .setXRotDegrees(-90)
                    .setYRotDegrees(2)
                    .setZRotDegrees(0)
                    .setX(-5).setY(2).setZ(0)
                    .animate('OutQuad', charge1);

                builder.get('left_arm')
                    .setXRotDegrees(-90)
                    .setYRotDegrees(-2)
                    .setZRotDegrees(0)
                    .setX(5).setY(2).setZ(0)
                    .animate('OutQuad', charge1);
            }

            // First-person
            if (builder.isFirstPerson()) {
               builder.get('right_arm')
                    .setXRotDegrees(0)
                    .setYRotDegrees(45)
                    .setZRotDegrees(0)
                    .setX(0).setY(14).setZ(0)
                    .animate('OutQuad', charge1);

                builder.get('left_arm')
                    .setXRotDegrees(0)
                    .setYRotDegrees(0)
                    .setZRotDegrees(0)
                    .setX(0).setY(0).setZ(0)
                    .animate('OutQuad', charge1);
            }
        }
    });

    event.register('infinity/orb_close', 10, (builder) => {
        let charge1 = getCloseChargeValue(builder, 1, 6);

        if (charge1 > 0) {

            // Third-person
            if (!builder.isFirstPerson()) {
                builder.get('right_arm')
                    .setXRotDegrees(-90)
                    .setYRotDegrees(-15)
                    .setZRotDegrees(0)
                    .setX(-5).setY(2).setZ(0)
                    .animate('OutQuad', charge1);

                builder.get('left_arm')
                    .setXRotDegrees(-90)
                    .setYRotDegrees(15)
                    .setZRotDegrees(0)
                    .setX(5).setY(2).setZ(0)
                    .animate('OutQuad', charge1);
            }

            // First-person
            if (builder.isFirstPerson()) {
                builder.get('right_arm')
                    .setXRotDegrees(0)
                    .setYRotDegrees(90)
                    .setZRotDegrees(0)
                    .setX(0).setY(14).setZ(0)
                    .animate('OutQuad', charge1);

                builder.get('left_arm')
                    .setXRotDegrees(0)
                    .setYRotDegrees(0)
                    .setZRotDegrees(0)
                    .setX(0).setY(0).setZ(0)
                    .animate('OutQuad', charge1);
            }
        }
    });

});