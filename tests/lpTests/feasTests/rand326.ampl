var x1 , >= -95.145198 , <= 76.308286   ; 
var x2 , >= -50.343023 , <= 69.303391   ; 
var x3 , >= -41.170231 , <= 6.474928   ; 
var x4 , <= 67.831003   ; 
var x5 , >= -51.889208 , <= 91.820865   ; 
var x6 , >= -71.300461 , <= 45.333922   ; 
var x7 , >= -42.200803   ; 
var x8 , <= 74.040089   ; 
var x9 , >= -75.909841 , <= 34.057789   ; 
var x10 , >= -90.935006 , <= 54.528299   ; 
var x11 , >= -89.138791 , <= 82.928367   ; 
var x12 , >= -75.623035   ; 
var x13 , >= -54.252578 , <= 56.487656   ; 
var x14 , >= -1.459982 , <= 84.212293   ; 
var x15 , >= -50.120024 , <= 21.602579   ; 
var x16 , >= -73.957424 , <= 67.056221   ; 
var x17 , >= -50.969196 , <= 2.395065   ; 
var x18 , >= -61.533500 , <= 80.732860   ; 
var x19 , >= -73.828452 , <= 36.195166   ; 
var x20 , >= -4.587702 , <= 70.778213   ; 
var x21 , >= -27.486583   ; 
var x22 , >= -82.376964 , <= 24.253612   ; 
var x23 , >= -86.313078 , <= 36.445313   ; 
var x24 , >= -91.490056 , <= 63.263286   ; 
var x25 , >= -7.897590 , <= 48.266631   ; 
var x26 , >= -11.839815   ; 
var x27 , >= -70.126963 , <= 57.341611   ; 
var x28 , <= 75.769019   ; 
var x29 , >= -95.105161 , <= 37.805376   ; 
var x30 , >= -56.374764 , <= 86.267065   ; 
var x31 , >= -12.693535   ; 
var x32 , <= 69.726791   ; 
var x33 , >= -78.760582 , <= 98.343571   ; 
var x34 , >= -86.276282 , <= 5.788765   ; 
var x35 , >= -88.948753   ; 
var x36 , >= -79.577701 , <= 98.179319   ; 
var x37 , >= -8.613826 , <= 4.782607   ; 
var x38 , >= -77.821543 , <= 19.175768   ; 
var x39 , >= -79.564933 , <= 84.185285   ; 
var x40 , >= -30.707681 , <= 33.196464   ; 
var x41 , >= -45.554811 , <= 90.995346   ; 
var x42 , >= -66.221984   ; 
# End of variable declarations 
maximize obj: 0  +( 47.366761 * x1 )  +( -33.765094 * x2 )  +( -47.208418 * x3 )  +( 58.474321 * x4 )  +( -4.717912 * x5 )  +( -74.846203 * x6 )  +( 28.939287 * x7 )  +( 76.543018 * x8 )  +( 91.405844 * x9 )  +( 20.947270 * x10 )  +( -99.524144 * x11 )  +( -83.728841 * x12 )  +( 6.664428 * x13 )  +( 85.071422 * x14 )  +( 76.224001 * x15 )  +( -88.077831 * x16 )  +( -91.575946 * x17 )  +( 61.526750 * x18 )  +( 48.174299 * x19 )  +( -62.358709 * x20 )  +( 6.198629 * x21 )  +( 17.911276 * x22 )  +( -53.648882 * x23 )  +( 90.211548 * x24 )  +( 22.068830 * x25 )  +( 38.102719 * x26 )  +( -57.237761 * x27 )  +( 31.953534 * x28 )  +( -87.086246 * x29 )  +( 67.001265 * x30 )  +( 29.593023 * x31 )  +( -6.106934 * x32 )  +( -1.913809 * x33 )  +( -62.139501 * x34 )  +( 98.439394 * x35 )  +( 95.101502 * x36 )  +( 99.315844 * x37 )  +( 68.545331 * x38 )  +( -99.271404 * x39 )  +( -28.745784 * x40 )  +( 89.753092 * x41 )  +( -7.097256 * x42 ) ; 
consLB0:  (-38.533452 * x1) + (97.586019 * x2) + (2.145920 * x3) + (-71.240932 * x4) + (76.614838 * x5) + (-59.693847 * x6) + (-46.224170 * x7) + (-40.563308 * x8) + (66.903012 * x9) + (56.052618 * x10) + (15.191546 * x11) + (8.808872 * x12) + (46.511835 * x13) + (-10.876222 * x14) + (53.823671 * x15) + (61.603951 * x16) + (-56.765268 * x17) + (77.157422 * x18) + (-89.284312 * x19) + (64.875189 * x20) + (67.476738 * x21) + (-18.108722 * x22) + (-27.031533 * x23) + (-59.660239 * x24) + (51.447027 * x25) + (5.017498 * x26) + (55.793132 * x27) + (-59.144284 * x28) + (-11.568525 * x29) + (-49.555623 * x30) + (-58.347432 * x31) + (-49.030966 * x32) + (-92.990041 * x33) + (52.134615 * x34) + (90.821323 * x35) + (17.669754 * x36) + (-30.951986 * x37) + (27.858367 * x38) + (54.408907 * x39) + (12.816726 * x40) + (-73.591583 * x41) + (-51.435881 * x42)  >= -33.768994 ; 
consUB0:  (-38.533452 * x1) + (97.586019 * x2) + (2.145920 * x3) + (-71.240932 * x4) + (76.614838 * x5) + (-59.693847 * x6) + (-46.224170 * x7) + (-40.563308 * x8) + (66.903012 * x9) + (56.052618 * x10) + (15.191546 * x11) + (8.808872 * x12) + (46.511835 * x13) + (-10.876222 * x14) + (53.823671 * x15) + (61.603951 * x16) + (-56.765268 * x17) + (77.157422 * x18) + (-89.284312 * x19) + (64.875189 * x20) + (67.476738 * x21) + (-18.108722 * x22) + (-27.031533 * x23) + (-59.660239 * x24) + (51.447027 * x25) + (5.017498 * x26) + (55.793132 * x27) + (-59.144284 * x28) + (-11.568525 * x29) + (-49.555623 * x30) + (-58.347432 * x31) + (-49.030966 * x32) + (-92.990041 * x33) + (52.134615 * x34) + (90.821323 * x35) + (17.669754 * x36) + (-30.951986 * x37) + (27.858367 * x38) + (54.408907 * x39) + (12.816726 * x40) + (-73.591583 * x41) + (-51.435881 * x42)  <= 10.621574 ; 
consLB1:  (-80.300967 * x1) + (-14.179812 * x2) + (-6.615972 * x3) + (63.638814 * x4) + (96.408701 * x5) + (-70.069520 * x6) + (64.263065 * x7) + (5.233478 * x8) + (24.642812 * x9) + (26.814921 * x10) + (-56.759112 * x11) + (49.329624 * x12) + (30.013766 * x13) + (74.083718 * x14) + (-37.247656 * x15) + (54.697850 * x16) + (63.337774 * x17) + (-35.755140 * x18) + (92.504973 * x19) + (78.860989 * x20) + (1.862015 * x21) + (-50.452269 * x22) + (-78.040184 * x23) + (-93.747173 * x24) + (32.095809 * x25) + (-23.239091 * x26) + (11.272338 * x27) + (-30.282472 * x28) + (22.616261 * x29) + (43.691593 * x30) + (-82.064839 * x31) + (-67.792649 * x32) + (-14.079132 * x33) + (52.887688 * x34) + (27.345862 * x35) + (79.014766 * x36) + (44.358013 * x37) + (-91.710948 * x38) + (-55.328766 * x39) + (88.252583 * x40) + (-5.142444 * x41) + (-88.442943 * x42)  >= -1.635378 ; 
consLB2:  (-17.266959 * x1) + (62.829884 * x2) + (14.709533 * x3) + (13.481866 * x4) + (-63.136377 * x5) + (63.245328 * x6) + (85.725812 * x7) + (12.439796 * x8) + (44.061668 * x9) + (-52.359480 * x10) + (22.118938 * x11) + (-30.330648 * x12) + (42.233243 * x13) + (-47.642566 * x14) + (-30.678985 * x15) + (-63.400861 * x16) + (-21.630302 * x17) + (-90.516829 * x18) + (63.344759 * x19) + (22.164238 * x20) + (55.356530 * x21) + (52.425402 * x22) + (-14.614564 * x23) + (30.685145 * x24) + (-10.485349 * x25) + (-10.549398 * x26) + (62.027868 * x27) + (89.275223 * x28) + (-0.638115 * x29) + (89.467227 * x30) + (-88.866510 * x31) + (-23.165788 * x32) + (-74.513008 * x33) + (13.405442 * x34) + (-53.659706 * x35) + (36.546949 * x36) + (-52.484929 * x37) + (5.716348 * x38) + (73.839844 * x39) + (75.633362 * x40) + (13.200964 * x41) + (29.294988 * x42)  >= -43.317619 ; 
consUB2:  (-17.266959 * x1) + (62.829884 * x2) + (14.709533 * x3) + (13.481866 * x4) + (-63.136377 * x5) + (63.245328 * x6) + (85.725812 * x7) + (12.439796 * x8) + (44.061668 * x9) + (-52.359480 * x10) + (22.118938 * x11) + (-30.330648 * x12) + (42.233243 * x13) + (-47.642566 * x14) + (-30.678985 * x15) + (-63.400861 * x16) + (-21.630302 * x17) + (-90.516829 * x18) + (63.344759 * x19) + (22.164238 * x20) + (55.356530 * x21) + (52.425402 * x22) + (-14.614564 * x23) + (30.685145 * x24) + (-10.485349 * x25) + (-10.549398 * x26) + (62.027868 * x27) + (89.275223 * x28) + (-0.638115 * x29) + (89.467227 * x30) + (-88.866510 * x31) + (-23.165788 * x32) + (-74.513008 * x33) + (13.405442 * x34) + (-53.659706 * x35) + (36.546949 * x36) + (-52.484929 * x37) + (5.716348 * x38) + (73.839844 * x39) + (75.633362 * x40) + (13.200964 * x41) + (29.294988 * x42)  <= 18.063806 ; 
consUB3:  (54.051977 * x1) + (-41.791578 * x2) + (13.630339 * x3) + (-42.844647 * x4) + (-16.024047 * x5) + (-89.045777 * x6) + (54.875419 * x7) + (27.210031 * x8) + (74.958103 * x9) + (-28.548789 * x10) + (8.408096 * x11) + (2.414934 * x12) + (62.607202 * x13) + (-96.843052 * x14) + (28.906275 * x15) + (-34.661653 * x16) + (-36.538804 * x17) + (19.979074 * x18) + (-41.785977 * x19) + (-99.963632 * x20) + (-24.760643 * x21) + (51.109641 * x22) + (78.171252 * x23) + (-10.778703 * x24) + (-41.796275 * x25) + (30.340983 * x26) + (-86.521406 * x27) + (73.478638 * x28) + (4.029628 * x29) + (-86.335861 * x30) + (-60.003363 * x31) + (2.229787 * x32) + (30.998541 * x33) + (67.879818 * x34) + (35.810004 * x35) + (-48.115893 * x36) + (-8.745833 * x37) + (-12.325644 * x38) + (-25.445120 * x39) + (21.933682 * x40) + (-46.093979 * x41) + (98.699315 * x42)  <= 87.199449 ; 
consLB4:  (46.077604 * x1) + (-50.500531 * x2) + (69.150428 * x3) + (-97.661340 * x4) + (82.250860 * x5) + (40.046530 * x6) + (-78.841650 * x7) + (-20.127827 * x8) + (-59.863031 * x9) + (-92.218470 * x10) + (54.729357 * x11) + (68.593103 * x12) + (-34.306220 * x13) + (-7.114683 * x14) + (91.732962 * x15) + (-27.817467 * x16) + (34.531816 * x17) + (91.600154 * x18) + (32.878927 * x19) + (-2.522376 * x20) + (-11.859359 * x21) + (-55.207245 * x22) + (-71.271321 * x23) + (-1.983648 * x24) + (91.422026 * x25) + (4.583561 * x26) + (77.057143 * x27) + (32.842646 * x28) + (-92.163631 * x29) + (88.727420 * x30) + (3.299699 * x31) + (51.583506 * x32) + (90.151120 * x33) + (-31.466063 * x34) + (64.099149 * x35) + (-68.541176 * x36) + (26.464696 * x37) + (76.234879 * x38) + (3.754107 * x39) + (9.475787 * x40) + (-37.719440 * x41) + (-2.025838 * x42)  >= -84.189300 ; 
consUB4:  (46.077604 * x1) + (-50.500531 * x2) + (69.150428 * x3) + (-97.661340 * x4) + (82.250860 * x5) + (40.046530 * x6) + (-78.841650 * x7) + (-20.127827 * x8) + (-59.863031 * x9) + (-92.218470 * x10) + (54.729357 * x11) + (68.593103 * x12) + (-34.306220 * x13) + (-7.114683 * x14) + (91.732962 * x15) + (-27.817467 * x16) + (34.531816 * x17) + (91.600154 * x18) + (32.878927 * x19) + (-2.522376 * x20) + (-11.859359 * x21) + (-55.207245 * x22) + (-71.271321 * x23) + (-1.983648 * x24) + (91.422026 * x25) + (4.583561 * x26) + (77.057143 * x27) + (32.842646 * x28) + (-92.163631 * x29) + (88.727420 * x30) + (3.299699 * x31) + (51.583506 * x32) + (90.151120 * x33) + (-31.466063 * x34) + (64.099149 * x35) + (-68.541176 * x36) + (26.464696 * x37) + (76.234879 * x38) + (3.754107 * x39) + (9.475787 * x40) + (-37.719440 * x41) + (-2.025838 * x42)  <= 54.107427 ; 
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
 display x34; 
 display x35; 
 display x36; 
 display x37; 
 display x38; 
 display x39; 
 display x40; 
 display x41; 
 display x42; 
 display obj; 
end; 
