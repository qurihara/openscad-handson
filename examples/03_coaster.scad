// ===== 例題3: コースター =====
// 丸い土台に、ふちのリング（こぼれ防止）をつけます。
// difference()は「引き算」。大きい円柱から小さい円柱をくり抜きます。

radius = 45;   // コースターの半径(mm)
height = 6;    // ぜんたいのたかさ(mm)
rim    = 4;    // ふちの太さ(mm)
depth  = 3;    // へこみのふかさ(mm)

$fn = 100;     // 円のなめらかさ（大きいほどなめらか）

difference() {
  cylinder(r = radius, h = height);                 // 土台
  translate([0, 0, height - depth])                 // 上から
    cylinder(r = radius - rim, h = depth + 1);      // 内側をくり抜く
}
