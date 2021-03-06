class Widget {            //Widget class done by Paul Lee
  int x, y, width, height; 
  String label, url; 
  int event; 
  color widgetColor, labelColor, strokeColour, selectedColor; 
  PFont widgetFont;
  boolean overButton;

  Widget(int x, int y, int width, int height, String label, color widgetColor, color selectedColor, PFont widgetFont, int event) {
    this.x=x;
    this.y=y; 
    this.width = width; 
    this.height= height; 
    this.label=label; 
    this.event=event;
    this.widgetColor=widgetColor; 
    this.selectedColor = selectedColor;
    this.widgetFont=widgetFont;
    this.url = null;
    labelColor= color(0);
  }

  Widget(int x, float y, int width, int height, String label, color widgetColor, color selectedColor, PFont widgetFont, int event, String url) { // Written by Dominique Meudec
    noStroke();
    this.x=x;
    this.y=(int)y; 
    this.width = width; 
    this.height= height; 
    this.label=label; 
    this.event=event;
    this.widgetColor=widgetColor; 
    this.selectedColor = selectedColor;
    this.widgetFont=widgetFont; 
    this.url = url;
    labelColor= color(0);
  }

  void draw() {
    if (overButton) {
      fill(selectedColor);
    } else {
      fill(widgetColor);
    }
    stroke(strokeColour);
    if(url != null){
      noStroke();
      rect(x, y, width+5, height);
      fill(labelColor);
      textSize(WIDGET_SIZE);
      text(label, x+1, y+height-0);
    }
    else{
      rect(x, y, width, height);
      fill(labelColor);
      textSize(WIDGET_SIZE);
      text(label, x + 5, y+height-7);
    }
  }

  int getEvent(int mX, int mY) {
    if (mX > this.x && mX < this.x+this.width && mY > this.y && mY < this.y+this.height) {
      //overButton = true;
      return event;
    } else {
      //overButton = false;
      return EVENT_NULL;
    }
  }
  
  int getYpos(){
    return this.y;
  }
  // Following methods by Dominique Meudec
  String getUrl(int mX, int mY){
    String url = null;
    if (mX > this.x && mX < this.x+this.width && mY > this.y && mY < this.y+this.height) {
      url = this.url;
    }
    return url;
  }
  
  String getURL(){
    return this.url;
  }
  
}
