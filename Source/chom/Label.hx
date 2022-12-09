package chom;

import openfl.text.*;
import chom.TextFormats;

class Label extends TextField {
    var format: BaseFormat;
    var size: Int;
    public function new(f: BaseFormat = null) {
        super();
        format = f;
        this.autoSize = TextFieldAutoSize.CENTER;
        this.type = TextFieldType.DYNAMIC;
        this.text = "Placeholder Text";
        this.x = 10;
        this.y = 10;
    }
    public function setFormat(f: BaseFormat) {
        f.size = size;
        this.defaultTextFormat = f;
        this.setTextFormat(f);
        format = f;
    }
    public function setSize(s: Int) {
        format.size = s;
        size = s;
        this.defaultTextFormat = format;
        this.setTextFormat(format);
    }
}