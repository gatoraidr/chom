package chom;

import openfl.display.StageScaleMode;
import openfl.display.Sprite;
import chom.*;
import openfl.events.Event;
import openfl.Lib;
import lime.app.Application;
import openfl.display.FPS;

//The base class for all games
class Game extends Sprite {
    //The width of the window
    var WindowWidth: Int;
    //The height of the window
    var WindowHeight: Int;
    //The current scene of the game
    var Scene: Scene;
    //The last scene that was deployed, for a backup & convenience
    var LastScene: Scene;
    //If the game is resizable or not
    public var Resizable = true;
    //The game framerate, in seconds
    public var Framerate: Float;
    public function new() {
        super();
        this.WindowWidth = Application.current.window.width;
        this.WindowHeight = Application.current.window.height;
        stage.scaleMode = StageScaleMode.EXACT_FIT;

        addEventListener(Event.RESIZE, resize);
        addEventListener(Event.ENTER_FRAME, updateFrames);
    }
    private function updateFrames(e: Event) {
        this.Framerate = stage.frameRate;
    }
    public function changeScene(s: Scene) {
        removeChild(Scene);
        addChild(s);
        this.LastScene = this.Scene;
        this.Scene = s;
    }
    public function toLastScene() {
        var os = this.LastScene;
        removeChild(Scene);
        addChild(LastScene);
        this.LastScene = this.Scene;
        this.Scene = os;
    }
    public function onResize() {}
    private function resize(e:Event) {
        trace(WindowWidth);
        trace(WindowHeight);
        if (!Resizable) {
            Application.current.window.width = this.WindowWidth;
            Application.current.window.height = this.WindowHeight;
        } else {
            this.WindowWidth = Application.current.window.width;
            this.WindowHeight = Application.current.window.height;
        }
        trace(WindowWidth);
        trace(WindowHeight);
        onResize();
    }
}
