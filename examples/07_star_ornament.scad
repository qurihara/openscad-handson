// ===== 例題7: 星のオーナメント（自由制作のヒント）=====
// 2つの三角形を重ねて六芒星に。linear_extrudeで厚みをつけます。
// ひも穴つきなので、ひもを通して飾れます。

size = 50;   // 星の大きさ(mm)
$fn  = 40;

difference() {
  linear_extrude(height = 4) {           // あつさ4mm
    union() {
      circle(r = size/2, $fn = 3);                 // 三角形1
      rotate(180) circle(r = size/2, $fn = 3);     // 三角形2（180度回転）
    }
  }
  // ひも穴
  translate([0, size/2 - 3, -1]) cylinder(r = 2.5, h = 6);
}
