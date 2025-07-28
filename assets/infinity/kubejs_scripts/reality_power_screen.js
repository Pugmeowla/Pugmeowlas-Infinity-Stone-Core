PalladiumEvents.renderPowerScreen(e => {
     if (e.tab.toString() !== 'infinity:reality_stone') return;
    const tex1 = 'infinity:textures/gui/powers/reality_window.png';
    
    const width1 = 252;
    const height1 = 196;

    const screenWidth = e.screen.width;
    const screenHeight = e.screen.height;

    const x1 = Math.floor((screenWidth - width1) / 2);
    const y1 = Math.floor((screenHeight - height1) / 2);

    guiUtil.blit(tex1, e.guiGraphics, x1, y1, 0, 0, width1, height1);
});