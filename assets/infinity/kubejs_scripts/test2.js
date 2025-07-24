PalladiumEvents.renderPowerScreen(e => {
    const tex = 'infinity:textures/gui/powers/infinity_window.png';

    const width = 252;
    const height = 196;

    const screenWidth = e.screen.width;
    const screenHeight = e.screen.height;

    const x = Math.floor((screenWidth - width) / 2);
    const y = Math.floor((screenHeight - height) / 2);

    guiUtil.blit(tex, e.guiGraphics, x, y, 0, 0, width, height);
});