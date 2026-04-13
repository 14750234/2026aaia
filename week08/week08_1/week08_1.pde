// week08-1 好玩的程式設計 黑白棋
// F-Preference 字型放很大
size(620, 620);
background(#E8BF73); //背景色
for(int i=0; i<10; i++){//左手i 高度y
  for(int j=0; j<10; j++){ //右手j 高度x
    int x = 10 + j * 60, y = 10 + i * 60; //小心 j i
    fill(#E8BF73); //填充色彩
    strokeWeight(2); // 線條的粗細
    rect(x, y, 60, 60); //正方形
  }
}
