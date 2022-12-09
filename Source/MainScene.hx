package;

import motion.easing.Elastic;
import chom.TextFormats;
import chom.*;
import openfl.display.Sprite;
import motion.Actuate;
import motion.easing.*;

class MainScene extends Scene {
    public function new() {
        super();
        var txt = new Label();
        txt.setFormat(new ReachStory());
        txt.setSize(80);
        txt.text = "Hello, World!";
        txt.x = 100;
        txt.y = 30;
        addChild(txt);
        Actuate.tween(txt, 5, {x: 800, y: 900});
    }
}