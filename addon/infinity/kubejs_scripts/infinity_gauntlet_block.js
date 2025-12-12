// Register the custom block
StartupEvents.registry('block', e => {
    e.create('infinity:infinity_gauntlet_block', 'falling')
        .displayName('Infinity Gauntlet Dummy Block')

        .mapColor('yellow')
        .model('kubejs:block/infinity_gauntlet_block')
        .fullBlock(false)
        .hardness(1)
        .requiresTool(false)
        .resistance(100)
        .lightLevel(0)
        .opaque(true)
        .renderType('solid')
        .noDrops()
        .notSolid()
        .box(3, 0, 3, 13, 5, 13)
});

// Set the max stack size for the item form of the block
ItemEvents.modification(event => {
    event.modify('infinity:infinity_gauntlet_block', item => {
        item.maxStackSize = 1; // Set max stack size to 1
    });
});