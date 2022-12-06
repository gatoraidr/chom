package chom;

import openfl.events.Event;
import openfl.Lib;
import openfl.display.Sprite;
class Scene extends Sprite {
    public var paused: Bool;
    var lastFrameTime: Float;
    public function new() {
        super();
        lastFrameTime = Lib.getTimer();
        addEventListener(Event.ENTER_FRAME, update);
    }
    public function onUpdate(delta: Float) {
        if (paused) {
            return;
        }
    }
    private function update(e:Event) {
        var currentTime = Lib.getTimer();
        onUpdate(currentTime - lastFrameTime);
        lastFrameTime = currentTime;
    }
}