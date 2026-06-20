// ===== 例題5: 六角形のペン立て（応用）=====
// $fn=6 にすると円柱が六角柱になります。形を変える練習です。

size   = 35;   // 六角形の大きさ(半径mm)
wall   = 4;    // かべのあつさ(mm)
height = 95;   // たかさ(mm)
bottom = 5;    // 底のあつさ(mm)

difference() {
  cylinder(r = size, h = height, $fn = 6);                 // 六角柱（外）
  translate([0, 0, bottom])
    cylinder(r = size - wall, h = height, $fn = 6);        // 六角柱（内）をくり抜く
}
