package;

import chom.*;
import MainScene;
import openfl.display.Sprite;
import openfl.display.FPS;

class Main extends Game
{   
    public function new() {
        super();
        this.Resizable = false;
        var fps = new FPS();
        var ms = new MainScene();
        changeScene(ms);
        addChild(fps);
    }
}