PalladiumEvents.registerAnimations((event) => {
    event.register('infinity/tposeactivation', 200, (builder) => {

        // Check the Chronosapien T-pose ability
        let activation = animationUtil.getAnimationTimerAbilityValue(
            builder.getPlayer(), 'infinity:power_stone_passive', 't-pose', builder.getPartialTicks()
        );

        if (activation > 0 && !builder.isFirstPerson()) {
            // Third-person T-pose
            builder.get('right_arm')
                .setXRotDegrees(-45)
                .setYRotDegrees(0)
                .setZRotDegrees(50)
                .setX(-4)
                .setY(3)
                .setZ(1)
                .animate('easeOutBack', activation);

            builder.get('left_arm')
                .setXRotDegrees(-45)
                .setYRotDegrees(0)
                .setZRotDegrees(-50)
                .setX(4)
                .setY(3)
                .setZ(1)
                .animate('easeOutBack', activation);

                 builder.get('left_leg')
                .setXRotDegrees(-10)
                .setYRotDegrees(-45)
                .setZRotDegrees(0)
                .animate('easeOutBack', activation);

                 builder.get('right_leg')
                .setXRotDegrees(-10)
                .setYRotDegrees(45)
                .setZRotDegrees(0)
                .animate('easeOutBack', activation);


            // Force head forward
           

        }

        if (activation > 0 && builder.isFirstPerson()) {
            // First-person T-pose
            builder.get('right_arm')
                .setXRotDegrees(0)
                .setYRotDegrees(0)
                .setZRotDegrees(50)
                .setX(-8)
                .setY(6)
                .setZ(4)
                .animate('easeOutBack', activation);

            builder.get('left_arm')
                .setXRotDegrees(0)
                .setYRotDegrees(0)
                .setZRotDegrees(-50)
                .setX(8)
                .setY(6)
                .setZ(4)
                .animate('easeOutBack', activation);

            // Force head forward
          
        }
    });
});
