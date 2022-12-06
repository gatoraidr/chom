package chom;

import openfl.text.*;
import openfl.display.FPS;

class Label extends TextField {
    public function new() {
        super();
        this.autoSize = TextFieldAutoSize.CENTER;
        this.type = TextFieldType.DYNAMIC;
        this.text = "Placeholder Text";
        this.x = 10;
        this.y = 10;
    }
}