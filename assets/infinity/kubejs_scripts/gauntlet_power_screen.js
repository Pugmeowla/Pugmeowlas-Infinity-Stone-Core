PalladiumEvents.renderPowerScreen(e => {
     if (e.tab.toString() !== 'infinity:infinity_gauntlet') return;
    const tex1 = 'infinity:textures/gui/powers/gauntlet_window1.png';
    const tex2 = 'infinity:textures/gui/powers/gauntlet_window2.png';
    const tex3 = 'infinity:textures/gui/powers/gauntlet_window3.png';

    const width1 = 252;
    const height1 = 196;

    const screenWidth = e.screen.width;
    const screenHeight = e.screen.height;

    const x1 = Math.floor((screenWidth - width1) / 2);
    const y1 = Math.floor((screenHeight - height1) / 2);

    const x2 = Math.floor(((screenWidth - width1) / 2)+ width1);
    
    const y3 = Math.floor(((screenHeight - height1) / 2)- 196);

    guiUtil.blit(tex1, e.guiGraphics, x1, y1, 0, 0, width1, height1);
    guiUtil.blit(tex2, e.guiGraphics, x2, y1, 0, 0, width1, height1);
    guiUtil.blit(tex3, e.guiGraphics, x1, y3, 0, 0, width1, height1);
});