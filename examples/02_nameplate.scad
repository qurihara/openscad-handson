// ===== 例題2: ネームプレート =====
// 土台のプレートに、自分の名前を浮き出させます。
// quote("")の中の文字を、自分の名前に書きかえてください。

plate_w = 80;   // プレートのよこ幅(mm)
plate_d = 30;   // プレートのおくゆき(mm)
plate_h = 4;    // プレートのあつさ(mm)

// 土台プレート
cube([plate_w, plate_d, plate_h]);

// 文字を上に乗せる
translate([6, 9, plate_h])           // 文字の位置（左下から）
  linear_extrude(height = 2)         // 文字のあつみ(mm)
    text("TARO", size = 12, font = "Liberation Sans:style=Bold");
