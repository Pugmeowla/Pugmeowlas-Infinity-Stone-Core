PalladiumEvents.registerAnimations(event => {
    event.register('infinity/gauntlet_anim', 15, builder => {
        // Get animation progress for the ability
        let anim = animationUtil.getAnimationTimerAbilityValue(
            builder.getPlayer(),
            'infinity:infinity_gauntlet',
            'gauntlet_anim',
            builder.getPartialTicks()
        );

        // Only animate in first-person
        if (anim > 0 && builder.isFirstPerson()) {
            builder.get('left_arm')
                .setXRotDegrees(-30) 
                .setYRotDegrees(20)
                .setZRotDegrees(20) 
                .setX(7)
                .setY(-4)
                .setZ(1)
                .animate('InOutCubic', anim);
        }
    });
});
