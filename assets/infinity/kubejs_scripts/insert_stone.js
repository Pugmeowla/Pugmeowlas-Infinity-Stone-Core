PalladiumEvents.registerAnimations((event) => {
    event.register('infinity/insert_stone', 200, (builder) => {

        // Check the Chronosapien T-pose ability
        let activation = animationUtil.getAnimationTimerAbilityValue(
            builder.getPlayer(), 'infinity:infinity_gauntlet', 'insert_stone', builder.getPartialTicks()
        );

        if (activation > 0 && !builder.isFirstPerson()) {
            // Third-person T-pose
            builder.get('right_arm')
                .setXRotDegrees(-130)
                .setYRotDegrees(-30)
                .setZRotDegrees(60)
                .setX(-5)
                .setY(3)
                .setZ(1)
                .animate('easeOutBack', activation);

            builder.get('left_arm')
                .setXRotDegrees(-120)
                .setYRotDegrees(30)
                .setZRotDegrees(-90)
                .setX(6)
                .setY(3)
                .setZ(1)
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
