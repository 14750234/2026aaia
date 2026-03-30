// week06-2 好玩的程式設計,拖曳畫面時, 後面的格子會慢慢變淡
// 修改自week05-2 好玩的程式設計 兩層for(迴圈) 配合if .. else if .. else
void setup() {
  size(800,500); //視窗大小 800 x 500
}
int [][] a = new int[10][16];// Java的陣列寫法,跟C/C++不同
void mousePressed(){ // mouse拖曳時時,執行這段
  int i = mouseY/50, j = mouseX/50; // 計算i,j座標
  a[i][j] = 120; // 數字變大了 試試60(1秒)再試試120(2秒)
}
void draw() {
  background(255);
  for (int i=0; i<10; i++){ // 上週是 for y 現在改成 for i 左手 i
    for (int j=0; j<16; j++){  // 上週是 for x 現在改成 for j 右手 j
      if (a[i][j] > 0 ){
        fill(#5DFF1F, a[i][j]*4); // 若陣列有值,設綠色
        a[i][j]--;
      }else fill(255); // 沒有值,設白色
      rect( j*50, i*50, 50, 50); // 畫四邊形
    
    }
  }
}
