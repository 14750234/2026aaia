// week09-4 好玩的程式設計(用陣列 for迴圈, 畫很多氣球)
// 修改自week09-3 好玩的程式設計(氣球會變大)
PImage img;// 宣告變數 圖
void setup() { // 設定的函式(做一次)
  size(600, 500);// 設定視窗大小
  img = loadImage("balloon.png");// 讀入圖片
}// 要再手動把圖檔拉進程式裡
float[] x = new float[200]; // Java 陣列 x座標
float[] y = new float[200]; // Java 陣列 y座標
float[] s = new float[200]; // Java 陣列 s氣球的大小
int N = 0;// 現在有幾個氣球
float  s2 = 0.1; // 一開始mouse壓下去時的氣球大小
void draw() {
  background(#FFFFF2);
  for(int i=0; i<N; i++){//用for迴圈畫N個氣球
    image(img, x[i],y[i],96*s[i], 132*s[i]);// 不同座標大小
    if(y[i]>0) y[i]--;//氣球往上飛
  }
  if (mousePressed){
    s2 = s2*1.02;
    image(img, mouseX-96/2*s2, mouseY-132*s2, 96*s2, 132*s2);
  }else s2=0.1;
}
void mouseReleased(){ // mouse放開時 氣球設定好 往上飛
  x[N] = mouseX-96/2*s2;// 設新氣球座標
  y[N] = mouseY-132*s2;// 設新氣球座標
  s[N] = s2;// 設新氣球大小
  N++;// 確認增加一個氣球
}
