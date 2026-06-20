// ===== 例題6: キーホルダー =====
// 角丸プレート＋ひも穴＋文字。hull()で角を丸めます。

tag_w = 60;   // よこ(mm)
tag_d = 24;   // たて(mm)
tag_h = 4;    // あつさ(mm)
r     = 6;    // 角の丸み(mm)
$fn   = 60;

difference() {
  // 角丸プレート：4すみに円柱を置いてhull()で包む
  hull() {
    translate([r,       r,       0]) cylinder(r=r, h=tag_h);
    translate([tag_w-r, r,       0]) cylinder(r=r, h=tag_h);
    translate([r,       tag_d-r, 0]) cylinder(r=r, h=tag_h);
    translate([tag_w-r, tag_d-r, 0]) cylinder(r=r, h=tag_h);
  }
  // ひもを通す穴
  translate([9, tag_d/2, -1]) cylinder(r=3, h=tag_h+2);
}

// 文字を乗せる
translate([20, 7, tag_h])
  linear_extrude(height = 1.5)
    text("KEY", size = 10, font = "Liberation Sans:style=Bold");
