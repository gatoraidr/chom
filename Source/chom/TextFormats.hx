package chom;

import openfl.text.TextFormat;
import openfl.utils.Assets;
import openfl.text.TextFormatAlign;

class BaseFormat extends TextFormat {
    public function new(size = 30, color = 0x000000) {
        super();
        this.size = size;
        this.color = color;
        this.align = TextFormatAlign.CENTER;
    }
}

class ChaosTimes extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/ChaosTimes.ttf").fontName;
    }
}
class Fluoxetine extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/Fluoxetine.ttf").fontName;
    }
}
class SchizoidPersonality extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/SchizoidPersonality.otf").fontName;
    }
}
class Acidic extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/Acidic.ttf").fontName;
    }
}
class CandyBeans extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/CandyBeans.otf").fontName;
    }
}
class FruitDays extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/FruitDays.ttf").fontName;
    }
}
class MilkyBoba extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/MilkyBoba.ttf").fontName;
    }
}
class ReachStory extends BaseFormat {
    public function new(size = 30, color = 0x000000) {
        super(size, color);
        this.font = Assets.getFont("fonts/ReachStory.ttf").fontName;
    }
}