var x1 , >= -31.464599 , <= 75.609319   ; 
var x2 , >= -96.288125 , <= 6.065341   ; 
var x3 , >= -20.391649 , <= 43.414518   ; 
var x4 , >= -80.024770 , <= 92.336459   ; 
var x5 , >= -47.733073   ; 
var x6 , >= -96.865955 , <= 13.458388   ; 
var x7 , >= -96.814060 , <= 2.245980   ; 
var x8 , >= -92.490004 , <= 4.169902   ; 
var x9 , >= -95.617090 , <= 41.415954   ; 
var x10 , >= -83.330513 , <= 3.539038   ; 
var x11 , >= -56.009832 , <= 69.185014   ; 
var x12 , >= -22.155169 , <= 55.374935   ; 
var x13 , <= 1.161750   ; 
var x14 , >= -95.237493 , <= 93.476439   ; 
var x15 , <= 60.814985   ; 
var x16 , >= -51.583589 , <= 98.411980   ; 
var x17 , >= -0.629263 , <= 28.119917   ; 
var x18 , >= -83.516347 , <= 18.213977   ; 
var x19 , <= 54.793725   ; 
var x20 , >= -61.922473 , <= 59.338691   ; 
var x21 , >= -31.015784 , <= 21.329304   ; 
var x22 , <= 29.044469   ; 
var x23 , >= -56.925856 , <= 58.411705   ; 
var x24 , >= -69.480567 , <= 67.034201   ; 
# End of variable declarations 
maximize obj: 0  +( -58.813707 * x1 )  +( -64.208593 * x2 )  +( 6.158618 * x3 )  +( -72.961996 * x4 )  +( 21.654627 * x5 )  +( -51.362704 * x6 )  +( -99.866314 * x7 )  +( -56.632111 * x8 )  +( 54.266095 * x9 )  +( -94.188804 * x10 )  +( -99.512869 * x11 )  +( -30.252633 * x12 )  +( -81.940758 * x13 )  +( 16.059359 * x14 )  +( -65.093325 * x15 )  +( 18.698948 * x16 )  +( 55.660251 * x17 )  +( -16.151907 * x18 )  +( 63.207260 * x19 )  +( 5.758675 * x20 )  +( -71.487686 * x21 )  +( -16.741310 * x22 )  +( 6.952827 * x23 )  +( 5.620758 * x24 ) ; 
consLB0:  (-88.340062 * x1) + (31.480140 * x2) + (86.755552 * x3) + (-44.855214 * x4) + (-7.310424 * x5) + (-80.168798 * x6) + (-70.086635 * x7) + (-9.150453 * x8) + (65.957644 * x9) + (20.339376 * x10) + (12.680051 * x11) + (64.298275 * x12) + (66.390219 * x13) + (-58.284363 * x14) + (-45.183138 * x15) + (15.920793 * x16) + (-22.732966 * x17) + (88.410718 * x18) + (-23.935520 * x19) + (79.951352 * x20) + (99.482400 * x21) + (11.766690 * x22) + (82.338373 * x23) + (-57.955193 * x24)  >= -61.873632 ; 
consLB1:  (77.408844 * x1) + (17.656715 * x2) + (-8.046805 * x3) + (56.650855 * x4) + (45.902305 * x5) + (98.131652 * x6) + (-2.188100 * x7) + (61.384322 * x8) + (-32.967984 * x9) + (-73.715171 * x10) + (39.666798 * x11) + (-13.438364 * x12) + (-47.729497 * x13) + (37.751163 * x14) + (-78.688135 * x15) + (64.037525 * x16) + (70.240812 * x17) + (-83.955793 * x18) + (-68.437626 * x19) + (-17.145588 * x20) + (-8.584130 * x21) + (-97.500091 * x22) + (36.408328 * x23) + (-59.482186 * x24)  >= -77.797860 ; 
consUB1:  (77.408844 * x1) + (17.656715 * x2) + (-8.046805 * x3) + (56.650855 * x4) + (45.902305 * x5) + (98.131652 * x6) + (-2.188100 * x7) + (61.384322 * x8) + (-32.967984 * x9) + (-73.715171 * x10) + (39.666798 * x11) + (-13.438364 * x12) + (-47.729497 * x13) + (37.751163 * x14) + (-78.688135 * x15) + (64.037525 * x16) + (70.240812 * x17) + (-83.955793 * x18) + (-68.437626 * x19) + (-17.145588 * x20) + (-8.584130 * x21) + (-97.500091 * x22) + (36.408328 * x23) + (-59.482186 * x24)  <= 88.064335 ; 
consLB2:  (54.750225 * x1) + (18.259210 * x2) + (-85.293642 * x3) + (-3.432978 * x4) + (-91.926074 * x5) + (71.928477 * x6) + (-36.260251 * x7) + (-23.720674 * x8) + (90.793566 * x9) + (41.877292 * x10) + (-52.907875 * x11) + (1.710807 * x12) + (-73.746999 * x13) + (-20.737164 * x14) + (-20.663847 * x15) + (-22.154857 * x16) + (69.857667 * x17) + (42.629140 * x18) + (-85.551570 * x19) + (44.526650 * x20) + (-68.761815 * x21) + (16.263269 * x22) + (-57.335379 * x23) + (59.352862 * x24)  >= -73.517224 ; 
consUB2:  (54.750225 * x1) + (18.259210 * x2) + (-85.293642 * x3) + (-3.432978 * x4) + (-91.926074 * x5) + (71.928477 * x6) + (-36.260251 * x7) + (-23.720674 * x8) + (90.793566 * x9) + (41.877292 * x10) + (-52.907875 * x11) + (1.710807 * x12) + (-73.746999 * x13) + (-20.737164 * x14) + (-20.663847 * x15) + (-22.154857 * x16) + (69.857667 * x17) + (42.629140 * x18) + (-85.551570 * x19) + (44.526650 * x20) + (-68.761815 * x21) + (16.263269 * x22) + (-57.335379 * x23) + (59.352862 * x24)  <= 78.863332 ; 
consLB3:  (33.422689 * x1) + (-95.530731 * x2) + (-90.651082 * x3) + (-79.821953 * x4) + (83.929622 * x5) + (-42.260139 * x6) + (-4.341898 * x7) + (-86.159966 * x8) + (72.235128 * x9) + (-47.214394 * x10) + (81.246962 * x11) + (-86.198651 * x12) + (-48.811789 * x13) + (97.966990 * x14) + (21.527580 * x15) + (95.349813 * x16) + (48.244111 * x17) + (3.436910 * x18) + (84.224165 * x19) + (22.716179 * x20) + (-56.911601 * x21) + (78.934547 * x22) + (10.946721 * x23) + (45.944926 * x24)  >= -22.002995 ; 
consUB3:  (33.422689 * x1) + (-95.530731 * x2) + (-90.651082 * x3) + (-79.821953 * x4) + (83.929622 * x5) + (-42.260139 * x6) + (-4.341898 * x7) + (-86.159966 * x8) + (72.235128 * x9) + (-47.214394 * x10) + (81.246962 * x11) + (-86.198651 * x12) + (-48.811789 * x13) + (97.966990 * x14) + (21.527580 * x15) + (95.349813 * x16) + (48.244111 * x17) + (3.436910 * x18) + (84.224165 * x19) + (22.716179 * x20) + (-56.911601 * x21) + (78.934547 * x22) + (10.946721 * x23) + (45.944926 * x24)  <= 21.513974 ; 
consLB4:  (64.182701 * x1) + (-7.502837 * x2) + (-1.345089 * x3) + (-37.268198 * x4) + (-63.545728 * x5) + (-65.681041 * x6) + (73.237171 * x7) + (15.975932 * x8) + (59.877440 * x9) + (-71.343600 * x10) + (-16.346571 * x11) + (53.868046 * x12) + (33.781733 * x13) + (-26.747628 * x14) + (51.471731 * x15) + (46.457516 * x16) + (49.720967 * x17) + (-36.452235 * x18) + (29.083884 * x19) + (-20.557793 * x20) + (57.626110 * x21) + (-15.586319 * x22) + (-47.048280 * x23) + (9.164398 * x24)  >= -32.979544 ; 
consUB4:  (64.182701 * x1) + (-7.502837 * x2) + (-1.345089 * x3) + (-37.268198 * x4) + (-63.545728 * x5) + (-65.681041 * x6) + (73.237171 * x7) + (15.975932 * x8) + (59.877440 * x9) + (-71.343600 * x10) + (-16.346571 * x11) + (53.868046 * x12) + (33.781733 * x13) + (-26.747628 * x14) + (51.471731 * x15) + (46.457516 * x16) + (49.720967 * x17) + (-36.452235 * x18) + (29.083884 * x19) + (-20.557793 * x20) + (57.626110 * x21) + (-15.586319 * x22) + (-47.048280 * x23) + (9.164398 * x24)  <= 64.666997 ; 
consLB5:  (-67.655934 * x1) + (84.840858 * x2) + (19.078070 * x3) + (17.356155 * x4) + (12.761106 * x5) + (53.660404 * x6) + (90.303886 * x7) + (-66.933768 * x8) + (-98.624903 * x9) + (-97.238203 * x10) + (93.419356 * x11) + (53.550675 * x12) + (-38.108446 * x13) + (57.365693 * x14) + (-56.518720 * x15) + (84.978713 * x16) + (65.276311 * x17) + (22.770691 * x18) + (-1.184417 * x19) + (-95.023083 * x20) + (-44.570978 * x21) + (18.820124 * x22) + (99.241587 * x23) + (-82.184127 * x24)  >= -48.044167 ; 
consUB5:  (-67.655934 * x1) + (84.840858 * x2) + (19.078070 * x3) + (17.356155 * x4) + (12.761106 * x5) + (53.660404 * x6) + (90.303886 * x7) + (-66.933768 * x8) + (-98.624903 * x9) + (-97.238203 * x10) + (93.419356 * x11) + (53.550675 * x12) + (-38.108446 * x13) + (57.365693 * x14) + (-56.518720 * x15) + (84.978713 * x16) + (65.276311 * x17) + (22.770691 * x18) + (-1.184417 * x19) + (-95.023083 * x20) + (-44.570978 * x21) + (18.820124 * x22) + (99.241587 * x23) + (-82.184127 * x24)  <= 54.126613 ; 
consUB6:  (-55.401897 * x1) + (-24.552441 * x2) + (-41.002310 * x3) + (3.067606 * x4) + (31.815854 * x5) + (-3.496828 * x6) + (2.215466 * x7) + (51.586410 * x8) + (56.593852 * x9) + (9.208029 * x10) + (-39.255120 * x11) + (-81.426512 * x12) + (62.109802 * x13) + (10.724639 * x14) + (60.466498 * x15) + (-89.715319 * x16) + (19.989506 * x17) + (42.290467 * x18) + (52.351239 * x19) + (-55.236680 * x20) + (-48.982009 * x21) + (-90.918432 * x22) + (88.483424 * x23) + (-97.915203 * x24)  <= 55.690761 ; 
consLB7:  (-83.196306 * x1) + (-82.473501 * x2) + (81.712757 * x3) + (-1.631517 * x4) + (26.295466 * x5) + (21.371540 * x6) + (-58.165583 * x7) + (-99.245910 * x8) + (33.465662 * x9) + (6.727206 * x10) + (63.127752 * x11) + (46.286163 * x12) + (-50.599795 * x13) + (-38.951497 * x14) + (-99.747836 * x15) + (62.960017 * x16) + (-29.920087 * x17) + (-28.912430 * x18) + (55.067810 * x19) + (-79.062203 * x20) + (-37.477028 * x21) + (-6.997342 * x22) + (89.707650 * x23) + (99.152394 * x24)  >= -8.900631 ; 
consLB8:  (54.537998 * x1) + (99.832085 * x2) + (55.590350 * x3) + (-51.687643 * x4) + (-49.412999 * x5) + (6.391190 * x6) + (-0.930465 * x7) + (4.960647 * x8) + (27.279446 * x9) + (-78.605265 * x10) + (-22.271960 * x11) + (80.106793 * x12) + (41.539045 * x13) + (-93.558038 * x14) + (-56.764859 * x15) + (-44.446401 * x16) + (72.855411 * x17) + (-90.253137 * x18) + (54.104325 * x19) + (-4.991163 * x20) + (94.229870 * x21) + (-29.402377 * x22) + (-47.841928 * x23) + (-32.832893 * x24)  >= -71.520763 ; 
consUB8:  (54.537998 * x1) + (99.832085 * x2) + (55.590350 * x3) + (-51.687643 * x4) + (-49.412999 * x5) + (6.391190 * x6) + (-0.930465 * x7) + (4.960647 * x8) + (27.279446 * x9) + (-78.605265 * x10) + (-22.271960 * x11) + (80.106793 * x12) + (41.539045 * x13) + (-93.558038 * x14) + (-56.764859 * x15) + (-44.446401 * x16) + (72.855411 * x17) + (-90.253137 * x18) + (54.104325 * x19) + (-4.991163 * x20) + (94.229870 * x21) + (-29.402377 * x22) + (-47.841928 * x23) + (-32.832893 * x24)  <= 64.821609 ; 
consLB9:  (66.050157 * x1) + (93.056781 * x2) + (38.188395 * x3) + (-85.949896 * x4) + (30.408865 * x5) + (2.062849 * x6) + (23.986602 * x7) + (38.012694 * x8) + (-26.832930 * x9) + (12.685263 * x10) + (-80.983006 * x11) + (61.090327 * x12) + (-44.166009 * x13) + (-42.237211 * x14) + (-29.434023 * x15) + (-4.961889 * x16) + (-96.812553 * x17) + (-22.408621 * x18) + (-53.125491 * x19) + (-8.123709 * x20) + (-14.775163 * x21) + (-72.083915 * x22) + (4.846902 * x23) + (-6.481399 * x24)  >= -38.963812 ; 
consUB9:  (66.050157 * x1) + (93.056781 * x2) + (38.188395 * x3) + (-85.949896 * x4) + (30.408865 * x5) + (2.062849 * x6) + (23.986602 * x7) + (38.012694 * x8) + (-26.832930 * x9) + (12.685263 * x10) + (-80.983006 * x11) + (61.090327 * x12) + (-44.166009 * x13) + (-42.237211 * x14) + (-29.434023 * x15) + (-4.961889 * x16) + (-96.812553 * x17) + (-22.408621 * x18) + (-53.125491 * x19) + (-8.123709 * x20) + (-14.775163 * x21) + (-72.083915 * x22) + (4.846902 * x23) + (-6.481399 * x24)  <= 55.639507 ; 
consLB10:  (-61.138113 * x1) + (-87.456539 * x2) + (-20.663120 * x3) + (13.751904 * x4) + (36.763150 * x5) + (-99.128861 * x6) + (-27.718527 * x7) + (-56.784574 * x8) + (-5.604357 * x9) + (-91.899732 * x10) + (-99.751119 * x11) + (22.978626 * x12) + (-5.928276 * x13) + (59.549633 * x14) + (-87.923046 * x15) + (67.846052 * x16) + (-55.759107 * x17) + (46.147772 * x18) + (-61.381549 * x19) + (97.758299 * x20) + (-52.920862 * x21) + (24.786594 * x22) + (49.216791 * x23) + (-56.131822 * x24)  >= -95.026736 ; 
consUB10:  (-61.138113 * x1) + (-87.456539 * x2) + (-20.663120 * x3) + (13.751904 * x4) + (36.763150 * x5) + (-99.128861 * x6) + (-27.718527 * x7) + (-56.784574 * x8) + (-5.604357 * x9) + (-91.899732 * x10) + (-99.751119 * x11) + (22.978626 * x12) + (-5.928276 * x13) + (59.549633 * x14) + (-87.923046 * x15) + (67.846052 * x16) + (-55.759107 * x17) + (46.147772 * x18) + (-61.381549 * x19) + (97.758299 * x20) + (-52.920862 * x21) + (24.786594 * x22) + (49.216791 * x23) + (-56.131822 * x24)  <= 7.833083 ; 
consLB11:  (-53.389579 * x1) + (-3.152738 * x2) + (-79.924258 * x3) + (-97.566772 * x4) + (-82.095634 * x5) + (86.051636 * x6) + (-35.552636 * x7) + (-89.912364 * x8) + (45.678774 * x9) + (61.170795 * x10) + (20.458682 * x11) + (-18.028812 * x12) + (-46.128141 * x13) + (41.481306 * x14) + (-33.031966 * x15) + (91.357960 * x16) + (-21.961478 * x17) + (-32.229657 * x18) + (59.250868 * x19) + (-44.274181 * x20) + (-73.005748 * x21) + (6.847778 * x22) + (3.351072 * x23) + (37.647283 * x24)  >= -82.481209 ; 
consUB11:  (-53.389579 * x1) + (-3.152738 * x2) + (-79.924258 * x3) + (-97.566772 * x4) + (-82.095634 * x5) + (86.051636 * x6) + (-35.552636 * x7) + (-89.912364 * x8) + (45.678774 * x9) + (61.170795 * x10) + (20.458682 * x11) + (-18.028812 * x12) + (-46.128141 * x13) + (41.481306 * x14) + (-33.031966 * x15) + (91.357960 * x16) + (-21.961478 * x17) + (-32.229657 * x18) + (59.250868 * x19) + (-44.274181 * x20) + (-73.005748 * x21) + (6.847778 * x22) + (3.351072 * x23) + (37.647283 * x24)  <= 7.601385 ; 
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
 display obj; 
end; 
