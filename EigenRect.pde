class EigenRect {
  private int x;
  private int y;

  public EigenRect(int x, int y) {
    this.x=x;
    this.y=y;
  }

  void setX(int newX) {
    this.x=getX()+newX;
  }

  void setY(int newY) {
    this.y=getY()+newY;
  }

  int getX() {
    return this.x;
  }
  int getY() {
    return this.y;
  }
  int getSize() {
    int ELEMENT_EIGEN_SIZE=20;
    return ELEMENT_EIGEN_SIZE;
  }
}
