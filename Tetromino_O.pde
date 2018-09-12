class Tetromino_O {
int ELEMENT_EIGEN_SIZE=20;
color c = color(204, 153, 0);
EigenRect[] o;
  
  public Tetromino_O(int x, int y) {
     this.o = new EigenRect[4];
     this.o[0] = new EigenRect(x,y);
     this.o[1] = new EigenRect(x+ELEMENT_EIGEN_SIZE,y);
     this.o[2] = new EigenRect(x,y+ELEMENT_EIGEN_SIZE);
     this.o[3] = new EigenRect(x+ELEMENT_EIGEN_SIZE,y+ELEMENT_EIGEN_SIZE);
  }
  void drawTetrominoO() {
  fill(c);
  for(int i=0; i<o.length; i++){
    rect(o[i].getX(),o[i].getY(),o[i].getSize(),o[i].getSize());
  }
  }
  
  void setPosition(int x, int y){
    for(int i=0; i<o.length; i++){
    o[i].setX(x);
    o[i].setY(y);
  }
  }
  void goDown(){
    for(int i=0; i<o.length; i++){
    o[i].setY(ELEMENT_EIGEN_SIZE);
  }
  }
  void goLeft(){
    for(int i=0; i<o.length; i++){
    o[i].setX(-ELEMENT_EIGEN_SIZE);
  }
  }
  void goRight(){
    for(int i=0; i<o.length; i++){
    o[i].setX(ELEMENT_EIGEN_SIZE);
  }
  }
  int getLength(){return o.length;}
  
  boolean stopTetromino(int y){
    return y == 460;
  }
  
  EigenRect[] getTetromino(){return this.o;}
  
  int getX(){
  return o[0].getX();
  }
}
