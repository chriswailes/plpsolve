var x1 , <= 37.727602   ; 
var x2 , >= -92.548690 , <= 76.505882   ; 
var x3 , >= -17.664539 , <= 33.131847   ; 
var x4 , <= 8.016835   ; 
var x5 , >= -89.780023 , <= 52.406874   ; 
var x6 , >= -62.033291   ; 
var x7 , >= -37.901789   ; 
var x8 , >= -17.810587 , <= 39.482543   ; 
var x9 , >= -75.215650 , <= 2.359673   ; 
var x10 , >= -0.701719 , <= 95.042777   ; 
var x11 , >= -10.073543 , <= 48.559016   ; 
var x12 , >= -28.087055   ; 
var x13 , >= -29.351684 , <= 85.181836   ; 
var x14 , >= -69.736529   ; 
var x15 , >= -77.123877 , <= 5.702914   ; 
var x16 , >= -65.893518 , <= 31.200792   ; 
var x17 , >= -87.838741 , <= 84.933734   ; 
var x18 , >= -7.678345 , <= 39.291358   ; 
var x19 , >= -85.675002 , <= 80.854769   ; 
var x20 , >= -41.399523 , <= 15.679104   ; 
var x21 , >= -32.415877 , <= 33.923425   ; 
var x22 , >= -85.610400 , <= 42.531700   ; 
var x23 , >= -26.172956 , <= 3.221233   ; 
var x24 , >= -21.486894   ; 
var x25 , >= -35.199592 , <= 50.665450   ; 
var x26 , >= -6.082505 , <= 17.812821   ; 
var x27 , >= -84.023646 , <= 19.517873   ; 
var x28 , >= -76.056114 , <= 61.286492   ; 
var x29 , >= -83.922320 , <= 41.904172   ; 
var x30 , >= -32.445127 , <= 41.477354   ; 
var x31 , >= -33.642811 , <= 29.825835   ; 
var x32 , >= -89.912777 , <= 79.367764   ; 
var x33 , >= -78.089291 , <= 59.864117   ; 
var x34 , <= 22.448045   ; 
var x35 , >= -63.538699 , <= 45.527228   ; 
var x36 , >= -19.744589   ; 
var x37 , <= 89.529150   ; 
var x38 , >= -57.995291 , <= 37.292901   ; 
var x39 , <= 5.003401   ; 
var x40 , <= 51.311515   ; 
var x41 , >= -93.647560 , <= 45.666725   ; 
var x42 , >= -47.550255 , <= 14.485259   ; 
var x43 , >= -78.640507   ; 
var x44 , <= 96.794643   ; 
var x45 , >= -38.248598 , <= 54.440128   ; 
var x46 , >= -28.974610 , <= 92.995586   ; 
var x47 , >= -53.153221   ; 
var x48 , >= -52.344143 , <= 33.427398   ; 
var x49 , >= -9.394654 , <= 29.151248   ; 
var x50 , >= -68.869454 , <= 31.769811   ; 
var x51 , >= -56.664008   ; 
var x52 , >= -70.822784 , <= 41.932274   ; 
var x53 , >= -66.163085 , <= 19.277332   ; 
var x54 , >= -45.996217   ; 
# End of variable declarations 
maximize obj: 0  +( -70.364858 * x1 )  +( 89.985027 * x2 )  +( -29.317479 * x3 )  +( 72.079419 * x4 )  +( 3.540091 * x5 )  +( 33.521360 * x6 )  +( -28.327471 * x7 )  +( 8.130760 * x8 )  +( 66.903983 * x9 )  +( -34.439326 * x10 )  +( -99.326164 * x11 )  +( -44.475399 * x12 )  +( -11.814127 * x13 )  +( -28.725419 * x14 )  +( 91.031550 * x15 )  +( 0.372206 * x16 )  +( 86.947713 * x17 )  +( 69.155460 * x18 )  +( 36.382673 * x19 )  +( -62.314788 * x20 )  +( -39.578389 * x21 )  +( 35.741458 * x22 )  +( -64.243605 * x23 )  +( -10.321534 * x24 )  +( 28.538282 * x25 )  +( 30.720535 * x26 )  +( -68.491908 * x27 )  +( 52.966691 * x28 )  +( 24.518068 * x29 )  +( -7.154887 * x30 )  +( -34.752132 * x31 )  +( -25.220989 * x32 )  +( 84.655595 * x33 )  +( -62.815125 * x34 )  +( 78.557915 * x35 )  +( 14.096148 * x36 )  +( -55.917641 * x37 )  +( -59.943423 * x38 )  +( 38.647643 * x39 )  +( -19.244233 * x40 )  +( -64.580130 * x41 )  +( 77.816660 * x42 )  +( 61.085409 * x43 )  +( -62.295223 * x44 )  +( 40.315953 * x45 )  +( 21.030409 * x46 )  +( -40.090112 * x47 )  +( -99.538802 * x48 )  +( -48.509961 * x49 )  +( -39.089469 * x50 )  +( 97.926737 * x51 )  +( -46.634642 * x52 )  +( -27.673760 * x53 )  +( -51.956155 * x54 ) ; 
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
 display x43; 
 display x44; 
 display x45; 
 display x46; 
 display x47; 
 display x48; 
 display x49; 
 display x50; 
 display x51; 
 display x52; 
 display x53; 
 display x54; 
 display obj; 
end; 
