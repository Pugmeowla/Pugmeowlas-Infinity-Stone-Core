PalladiumEvents.registerAnimations((event) => {
    event.register('infinity/space_force_field', 100, (builder) => {

        // Check the Space Stone force field ability
        let activation = animationUtil.getAnimationTimerAbilityValue(
            builder.getPlayer(), 'infinity:space_stone', 'force_field_anim', builder.getPartialTicks()
        );

        if (activation > 0 && !builder.isFirstPerson()) {
            // Third-person shield/block pose
            builder.get('left_arm')
                .setXRotDegrees(-45)   // slightly raised
                .setYRotDegrees(45)   // angled across torso
                .setZRotDegrees(0)    // subtle twist
                .setX(5)               // move slightly outward
                .setY(2)
                .setZ(0)
                .animate('easeOutQuad', activation);

            // Keep right arm mostly neutral
           

            // Legs neutral
           }

        
    });
});