var x1 , >= -21.474146 , <= 85.586129   ; 
var x2 , >= -67.325955 , <= 41.216674   ; 
var x3 , >= -24.717417 , <= 19.233712   ; 
var x4 , >= -7.708235 , <= 92.212733   ; 
var x5 , >= -52.821341 , <= 27.245906   ; 
var x6 , >= -46.893008 , <= 65.295501   ; 
var x7 , >= -41.626379 , <= 59.487756   ; 
var x8 , >= -81.948561 , <= 11.707959   ; 
var x9 , >= -58.668690 , <= 69.183224   ; 
var x10 , >= -71.647132 , <= 25.157985   ; 
var x11 , >= -60.938734 , <= 72.484105   ; 
var x12 , >= -23.882012 , <= 63.888801   ; 
var x13 , >= -39.396603 , <= 10.554378   ; 
var x14 , >= -11.633406 , <= 60.731486   ; 
var x15 , >= -42.777876 , <= 43.219486   ; 
var x16 , >= -70.067988 , <= 88.098944   ; 
var x17 , >= -69.603276 , <= 70.994744   ; 
var x18 , >= -78.646880 , <= 37.709508   ; 
var x19 , <= 70.927419   ; 
var x20 , >= -68.636388 , <= 48.131908   ; 
var x21 , >= -32.553880 , <= 85.792040   ; 
var x22 , >= -75.270669   ; 
var x23 , >= -82.660189 , <= 3.755495   ; 
var x24 , >= -93.776440 , <= 64.418662   ; 
var x25 , >= -94.417793 , <= 15.185617   ; 
var x26 , >= -17.427177 , <= 44.863245   ; 
var x27 , >= -63.511236 , <= 17.826232   ; 
var x28 , >= -32.244801 , <= 69.086800   ; 
var x29 , >= -17.394156   ; 
var x30 , >= -35.010332 , <= 63.427042   ; 
var x31 , >= -93.960648 , <= 15.038167   ; 
var x32 , >= -21.169372 , <= 95.273189   ; 
var x33 , >= -24.307994 , <= 17.981259   ; 
# End of variable declarations 
maximize obj: 0  +( -99.654307 * x1 )  +( 13.779156 * x2 )  +( -15.386581 * x3 )  +( 47.495027 * x4 )  +( -87.803813 * x5 )  +( 42.677959 * x6 )  +( -64.519895 * x7 )  +( 99.529317 * x8 )  +( -78.093078 * x9 )  +( 94.278314 * x10 )  +( 3.818654 * x11 )  +( -97.904172 * x12 )  +( -98.062192 * x13 )  +( -39.842529 * x14 )  +( 85.251395 * x15 )  +( -87.664514 * x16 )  +( 40.646574 * x17 )  +( 52.859934 * x18 )  +( 14.159349 * x19 )  +( 74.170451 * x20 )  +( 18.074775 * x21 )  +( -4.533791 * x22 )  +( 76.751270 * x23 )  +( 45.200701 * x24 )  +( -12.305003 * x25 )  +( 49.040597 * x26 )  +( -95.533600 * x27 )  +( 89.994451 * x28 )  +( 91.220624 * x29 )  +( -51.610401 * x30 )  +( 72.871749 * x31 )  +( -60.103574 * x32 )  +( -39.890755 * x33 ) ; 
consLB0:  (76.658459 * x1) + (32.848215 * x2) + (-24.741194 * x3) + (-89.456007 * x4) + (-34.895272 * x5) + (54.214462 * x6) + (23.140328 * x7) + (-71.194566 * x8) + (-15.765372 * x9) + (-46.072603 * x10) + (55.652328 * x11) + (97.026625 * x12) + (-72.184041 * x13) + (-60.837709 * x14) + (23.014364 * x15) + (16.957145 * x16) + (-33.339573 * x17) + (-61.921804 * x18) + (40.899162 * x19) + (58.774932 * x20) + (52.194083 * x21) + (-23.295675 * x22) + (81.804859 * x23) + (-33.970944 * x24) + (-78.472832 * x25) + (38.554624 * x26) + (-18.875329 * x27) + (74.948853 * x28) + (39.939565 * x29) + (-95.670155 * x30) + (74.548052 * x31) + (-89.283448 * x32) + (10.485425 * x33)  >= -56.682973 ; 
consUB0:  (76.658459 * x1) + (32.848215 * x2) + (-24.741194 * x3) + (-89.456007 * x4) + (-34.895272 * x5) + (54.214462 * x6) + (23.140328 * x7) + (-71.194566 * x8) + (-15.765372 * x9) + (-46.072603 * x10) + (55.652328 * x11) + (97.026625 * x12) + (-72.184041 * x13) + (-60.837709 * x14) + (23.014364 * x15) + (16.957145 * x16) + (-33.339573 * x17) + (-61.921804 * x18) + (40.899162 * x19) + (58.774932 * x20) + (52.194083 * x21) + (-23.295675 * x22) + (81.804859 * x23) + (-33.970944 * x24) + (-78.472832 * x25) + (38.554624 * x26) + (-18.875329 * x27) + (74.948853 * x28) + (39.939565 * x29) + (-95.670155 * x30) + (74.548052 * x31) + (-89.283448 * x32) + (10.485425 * x33)  <= 98.521331 ; 
consLB1:  (-6.936806 * x1) + (26.805786 * x2) + (-25.401729 * x3) + (-16.014252 * x4) + (-65.403969 * x5) + (-86.927657 * x6) + (-30.586355 * x7) + (-30.658934 * x8) + (-91.751717 * x9) + (-27.805238 * x10) + (77.673855 * x11) + (30.303200 * x12) + (36.513232 * x13) + (-7.913676 * x14) + (-76.566948 * x15) + (-29.834370 * x16) + (68.722221 * x17) + (-83.011942 * x18) + (47.705723 * x19) + (-37.038297 * x20) + (11.680623 * x21) + (-83.130512 * x22) + (-93.946100 * x23) + (-45.481033 * x24) + (-63.313761 * x25) + (42.144883 * x26) + (69.119898 * x27) + (-1.948322 * x28) + (-69.855794 * x29) + (41.380290 * x30) + (-48.425959 * x31) + (-71.047670 * x32) + (63.852469 * x33)  >= -96.473291 ; 
consUB1:  (-6.936806 * x1) + (26.805786 * x2) + (-25.401729 * x3) + (-16.014252 * x4) + (-65.403969 * x5) + (-86.927657 * x6) + (-30.586355 * x7) + (-30.658934 * x8) + (-91.751717 * x9) + (-27.805238 * x10) + (77.673855 * x11) + (30.303200 * x12) + (36.513232 * x13) + (-7.913676 * x14) + (-76.566948 * x15) + (-29.834370 * x16) + (68.722221 * x17) + (-83.011942 * x18) + (47.705723 * x19) + (-37.038297 * x20) + (11.680623 * x21) + (-83.130512 * x22) + (-93.946100 * x23) + (-45.481033 * x24) + (-63.313761 * x25) + (42.144883 * x26) + (69.119898 * x27) + (-1.948322 * x28) + (-69.855794 * x29) + (41.380290 * x30) + (-48.425959 * x31) + (-71.047670 * x32) + (63.852469 * x33)  <= 62.438717 ; 
consLB2:  (63.142756 * x1) + (-93.110907 * x2) + (-52.737823 * x3) + (-12.761888 * x4) + (-58.895901 * x5) + (64.895547 * x6) + (-57.719532 * x7) + (24.291289 * x8) + (-2.409742 * x9) + (-67.809081 * x10) + (-56.642126 * x11) + (-29.790724 * x12) + (-53.278664 * x13) + (-36.226483 * x14) + (-51.318464 * x15) + (-5.007678 * x16) + (63.999944 * x17) + (-95.026825 * x18) + (-92.507218 * x19) + (82.214580 * x20) + (72.683948 * x21) + (18.709871 * x22) + (-98.496010 * x23) + (60.341487 * x24) + (14.657215 * x25) + (-7.197560 * x26) + (82.243782 * x27) + (61.318650 * x28) + (89.046171 * x29) + (-30.424596 * x30) + (19.729920 * x31) + (97.380566 * x32) + (-2.096264 * x33)  >= -42.860066 ; 
consUB2:  (63.142756 * x1) + (-93.110907 * x2) + (-52.737823 * x3) + (-12.761888 * x4) + (-58.895901 * x5) + (64.895547 * x6) + (-57.719532 * x7) + (24.291289 * x8) + (-2.409742 * x9) + (-67.809081 * x10) + (-56.642126 * x11) + (-29.790724 * x12) + (-53.278664 * x13) + (-36.226483 * x14) + (-51.318464 * x15) + (-5.007678 * x16) + (63.999944 * x17) + (-95.026825 * x18) + (-92.507218 * x19) + (82.214580 * x20) + (72.683948 * x21) + (18.709871 * x22) + (-98.496010 * x23) + (60.341487 * x24) + (14.657215 * x25) + (-7.197560 * x26) + (82.243782 * x27) + (61.318650 * x28) + (89.046171 * x29) + (-30.424596 * x30) + (19.729920 * x31) + (97.380566 * x32) + (-2.096264 * x33)  <= 68.195589 ; 
consLB3:  (-24.901251 * x1) + (54.442298 * x2) + (-46.590468 * x3) + (-94.596684 * x4) + (-66.605104 * x5) + (22.364600 * x6) + (10.629790 * x7) + (-56.213153 * x8) + (32.835706 * x9) + (-51.672166 * x10) + (-49.511440 * x11) + (62.550182 * x12) + (34.331660 * x13) + (35.592340 * x14) + (-71.581966 * x15) + (71.909160 * x16) + (-43.988074 * x17) + (82.242344 * x18) + (-10.420241 * x19) + (-39.521541 * x20) + (84.759481 * x21) + (43.359044 * x22) + (-52.920733 * x23) + (31.445408 * x24) + (14.676299 * x25) + (-48.970257 * x26) + (-77.456778 * x27) + (90.590329 * x28) + (-74.588579 * x29) + (-25.887811 * x30) + (-84.962056 * x31) + (0.676394 * x32) + (-65.983910 * x33)  >= -44.996738 ; 
consUB3:  (-24.901251 * x1) + (54.442298 * x2) + (-46.590468 * x3) + (-94.596684 * x4) + (-66.605104 * x5) + (22.364600 * x6) + (10.629790 * x7) + (-56.213153 * x8) + (32.835706 * x9) + (-51.672166 * x10) + (-49.511440 * x11) + (62.550182 * x12) + (34.331660 * x13) + (35.592340 * x14) + (-71.581966 * x15) + (71.909160 * x16) + (-43.988074 * x17) + (82.242344 * x18) + (-10.420241 * x19) + (-39.521541 * x20) + (84.759481 * x21) + (43.359044 * x22) + (-52.920733 * x23) + (31.445408 * x24) + (14.676299 * x25) + (-48.970257 * x26) + (-77.456778 * x27) + (90.590329 * x28) + (-74.588579 * x29) + (-25.887811 * x30) + (-84.962056 * x31) + (0.676394 * x32) + (-65.983910 * x33)  <= 49.621344 ; 
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
 display x14; 
 display x15; 
 display x16; 
 display x17; 
 display x18; 
 display x19; 
 display x20; 
 display x21; 
 display x22; 
 display x23; 
 display x24; 
 display x25; 
 display x26; 
 display x27; 
 display x28; 
 display x29; 
 display x30; 
 display x31; 
 display x32; 
 display x33; 
 display obj; 
end; 
