int [][] board;
final int rows = 25;
final int cols = 15;
boolean rotate = true;
int x;
int y;
final int WINDOW_HEIGHT=500;
final int BOARD_FRAME_WIDTH= 300;
final int ELEMENT_EIGEN_SIZE=20;
Tetromino_O o = new Tetromino_O(x,y);

void setup() {
  size(500, 500);
  board = new int[rows][cols];
  frameRate(3);
  x=y=0;
}

void draw() {

  drawGameBoardFrame();
  drawSetupFrame();
  fill(0);
  o.drawTetrominoO();
  o.goDown();
  if (o.stopTetromino(y)) {
    updateBoard(o);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      if (o.getX()!=0) {
        o.goLeft();
      }
    } else if (keyCode == RIGHT) {
      if (o.getX()!=BOARD_FRAME_WIDTH) {
        o.goRight();
      }
    } else if (key == 'r') {
      rotate = true;
    }
  }
}



void drawGameBoardFrame() {
  //left frame
  fill(255);
  rect(0, 0, BOARD_FRAME_WIDTH, WINDOW_HEIGHT);

  stroke(245);
  //Draw vertical lines
  for (int c = 0; c < cols; c++) {
    line(c*20, 0, c*20, WINDOW_HEIGHT);
  }
  //Draw horizontal lines
  for (int r = 0; r < rows; r++) {
    line(0, r*20, BOARD_FRAME_WIDTH, r*20);
  }
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      if(board[row][col] == 1){
           print("true");
          rect(row,col,ELEMENT_EIGEN_SIZE,ELEMENT_EIGEN_SIZE);
      };
    }
  }
}

void drawSetupFrame() {
  //main frame
  fill(92, 99, 235);
  rect(BOARD_FRAME_WIDTH, 0, 200, WINDOW_HEIGHT);
  //next window
  fill(255);
  rect(350, 20, 100, 100);
  text("NEXT", 385, 140);
}

void updateBoard(Tetromino_O tetromino){
  EigenRect[] form = tetromino.getTetromino();
  for(int i=0; i< tetromino.getLength(); i++){
    int x = form[i].getX();
    int y = form[i].getY();
    board[x][y] = 1;
  }
}
