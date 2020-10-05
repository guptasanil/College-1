class Widget {            //Widget class done by Paul Lee
  int x, y, width, height; 
  String label; 
  int event; 
  color widgetColor, labelColor, strokeColour; 
  PFont widgetFont;

  Widget(int x, int y, int width, int height, String label, color widgetColor, PFont widgetFont, int event) {
    this.x=x;
    this.y=y; 
    this.width = width; 
    this.height= height; 
    this.label=label; 
    this.event=event;
    this.widgetColor=widgetColor; 
    this.widgetFont=widgetFont; 
    labelColor= color(0);
  }

  void draw() {
    fill(widgetColor);
    stroke(strokeColour);
    rect(x, y, width, height);
    fill(labelColor);
    textSize(WIDGET_SIZE);
    text(label, x+10, y+height-20);
  }

  int getEvent(int mX, int mY) {
    if (mX > this.x && mX < this.x+WIDGETX && mY > this.y && mY < this.y+WIDGETY) {
      return event;
    }
    return EVENT_NULL;
  }
}