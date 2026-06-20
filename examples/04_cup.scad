// ===== 例題4: ペン立て（コップ型）=====
// 外側の円柱から内側をくり抜いて、入れ物を作ります。

outer_r = 35;   // 外側の半径(mm)
wall    = 4;    // かべのあつさ(mm)
height  = 90;   // たかさ(mm)
bottom  = 5;    // 底のあつさ(mm)

$fn = 120;

difference() {
  cylinder(r = outer_r, h = height);                       // 外側
  translate([0, 0, bottom])                                // 底を残して
    cylinder(r = outer_r - wall, h = height);              // 内側をくり抜く
}
