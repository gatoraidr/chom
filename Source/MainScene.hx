package;

import chom.*;
import openfl.display.Sprite;

class MainScene extends Scene {
    public function new() {
        super();
        var txt = new Label();
        txt.text = "Hello, World!";
        txt.x = 10;
        txt.y = 30;
        addChild(txt);
    }
}