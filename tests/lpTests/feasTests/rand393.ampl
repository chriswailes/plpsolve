var x1 , >= -48.473874 , <= 39.311292   ; 
var x2 , >= -67.150848 , <= 15.612307   ; 
var x3 , >= -57.761811 , <= 33.526494   ; 
var x4 , >= -62.427204 , <= 78.377546   ; 
var x5 , >= -16.775050 , <= 11.496792   ; 
var x6 , >= -89.040918 , <= 68.630299   ; 
var x7 , >= -28.375752 , <= 67.191357   ; 
var x8 , >= -40.944356 , <= 13.967632   ; 
var x9 , >= -29.056706 , <= 85.984650   ; 
var x10 , >= -85.198292 , <= 2.834671   ; 
var x11 , >= -70.215643   ; 
var x12 , >= -58.625361 , <= 20.901391   ; 
var x13 , >= -61.123923 , <= 36.592107   ; 
# End of variable declarations 
maximize obj: 0  +( 14.890079 * x1 )  +( -51.358267 * x2 )  +( -64.754023 * x3 )  +( 49.230942 * x4 )  +( -18.443938 * x5 )  +( -69.388174 * x6 )  +( -93.109009 * x7 )  +( -76.246239 * x8 )  +( -96.988602 * x9 )  +( -98.359393 * x10 )  +( 12.089964 * x11 )  +( 90.575635 * x12 )  +( 53.572990 * x13 ) ; 
consLB0:  (95.561490 * x1) + (-4.644088 * x2) + (19.516018 * x3) + (-84.723147 * x4) + (-86.804348 * x5) + (-56.304109 * x6) + (11.828918 * x7) + (16.554738 * x8) + (66.998904 * x9) + (-96.804327 * x10) + (-89.697393 * x11) + (-16.878032 * x12) + (-55.162389 * x13)  >= -44.687279 ; 
consUB0:  (95.561490 * x1) + (-4.644088 * x2) + (19.516018 * x3) + (-84.723147 * x4) + (-86.804348 * x5) + (-56.304109 * x6) + (11.828918 * x7) + (16.554738 * x8) + (66.998904 * x9) + (-96.804327 * x10) + (-89.697393 * x11) + (-16.878032 * x12) + (-55.162389 * x13)  <= 75.143910 ; 
consLB1:  (32.188112 * x1) + (-92.996837 * x2) + (-71.822171 * x3) + (63.325216 * x4) + (-83.833937 * x5) + (48.785870 * x6) + (-64.450401 * x7) + (41.246921 * x8) + (-28.765884 * x9) + (96.479290 * x10) + (42.564514 * x11) + (-20.588639 * x12) + (-83.751893 * x13)  >= -38.988474 ; 
consUB1:  (32.188112 * x1) + (-92.996837 * x2) + (-71.822171 * x3) + (63.325216 * x4) + (-83.833937 * x5) + (48.785870 * x6) + (-64.450401 * x7) + (41.246921 * x8) + (-28.765884 * x9) + (96.479290 * x10) + (42.564514 * x11) + (-20.588639 * x12) + (-83.751893 * x13)  <= 81.631849 ; 
consLB2:  (-69.212519 * x1) + (-80.437714 * x2) + (13.115104 * x3) + (-14.218787 * x4) + (90.089175 * x5) + (-3.959224 * x6) + (38.733675 * x7) + (-85.780295 * x8) + (-25.803478 * x9) + (91.060662 * x10) + (-8.667984 * x11) + (-36.206015 * x12) + (33.653159 * x13)  >= -83.057980 ; 
consUB2:  (-69.212519 * x1) + (-80.437714 * x2) + (13.115104 * x3) + (-14.218787 * x4) + (90.089175 * x5) + (-3.959224 * x6) + (38.733675 * x7) + (-85.780295 * x8) + (-25.803478 * x9) + (91.060662 * x10) + (-8.667984 * x11) + (-36.206015 * x12) + (33.653159 * x13)  <= 32.869870 ; 
consUB3:  (74.947890 * x1) + (53.313046 * x2) + (54.980594 * x3) + (-5.690425 * x4) + (-6.622920 * x5) + (45.815630 * x6) + (-64.117597 * x7) + (27.845917 * x8) + (12.071282 * x9) + (38.778162 * x10) + (-12.053680 * x11) + (84.876257 * x12) + (44.715227 * x13)  <= 42.966720 ; 
 solve; 
 display x1; 
 display x2; 
 display x3; 
 display x4; 
 display x5; 
 display x6; 
 display x7; 
 display x8; 
 display x9; 
 display x10; 
 display x11; 
 display x12; 
 display x13; 
 display obj; 
end; 
