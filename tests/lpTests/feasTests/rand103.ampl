var x1 , >= -9.054154 , <= 3.808159   ; 
var x2 , >= -24.407322 , <= 50.317295   ; 
var x3 , >= -9.461152 , <= 85.837000   ; 
var x4 , >= -99.994734 , <= 94.667915   ; 
var x5 , >= -29.454717 , <= 91.924966   ; 
var x6 , >= -37.589330 , <= 20.824082   ; 
var x7 , <= 9.468493   ; 
var x8 , >= -38.650325 , <= 98.076574   ; 
var x9 , >= -2.756994 , <= 93.469217   ; 
var x10 , >= -79.718679 , <= 1.591613   ; 
var x11 , >= -86.871834 , <= 93.360835   ; 
var x12 , >= -24.659548 , <= 80.030384   ; 
var x13 , >= -59.119449 , <= 31.472372   ; 
var x14 , >= -47.740069   ; 
var x15 , >= -18.992654 , <= 36.918614   ; 
var x16 , >= -26.344433 , <= 77.276123   ; 
var x17 , >= -61.933669 , <= 80.434278   ; 
var x18 , >= -31.921910   ; 
var x19 , >= -95.473765 , <= 91.736821   ; 
var x20 , <= 43.626980   ; 
var x21 , >= -90.221213 , <= 76.978319   ; 
var x22 , <= 17.282738   ; 
var x23 , >= -52.581332   ; 
var x24 , >= -16.364211 , <= 7.056512   ; 
var x25 , >= -3.523548 , <= 40.752765   ; 
var x26 , >= -43.120394 , <= 1.446099   ; 
var x27 , >= -43.864824 , <= 82.358898   ; 
var x28 , >= -89.110514   ; 
var x29 , >= -53.272070 , <= 20.237061   ; 
var x30 , >= -2.968877 , <= 1.177093   ; 
var x31 , >= -46.453540 , <= 92.646561   ; 
var x32 , >= -6.932371 , <= 94.781333   ; 
var x33 , >= -16.385734   ; 
var x34 , <= 83.513862   ; 
var x35 , >= -18.519334 , <= 17.934550   ; 
var x36 , >= -91.754427 , <= 57.444640   ; 
var x37   ; 
var x38 , >= -34.957145 , <= 68.146494   ; 
var x39 , >= -35.879181 , <= 60.523427   ; 
var x40 , >= -6.689209 , <= 56.768206   ; 
var x41 , >= -1.531101 , <= 70.830463   ; 
var x42 , >= -78.617980 , <= 59.932617   ; 
var x43 , >= -35.833915 , <= 3.824980   ; 
# End of variable declarations 
maximize obj: 0  +( -57.924019 * x1 )  +( 88.185568 * x2 )  +( 51.006712 * x3 )  +( -95.256808 * x4 )  +( 93.780112 * x5 )  +( 95.855685 * x6 )  +( 69.630277 * x7 )  +( -16.110126 * x8 )  +( 45.884776 * x9 )  +( -33.959857 * x10 )  +( -99.400498 * x11 )  +( -60.342283 * x12 )  +( -68.019024 * x13 )  +( -97.468571 * x14 )  +( 53.907255 * x15 )  +( -17.216810 * x16 )  +( 37.907026 * x17 )  +( 49.995895 * x18 )  +( -50.311242 * x19 )  +( -38.083800 * x20 )  +( 78.657598 * x21 )  +( -69.045381 * x22 )  +( 24.210561 * x23 )  +( -56.211844 * x24 )  +( -88.277275 * x25 )  +( -58.262934 * x26 )  +( -84.588045 * x27 )  +( 74.617625 * x28 )  +( 1.458119 * x29 )  +( 15.339086 * x30 )  +( 40.659690 * x31 )  +( 60.377589 * x32 )  +( -24.382130 * x33 )  +( -80.787166 * x34 )  +( -18.989746 * x35 )  +( 59.329128 * x36 )  +( 68.333834 * x37 )  +( -88.172569 * x38 )  +( -60.371324 * x39 )  +( -82.633003 * x40 )  +( 33.954318 * x41 )  +( -38.313807 * x42 )  +( 34.002679 * x43 ) ; 
consLB0:  (68.855914 * x1) + (69.234684 * x2) + (-32.185858 * x3) + (-60.244781 * x4) + (-25.479841 * x5) + (-10.994315 * x6) + (-3.891297 * x7) + (46.361076 * x8) + (-46.533741 * x9) + (-30.141668 * x10) + (-50.927756 * x11) + (70.703155 * x12) + (-3.423291 * x13) + (80.428482 * x14) + (-41.862219 * x15) + (-47.424274 * x16) + (9.444886 * x17) + (-55.983492 * x18) + (-27.995955 * x19) + (-83.006073 * x20) + (38.985179 * x21) + (-16.360774 * x22) + (8.183461 * x23) + (-87.834422 * x24) + (81.230825 * x25) + (-49.091062 * x26) + (-61.468159 * x27) + (-59.488195 * x28) + (-30.867255 * x29) + (73.719856 * x30) + (46.191929 * x31) + (-94.898878 * x32) + (-2.971338 * x33) + (-75.428322 * x34) + (77.589762 * x35) + (47.826645 * x36) + (79.620761 * x37) + (-71.924688 * x38) + (-71.556596 * x39) + (1.771970 * x40) + (72.664923 * x41) + (24.993283 * x42) + (-40.126739 * x43)  >= -2.449782 ; 
consUB0:  (68.855914 * x1) + (69.234684 * x2) + (-32.185858 * x3) + (-60.244781 * x4) + (-25.479841 * x5) + (-10.994315 * x6) + (-3.891297 * x7) + (46.361076 * x8) + (-46.533741 * x9) + (-30.141668 * x10) + (-50.927756 * x11) + (70.703155 * x12) + (-3.423291 * x13) + (80.428482 * x14) + (-41.862219 * x15) + (-47.424274 * x16) + (9.444886 * x17) + (-55.983492 * x18) + (-27.995955 * x19) + (-83.006073 * x20) + (38.985179 * x21) + (-16.360774 * x22) + (8.183461 * x23) + (-87.834422 * x24) + (81.230825 * x25) + (-49.091062 * x26) + (-61.468159 * x27) + (-59.488195 * x28) + (-30.867255 * x29) + (73.719856 * x30) + (46.191929 * x31) + (-94.898878 * x32) + (-2.971338 * x33) + (-75.428322 * x34) + (77.589762 * x35) + (47.826645 * x36) + (79.620761 * x37) + (-71.924688 * x38) + (-71.556596 * x39) + (1.771970 * x40) + (72.664923 * x41) + (24.993283 * x42) + (-40.126739 * x43)  <= 65.254843 ; 
consLB1:  (-97.732944 * x1) + (-66.857036 * x2) + (-11.081257 * x3) + (-94.537726 * x4) + (-26.454693 * x5) + (79.594115 * x6) + (-36.131243 * x7) + (71.448039 * x8) + (-54.284108 * x9) + (-32.218959 * x10) + (35.761319 * x11) + (-27.792308 * x12) + (-34.374607 * x13) + (40.341794 * x14) + (-37.312159 * x15) + (-92.984460 * x16) + (-8.610942 * x17) + (-12.959926 * x18) + (-71.564773 * x19) + (50.033162 * x20) + (-59.161597 * x21) + (88.304808 * x22) + (26.830722 * x23) + (-24.922564 * x24) + (-23.602314 * x25) + (60.704183 * x26) + (-27.220024 * x27) + (4.473957 * x28) + (-78.869070 * x29) + (8.711718 * x30) + (-73.429177 * x31) + (94.936851 * x32) + (21.682777 * x33) + (-29.399501 * x34) + (33.973696 * x35) + (43.741509 * x36) + (-97.015463 * x37) + (-36.320840 * x38) + (-35.639110 * x39) + (-90.580618 * x40) + (-63.049503 * x41) + (-50.382576 * x42) + (-23.407314 * x43)  >= -85.687880 ; 
consUB1:  (-97.732944 * x1) + (-66.857036 * x2) + (-11.081257 * x3) + (-94.537726 * x4) + (-26.454693 * x5) + (79.594115 * x6) + (-36.131243 * x7) + (71.448039 * x8) + (-54.284108 * x9) + (-32.218959 * x10) + (35.761319 * x11) + (-27.792308 * x12) + (-34.374607 * x13) + (40.341794 * x14) + (-37.312159 * x15) + (-92.984460 * x16) + (-8.610942 * x17) + (-12.959926 * x18) + (-71.564773 * x19) + (50.033162 * x20) + (-59.161597 * x21) + (88.304808 * x22) + (26.830722 * x23) + (-24.922564 * x24) + (-23.602314 * x25) + (60.704183 * x26) + (-27.220024 * x27) + (4.473957 * x28) + (-78.869070 * x29) + (8.711718 * x30) + (-73.429177 * x31) + (94.936851 * x32) + (21.682777 * x33) + (-29.399501 * x34) + (33.973696 * x35) + (43.741509 * x36) + (-97.015463 * x37) + (-36.320840 * x38) + (-35.639110 * x39) + (-90.580618 * x40) + (-63.049503 * x41) + (-50.382576 * x42) + (-23.407314 * x43)  <= 55.198588 ; 
consLB2:  (39.874242 * x1) + (-96.387183 * x2) + (96.682773 * x3) + (77.505176 * x4) + (37.392281 * x5) + (-70.474644 * x6) + (82.830922 * x7) + (-54.165971 * x8) + (-32.185373 * x9) + (-93.278511 * x10) + (10.394103 * x11) + (76.297047 * x12) + (-53.394510 * x13) + (-71.422430 * x14) + (-33.649572 * x15) + (20.937639 * x16) + (-32.747473 * x17) + (-80.223914 * x18) + (-83.282298 * x19) + (49.927930 * x20) + (40.073508 * x21) + (19.969971 * x22) + (52.503753 * x23) + (69.695693 * x24) + (97.895260 * x25) + (-70.864095 * x26) + (-31.004520 * x27) + (-14.049929 * x28) + (18.162408 * x29) + (2.008882 * x30) + (-50.761818 * x31) + (12.038950 * x32) + (80.895075 * x33) + (45.076904 * x34) + (-96.271852 * x35) + (43.802138 * x36) + (-96.258378 * x37) + (18.672446 * x38) + (-12.877224 * x39) + (-38.959002 * x40) + (-2.514931 * x41) + (-34.359678 * x42) + (42.796428 * x43)  >= -13.614930 ; 
consUB2:  (39.874242 * x1) + (-96.387183 * x2) + (96.682773 * x3) + (77.505176 * x4) + (37.392281 * x5) + (-70.474644 * x6) + (82.830922 * x7) + (-54.165971 * x8) + (-32.185373 * x9) + (-93.278511 * x10) + (10.394103 * x11) + (76.297047 * x12) + (-53.394510 * x13) + (-71.422430 * x14) + (-33.649572 * x15) + (20.937639 * x16) + (-32.747473 * x17) + (-80.223914 * x18) + (-83.282298 * x19) + (49.927930 * x20) + (40.073508 * x21) + (19.969971 * x22) + (52.503753 * x23) + (69.695693 * x24) + (97.895260 * x25) + (-70.864095 * x26) + (-31.004520 * x27) + (-14.049929 * x28) + (18.162408 * x29) + (2.008882 * x30) + (-50.761818 * x31) + (12.038950 * x32) + (80.895075 * x33) + (45.076904 * x34) + (-96.271852 * x35) + (43.802138 * x36) + (-96.258378 * x37) + (18.672446 * x38) + (-12.877224 * x39) + (-38.959002 * x40) + (-2.514931 * x41) + (-34.359678 * x42) + (42.796428 * x43)  <= 97.842473 ; 
consLB3:  (98.883259 * x1) + (-0.794579 * x2) + (4.428970 * x3) + (19.094701 * x4) + (51.283096 * x5) + (50.444880 * x6) + (56.407853 * x7) + (-62.952497 * x8) + (-69.112336 * x9) + (81.864339 * x10) + (83.546866 * x11) + (76.100218 * x12) + (-12.626239 * x13) + (84.837828 * x14) + (42.718263 * x15) + (68.245001 * x16) + (-31.411362 * x17) + (-61.847911 * x18) + (-93.163100 * x19) + (-33.961220 * x20) + (49.518877 * x21) + (11.531426 * x22) + (-58.495597 * x23) + (68.763615 * x24) + (22.987078 * x25) + (87.288860 * x26) + (-19.943549 * x27) + (-26.073503 * x28) + (78.389635 * x29) + (-19.666419 * x30) + (21.843648 * x31) + (67.042278 * x32) + (-58.283504 * x33) + (51.487144 * x34) + (-59.255395 * x35) + (97.953044 * x36) + (28.137168 * x37) + (-90.852960 * x38) + (76.478822 * x39) + (21.692615 * x40) + (-0.177118 * x41) + (-7.518375 * x42) + (74.045929 * x43)  >= -23.407898 ; 
consUB3:  (98.883259 * x1) + (-0.794579 * x2) + (4.428970 * x3) + (19.094701 * x4) + (51.283096 * x5) + (50.444880 * x6) + (56.407853 * x7) + (-62.952497 * x8) + (-69.112336 * x9) + (81.864339 * x10) + (83.546866 * x11) + (76.100218 * x12) + (-12.626239 * x13) + (84.837828 * x14) + (42.718263 * x15) + (68.245001 * x16) + (-31.411362 * x17) + (-61.847911 * x18) + (-93.163100 * x19) + (-33.961220 * x20) + (49.518877 * x21) + (11.531426 * x22) + (-58.495597 * x23) + (68.763615 * x24) + (22.987078 * x25) + (87.288860 * x26) + (-19.943549 * x27) + (-26.073503 * x28) + (78.389635 * x29) + (-19.666419 * x30) + (21.843648 * x31) + (67.042278 * x32) + (-58.283504 * x33) + (51.487144 * x34) + (-59.255395 * x35) + (97.953044 * x36) + (28.137168 * x37) + (-90.852960 * x38) + (76.478822 * x39) + (21.692615 * x40) + (-0.177118 * x41) + (-7.518375 * x42) + (74.045929 * x43)  <= 56.737543 ; 
consLB4:  (-60.886108 * x1) + (24.254344 * x2) + (-8.635001 * x3) + (-89.019228 * x4) + (68.292217 * x5) + (-94.485617 * x6) + (-46.890093 * x7) + (-76.880144 * x8) + (51.357557 * x9) + (92.086700 * x10) + (75.801078 * x11) + (-87.112219 * x12) + (-29.724901 * x13) + (-55.797649 * x14) + (-82.133788 * x15) + (46.021665 * x16) + (54.695392 * x17) + (32.146082 * x18) + (-58.232803 * x19) + (50.071097 * x20) + (-61.035513 * x21) + (10.131837 * x22) + (37.795483 * x23) + (-1.519890 * x24) + (-84.520778 * x25) + (-90.017864 * x26) + (76.483182 * x27) + (65.739901 * x28) + (-32.324066 * x29) + (82.126209 * x30) + (52.790628 * x31) + (80.785794 * x32) + (-93.940028 * x33) + (-98.781685 * x34) + (2.822259 * x35) + (-13.086886 * x36) + (10.951545 * x37) + (88.447086 * x38) + (-11.699033 * x39) + (77.043490 * x40) + (70.298237 * x41) + (-13.539327 * x42) + (-97.533114 * x43)  >= -3.544190 ; 
consUB4:  (-60.886108 * x1) + (24.254344 * x2) + (-8.635001 * x3) + (-89.019228 * x4) + (68.292217 * x5) + (-94.485617 * x6) + (-46.890093 * x7) + (-76.880144 * x8) + (51.357557 * x9) + (92.086700 * x10) + (75.801078 * x11) + (-87.112219 * x12) + (-29.724901 * x13) + (-55.797649 * x14) + (-82.133788 * x15) + (46.021665 * x16) + (54.695392 * x17) + (32.146082 * x18) + (-58.232803 * x19) + (50.071097 * x20) + (-61.035513 * x21) + (10.131837 * x22) + (37.795483 * x23) + (-1.519890 * x24) + (-84.520778 * x25) + (-90.017864 * x26) + (76.483182 * x27) + (65.739901 * x28) + (-32.324066 * x29) + (82.126209 * x30) + (52.790628 * x31) + (80.785794 * x32) + (-93.940028 * x33) + (-98.781685 * x34) + (2.822259 * x35) + (-13.086886 * x36) + (10.951545 * x37) + (88.447086 * x38) + (-11.699033 * x39) + (77.043490 * x40) + (70.298237 * x41) + (-13.539327 * x42) + (-97.533114 * x43)  <= 2.339875 ; 
consLB5:  (-56.150511 * x1) + (32.368917 * x2) + (75.497410 * x3) + (3.655248 * x4) + (-63.669393 * x5) + (-58.094462 * x6) + (26.139252 * x7) + (32.869721 * x8) + (-90.158484 * x9) + (-56.998795 * x10) + (-53.928038 * x11) + (25.647920 * x12) + (97.843141 * x13) + (-10.647146 * x14) + (61.943435 * x15) + (45.984787 * x16) + (-86.057287 * x17) + (-42.512446 * x18) + (-34.913738 * x19) + (-86.267354 * x20) + (-54.100562 * x21) + (-5.909196 * x22) + (89.364220 * x23) + (-17.445743 * x24) + (-46.388056 * x25) + (-94.194071 * x26) + (-55.808698 * x27) + (-27.887627 * x28) + (95.711216 * x29) + (-91.916318 * x30) + (24.957895 * x31) + (37.806558 * x32) + (39.922477 * x33) + (-43.776802 * x34) + (-88.591846 * x35) + (49.210572 * x36) + (57.120315 * x37) + (82.167347 * x38) + (-47.702798 * x39) + (-27.258176 * x40) + (-55.102455 * x41) + (28.530130 * x42) + (-52.106943 * x43)  >= -71.992179 ; 
consUB5:  (-56.150511 * x1) + (32.368917 * x2) + (75.497410 * x3) + (3.655248 * x4) + (-63.669393 * x5) + (-58.094462 * x6) + (26.139252 * x7) + (32.869721 * x8) + (-90.158484 * x9) + (-56.998795 * x10) + (-53.928038 * x11) + (25.647920 * x12) + (97.843141 * x13) + (-10.647146 * x14) + (61.943435 * x15) + (45.984787 * x16) + (-86.057287 * x17) + (-42.512446 * x18) + (-34.913738 * x19) + (-86.267354 * x20) + (-54.100562 * x21) + (-5.909196 * x22) + (89.364220 * x23) + (-17.445743 * x24) + (-46.388056 * x25) + (-94.194071 * x26) + (-55.808698 * x27) + (-27.887627 * x28) + (95.711216 * x29) + (-91.916318 * x30) + (24.957895 * x31) + (37.806558 * x32) + (39.922477 * x33) + (-43.776802 * x34) + (-88.591846 * x35) + (49.210572 * x36) + (57.120315 * x37) + (82.167347 * x38) + (-47.702798 * x39) + (-27.258176 * x40) + (-55.102455 * x41) + (28.530130 * x42) + (-52.106943 * x43)  <= 56.523817 ; 
consLB6:  (46.453585 * x1) + (-98.961259 * x2) + (-91.501199 * x3) + (-27.822409 * x4) + (79.751041 * x5) + (88.698231 * x6) + (-93.448196 * x7) + (-68.829879 * x8) + (-4.010680 * x9) + (62.118601 * x10) + (78.373079 * x11) + (-94.502216 * x12) + (-97.864482 * x13) + (3.803596 * x14) + (95.056691 * x15) + (-37.354612 * x16) + (-39.087158 * x17) + (-48.782391 * x18) + (20.940911 * x19) + (-98.664632 * x20) + (54.163671 * x21) + (-56.013031 * x22) + (8.570545 * x23) + (76.942520 * x24) + (61.764750 * x25) + (22.514900 * x26) + (58.868400 * x27) + (88.089763 * x28) + (91.622376 * x29) + (67.806449 * x30) + (-71.766013 * x31) + (31.576973 * x32) + (-60.486499 * x33) + (-57.329051 * x34) + (-6.262199 * x35) + (-27.833588 * x36) + (42.390485 * x37) + (19.491678 * x38) + (-82.274459 * x39) + (-42.287956 * x40) + (-72.071810 * x41) + (-56.785540 * x42) + (16.996280 * x43)  >= -47.770131 ; 
consUB7:  (-63.472337 * x1) + (-77.617597 * x2) + (54.523037 * x3) + (-49.595363 * x4) + (16.216792 * x5) + (-72.806423 * x6) + (-97.621864 * x7) + (31.517352 * x8) + (-79.462686 * x9) + (-65.720045 * x10) + (-87.136529 * x11) + (67.211954 * x12) + (-52.027666 * x13) + (45.814498 * x14) + (-1.105662 * x15) + (64.347508 * x16) + (-27.122585 * x17) + (74.791036 * x18) + (29.717200 * x19) + (58.497252 * x20) + (-66.650364 * x21) + (-90.697921 * x22) + (-92.199338 * x23) + (52.968352 * x24) + (60.917425 * x25) + (-39.256084 * x26) + (-8.146336 * x27) + (-57.172309 * x28) + (83.008444 * x29) + (-78.170497 * x30) + (67.094556 * x31) + (95.412379 * x32) + (92.767443 * x33) + (25.146329 * x34) + (-3.050926 * x35) + (1.962410 * x36) + (-29.356417 * x37) + (-89.009617 * x38) + (-65.884850 * x39) + (68.828355 * x40) + (-37.651261 * x41) + (31.408813 * x42) + (54.062045 * x43)  <= 17.120576 ; 
consLB8:  (-76.438022 * x1) + (88.031400 * x2) + (85.988108 * x3) + (-28.180474 * x4) + (-58.399958 * x5) + (-36.833585 * x6) + (-92.747911 * x7) + (-24.726197 * x8) + (-98.165867 * x9) + (-46.294296 * x10) + (96.029861 * x11) + (-42.340257 * x12) + (-69.120153 * x13) + (-66.929431 * x14) + (9.388539 * x15) + (51.687582 * x16) + (-48.799962 * x17) + (38.819107 * x18) + (-11.605730 * x19) + (91.555966 * x20) + (90.406786 * x21) + (-9.856103 * x22) + (95.888222 * x23) + (81.395808 * x24) + (-0.801909 * x25) + (87.222235 * x26) + (34.587038 * x27) + (94.500120 * x28) + (-47.264047 * x29) + (98.955248 * x30) + (-94.789900 * x31) + (-77.312175 * x32) + (-57.774856 * x33) + (1.519852 * x34) + (-81.805864 * x35) + (35.613577 * x36) + (95.514499 * x37) + (-33.229825 * x38) + (-80.800466 * x39) + (-17.315119 * x40) + (-28.652200 * x41) + (42.839475 * x42) + (59.487515 * x43)  >= -10.516853 ; 
consUB8:  (-76.438022 * x1) + (88.031400 * x2) + (85.988108 * x3) + (-28.180474 * x4) + (-58.399958 * x5) + (-36.833585 * x6) + (-92.747911 * x7) + (-24.726197 * x8) + (-98.165867 * x9) + (-46.294296 * x10) + (96.029861 * x11) + (-42.340257 * x12) + (-69.120153 * x13) + (-66.929431 * x14) + (9.388539 * x15) + (51.687582 * x16) + (-48.799962 * x17) + (38.819107 * x18) + (-11.605730 * x19) + (91.555966 * x20) + (90.406786 * x21) + (-9.856103 * x22) + (95.888222 * x23) + (81.395808 * x24) + (-0.801909 * x25) + (87.222235 * x26) + (34.587038 * x27) + (94.500120 * x28) + (-47.264047 * x29) + (98.955248 * x30) + (-94.789900 * x31) + (-77.312175 * x32) + (-57.774856 * x33) + (1.519852 * x34) + (-81.805864 * x35) + (35.613577 * x36) + (95.514499 * x37) + (-33.229825 * x38) + (-80.800466 * x39) + (-17.315119 * x40) + (-28.652200 * x41) + (42.839475 * x42) + (59.487515 * x43)  <= 92.186379 ; 
consLB9:  (3.021390 * x1) + (-46.803041 * x2) + (-89.088870 * x3) + (21.923364 * x4) + (19.753248 * x5) + (-94.700731 * x6) + (49.274661 * x7) + (89.533570 * x8) + (-57.305276 * x9) + (53.600547 * x10) + (-38.688519 * x11) + (-42.965761 * x12) + (-62.539662 * x13) + (3.910057 * x14) + (-83.558341 * x15) + (80.499912 * x16) + (29.452121 * x17) + (-77.041130 * x18) + (-33.590892 * x19) + (-66.573856 * x20) + (78.502783 * x21) + (-22.396381 * x22) + (-96.685255 * x23) + (89.051324 * x24) + (5.599367 * x25) + (-26.359668 * x26) + (55.876885 * x27) + (32.263424 * x28) + (88.949498 * x29) + (57.220863 * x30) + (27.482047 * x31) + (76.171080 * x32) + (25.226740 * x33) + (-34.544721 * x34) + (80.288935 * x35) + (28.035859 * x36) + (-83.693204 * x37) + (43.320260 * x38) + (96.190301 * x39) + (-70.560892 * x40) + (75.971500 * x41) + (-85.516215 * x42) + (-4.326909 * x43)  >= -24.133961 ; 
consUB9:  (3.021390 * x1) + (-46.803041 * x2) + (-89.088870 * x3) + (21.923364 * x4) + (19.753248 * x5) + (-94.700731 * x6) + (49.274661 * x7) + (89.533570 * x8) + (-57.305276 * x9) + (53.600547 * x10) + (-38.688519 * x11) + (-42.965761 * x12) + (-62.539662 * x13) + (3.910057 * x14) + (-83.558341 * x15) + (80.499912 * x16) + (29.452121 * x17) + (-77.041130 * x18) + (-33.590892 * x19) + (-66.573856 * x20) + (78.502783 * x21) + (-22.396381 * x22) + (-96.685255 * x23) + (89.051324 * x24) + (5.599367 * x25) + (-26.359668 * x26) + (55.876885 * x27) + (32.263424 * x28) + (88.949498 * x29) + (57.220863 * x30) + (27.482047 * x31) + (76.171080 * x32) + (25.226740 * x33) + (-34.544721 * x34) + (80.288935 * x35) + (28.035859 * x36) + (-83.693204 * x37) + (43.320260 * x38) + (96.190301 * x39) + (-70.560892 * x40) + (75.971500 * x41) + (-85.516215 * x42) + (-4.326909 * x43)  <= 31.261722 ; 
consLB10:  (52.112724 * x1) + (-70.673283 * x2) + (15.233082 * x3) + (-16.976510 * x4) + (-67.256166 * x5) + (15.092568 * x6) + (12.613781 * x7) + (-9.998435 * x8) + (-0.660973 * x9) + (-96.856249 * x10) + (47.536126 * x11) + (4.786904 * x12) + (3.599793 * x13) + (52.993340 * x14) + (16.487015 * x15) + (59.023395 * x16) + (-93.462549 * x17) + (-99.760752 * x18) + (55.237097 * x19) + (79.144721 * x20) + (-50.311543 * x21) + (-55.132268 * x22) + (66.308193 * x23) + (-69.556211 * x24) + (-83.650152 * x25) + (95.896821 * x26) + (-31.149378 * x27) + (-49.214244 * x28) + (83.935024 * x29) + (9.933523 * x30) + (2.980406 * x31) + (-91.692940 * x32) + (80.672428 * x33) + (-53.773841 * x34) + (26.675690 * x35) + (-37.631386 * x36) + (-18.620783 * x37) + (-12.243796 * x38) + (-33.712180 * x39) + (-36.458595 * x40) + (-44.990894 * x41) + (-22.503317 * x42) + (63.968110 * x43)  >= -75.368770 ; 
consUB10:  (52.112724 * x1) + (-70.673283 * x2) + (15.233082 * x3) + (-16.976510 * x4) + (-67.256166 * x5) + (15.092568 * x6) + (12.613781 * x7) + (-9.998435 * x8) + (-0.660973 * x9) + (-96.856249 * x10) + (47.536126 * x11) + (4.786904 * x12) + (3.599793 * x13) + (52.993340 * x14) + (16.487015 * x15) + (59.023395 * x16) + (-93.462549 * x17) + (-99.760752 * x18) + (55.237097 * x19) + (79.144721 * x20) + (-50.311543 * x21) + (-55.132268 * x22) + (66.308193 * x23) + (-69.556211 * x24) + (-83.650152 * x25) + (95.896821 * x26) + (-31.149378 * x27) + (-49.214244 * x28) + (83.935024 * x29) + (9.933523 * x30) + (2.980406 * x31) + (-91.692940 * x32) + (80.672428 * x33) + (-53.773841 * x34) + (26.675690 * x35) + (-37.631386 * x36) + (-18.620783 * x37) + (-12.243796 * x38) + (-33.712180 * x39) + (-36.458595 * x40) + (-44.990894 * x41) + (-22.503317 * x42) + (63.968110 * x43)  <= 45.420499 ; 
consUB11:  (16.224019 * x1) + (-38.706535 * x2) + (62.455551 * x3) + (-22.645631 * x4) + (31.975339 * x5) + (88.387786 * x6) + (87.436577 * x7) + (77.334425 * x8) + (-76.231334 * x9) + (34.447158 * x10) + (-61.873778 * x11) + (-64.634975 * x12) + (-2.262835 * x13) + (-76.945335 * x14) + (-7.683234 * x15) + (47.556488 * x16) + (71.811511 * x17) + (-31.889053 * x18) + (32.592748 * x19) + (-8.455961 * x20) + (37.800417 * x21) + (83.981963 * x22) + (-71.946510 * x23) + (15.188758 * x24) + (48.409957 * x25) + (-9.659583 * x26) + (71.658336 * x27) + (2.642345 * x28) + (82.539771 * x29) + (-39.705211 * x30) + (-80.772825 * x31) + (-79.346847 * x32) + (-34.340012 * x33) + (80.273751 * x34) + (12.295965 * x35) + (-88.305868 * x36) + (-92.486489 * x37) + (59.043165 * x38) + (66.829369 * x39) + (-55.810856 * x40) + (92.780824 * x41) + (-27.376704 * x42) + (-99.230661 * x43)  <= 24.339928 ; 
consLB12:  (55.560417 * x1) + (13.290143 * x2) + (46.315551 * x3) + (-26.286428 * x4) + (10.899557 * x5) + (70.081278 * x6) + (-57.763700 * x7) + (-19.539710 * x8) + (-43.214761 * x9) + (-27.011620 * x10) + (81.510524 * x11) + (26.139857 * x12) + (-37.734627 * x13) + (12.871516 * x14) + (-71.454636 * x15) + (-95.781679 * x16) + (-78.452058 * x17) + (-68.698771 * x18) + (-2.346436 * x19) + (-19.532766 * x20) + (37.885642 * x21) + (34.110516 * x22) + (9.924479 * x23) + (77.337012 * x24) + (-63.997214 * x25) + (24.126495 * x26) + (83.966228 * x27) + (-34.038228 * x28) + (-40.168595 * x29) + (-84.443933 * x30) + (44.411829 * x31) + (-40.198898 * x32) + (-69.945035 * x33) + (54.527599 * x34) + (86.465305 * x35) + (7.852566 * x36) + (66.885381 * x37) + (39.410717 * x38) + (55.955862 * x39) + (-9.762909 * x40) + (60.629929 * x41) + (8.600118 * x42) + (-41.810156 * x43)  >= -35.610765 ; 
consLB13:  (99.181681 * x1) + (7.071933 * x2) + (55.933641 * x3) + (64.286422 * x4) + (59.039301 * x5) + (55.750689 * x6) + (-76.078924 * x7) + (62.724267 * x8) + (-94.341707 * x9) + (64.264683 * x10) + (-92.785040 * x11) + (-68.291923 * x12) + (-45.567622 * x13) + (56.245621 * x14) + (33.609541 * x15) + (-36.993893 * x16) + (-25.358719 * x17) + (68.291940 * x18) + (-46.714394 * x19) + (31.558058 * x20) + (-67.229724 * x21) + (-6.332896 * x22) + (0.628647 * x23) + (11.977188 * x24) + (37.538605 * x25) + (17.842912 * x26) + (53.962405 * x27) + (-69.233431 * x28) + (-76.839156 * x29) + (-48.990898 * x30) + (29.810742 * x31) + (-97.542588 * x32) + (44.325861 * x33) + (31.610498 * x34) + (-51.695429 * x35) + (22.902513 * x36) + (66.544193 * x37) + (-32.930339 * x38) + (99.188912 * x39) + (-69.309383 * x40) + (-50.449519 * x41) + (35.489269 * x42) + (-56.715577 * x43)  >= -24.004915 ; 
consUB13:  (99.181681 * x1) + (7.071933 * x2) + (55.933641 * x3) + (64.286422 * x4) + (59.039301 * x5) + (55.750689 * x6) + (-76.078924 * x7) + (62.724267 * x8) + (-94.341707 * x9) + (64.264683 * x10) + (-92.785040 * x11) + (-68.291923 * x12) + (-45.567622 * x13) + (56.245621 * x14) + (33.609541 * x15) + (-36.993893 * x16) + (-25.358719 * x17) + (68.291940 * x18) + (-46.714394 * x19) + (31.558058 * x20) + (-67.229724 * x21) + (-6.332896 * x22) + (0.628647 * x23) + (11.977188 * x24) + (37.538605 * x25) + (17.842912 * x26) + (53.962405 * x27) + (-69.233431 * x28) + (-76.839156 * x29) + (-48.990898 * x30) + (29.810742 * x31) + (-97.542588 * x32) + (44.325861 * x33) + (31.610498 * x34) + (-51.695429 * x35) + (22.902513 * x36) + (66.544193 * x37) + (-32.930339 * x38) + (99.188912 * x39) + (-69.309383 * x40) + (-50.449519 * x41) + (35.489269 * x42) + (-56.715577 * x43)  <= 35.206314 ; 
consLB14:  (-51.716994 * x1) + (-89.357941 * x2) + (-34.187932 * x3) + (87.569689 * x4) + (-18.667735 * x5) + (-18.897934 * x6) + (92.280043 * x7) + (-25.748347 * x8) + (94.170368 * x9) + (34.734485 * x10) + (-81.163756 * x11) + (-8.116676 * x12) + (-48.780934 * x13) + (-33.806532 * x14) + (85.235288 * x15) + (-68.002942 * x16) + (80.775576 * x17) + (-37.990827 * x18) + (-17.920235 * x19) + (-74.300433 * x20) + (95.080936 * x21) + (63.411234 * x22) + (-22.087600 * x23) + (-35.301787 * x24) + (-92.267518 * x25) + (-67.732078 * x26) + (-12.874304 * x27) + (-30.601549 * x28) + (-1.574016 * x29) + (-44.641861 * x30) + (90.184694 * x31) + (57.756102 * x32) + (-39.097563 * x33) + (54.063658 * x34) + (-86.997740 * x35) + (2.837151 * x36) + (-38.850420 * x37) + (-6.675447 * x38) + (-46.107207 * x39) + (-29.491679 * x40) + (-39.185777 * x41) + (-67.119423 * x42) + (16.117150 * x43)  >= -45.202953 ; 
consUB14:  (-51.716994 * x1) + (-89.357941 * x2) + (-34.187932 * x3) + (87.569689 * x4) + (-18.667735 * x5) + (-18.897934 * x6) + (92.280043 * x7) + (-25.748347 * x8) + (94.170368 * x9) + (34.734485 * x10) + (-81.163756 * x11) + (-8.116676 * x12) + (-48.780934 * x13) + (-33.806532 * x14) + (85.235288 * x15) + (-68.002942 * x16) + (80.775576 * x17) + (-37.990827 * x18) + (-17.920235 * x19) + (-74.300433 * x20) + (95.080936 * x21) + (63.411234 * x22) + (-22.087600 * x23) + (-35.301787 * x24) + (-92.267518 * x25) + (-67.732078 * x26) + (-12.874304 * x27) + (-30.601549 * x28) + (-1.574016 * x29) + (-44.641861 * x30) + (90.184694 * x31) + (57.756102 * x32) + (-39.097563 * x33) + (54.063658 * x34) + (-86.997740 * x35) + (2.837151 * x36) + (-38.850420 * x37) + (-6.675447 * x38) + (-46.107207 * x39) + (-29.491679 * x40) + (-39.185777 * x41) + (-67.119423 * x42) + (16.117150 * x43)  <= 7.588738 ; 
consLB15:  (-7.044464 * x1) + (-90.011181 * x2) + (-46.410500 * x3) + (-58.498124 * x4) + (-33.968997 * x5) + (-28.260443 * x6) + (80.759047 * x7) + (-46.022863 * x8) + (31.614607 * x9) + (-51.235949 * x10) + (-35.633726 * x11) + (-2.736910 * x12) + (-91.281819 * x13) + (-15.650277 * x14) + (52.805908 * x15) + (-97.398600 * x16) + (-76.936416 * x17) + (-97.580584 * x18) + (-6.928413 * x19) + (42.760220 * x20) + (24.053882 * x21) + (-64.905809 * x22) + (-72.680067 * x23) + (-61.955136 * x24) + (-94.217066 * x25) + (-85.805313 * x26) + (45.511253 * x27) + (-22.644460 * x28) + (-84.031208 * x29) + (-68.112592 * x30) + (48.801230 * x31) + (29.205584 * x32) + (-39.947761 * x33) + (-85.169014 * x34) + (-78.260498 * x35) + (48.931562 * x36) + (-80.600106 * x37) + (-81.614732 * x38) + (86.902463 * x39) + (72.098097 * x40) + (-99.556669 * x41) + (-1.466712 * x42) + (-2.236951 * x43)  >= -15.170965 ; 
consUB15:  (-7.044464 * x1) + (-90.011181 * x2) + (-46.410500 * x3) + (-58.498124 * x4) + (-33.968997 * x5) + (-28.260443 * x6) + (80.759047 * x7) + (-46.022863 * x8) + (31.614607 * x9) + (-51.235949 * x10) + (-35.633726 * x11) + (-2.736910 * x12) + (-91.281819 * x13) + (-15.650277 * x14) + (52.805908 * x15) + (-97.398600 * x16) + (-76.936416 * x17) + (-97.580584 * x18) + (-6.928413 * x19) + (42.760220 * x20) + (24.053882 * x21) + (-64.905809 * x22) + (-72.680067 * x23) + (-61.955136 * x24) + (-94.217066 * x25) + (-85.805313 * x26) + (45.511253 * x27) + (-22.644460 * x28) + (-84.031208 * x29) + (-68.112592 * x30) + (48.801230 * x31) + (29.205584 * x32) + (-39.947761 * x33) + (-85.169014 * x34) + (-78.260498 * x35) + (48.931562 * x36) + (-80.600106 * x37) + (-81.614732 * x38) + (86.902463 * x39) + (72.098097 * x40) + (-99.556669 * x41) + (-1.466712 * x42) + (-2.236951 * x43)  <= 41.688751 ; 
consLB16:  (-68.541755 * x1) + (-70.851927 * x2) + (28.078040 * x3) + (29.418803 * x4) + (85.032409 * x5) + (81.540695 * x6) + (12.482917 * x7) + (57.925144 * x8) + (-86.702006 * x9) + (90.855183 * x10) + (54.621910 * x11) + (-76.297402 * x12) + (-20.353854 * x13) + (55.542717 * x14) + (-4.986436 * x15) + (89.718845 * x16) + (-26.206373 * x17) + (-34.101284 * x18) + (-3.723471 * x19) + (8.427815 * x20) + (24.495183 * x21) + (-88.001112 * x22) + (82.134664 * x23) + (-29.057123 * x24) + (5.567294 * x25) + (-10.771310 * x26) + (-79.988650 * x27) + (-63.581635 * x28) + (25.915881 * x29) + (-97.210337 * x30) + (-57.093718 * x31) + (-71.472570 * x32) + (26.091123 * x33) + (27.648008 * x34) + (34.788772 * x35) + (79.293477 * x36) + (-34.870104 * x37) + (-90.442772 * x38) + (-98.760031 * x39) + (-70.978607 * x40) + (-85.526788 * x41) + (15.764055 * x42) + (63.727497 * x43)  >= -61.707168 ; 
consUB16:  (-68.541755 * x1) + (-70.851927 * x2) + (28.078040 * x3) + (29.418803 * x4) + (85.032409 * x5) + (81.540695 * x6) + (12.482917 * x7) + (57.925144 * x8) + (-86.702006 * x9) + (90.855183 * x10) + (54.621910 * x11) + (-76.297402 * x12) + (-20.353854 * x13) + (55.542717 * x14) + (-4.986436 * x15) + (89.718845 * x16) + (-26.206373 * x17) + (-34.101284 * x18) + (-3.723471 * x19) + (8.427815 * x20) + (24.495183 * x21) + (-88.001112 * x22) + (82.134664 * x23) + (-29.057123 * x24) + (5.567294 * x25) + (-10.771310 * x26) + (-79.988650 * x27) + (-63.581635 * x28) + (25.915881 * x29) + (-97.210337 * x30) + (-57.093718 * x31) + (-71.472570 * x32) + (26.091123 * x33) + (27.648008 * x34) + (34.788772 * x35) + (79.293477 * x36) + (-34.870104 * x37) + (-90.442772 * x38) + (-98.760031 * x39) + (-70.978607 * x40) + (-85.526788 * x41) + (15.764055 * x42) + (63.727497 * x43)  <= 13.188470 ; 
consLB17:  (25.972371 * x1) + (-48.929701 * x2) + (-53.853018 * x3) + (55.020371 * x4) + (-27.353497 * x5) + (8.035375 * x6) + (-2.184123 * x7) + (-38.705248 * x8) + (-60.380489 * x9) + (75.165598 * x10) + (5.221116 * x11) + (-86.987335 * x12) + (5.988018 * x13) + (-1.858128 * x14) + (35.807868 * x15) + (-65.628612 * x16) + (21.400818 * x17) + (87.326030 * x18) + (-43.942767 * x19) + (-64.158762 * x20) + (42.805540 * x21) + (-24.128839 * x22) + (-42.142590 * x23) + (-5.020839 * x24) + (-55.539745 * x25) + (-48.365666 * x26) + (79.646496 * x27) + (89.395310 * x28) + (88.111702 * x29) + (-4.494464 * x30) + (15.390521 * x31) + (97.654795 * x32) + (-32.184729 * x33) + (85.751010 * x34) + (-12.442615 * x35) + (97.337535 * x36) + (-2.419522 * x37) + (-52.553696 * x38) + (-6.203904 * x39) + (95.900796 * x40) + (-82.591341 * x41) + (39.801877 * x42) + (-87.367315 * x43)  >= -15.308723 ; 
consUB17:  (25.972371 * x1) + (-48.929701 * x2) + (-53.853018 * x3) + (55.020371 * x4) + (-27.353497 * x5) + (8.035375 * x6) + (-2.184123 * x7) + (-38.705248 * x8) + (-60.380489 * x9) + (75.165598 * x10) + (5.221116 * x11) + (-86.987335 * x12) + (5.988018 * x13) + (-1.858128 * x14) + (35.807868 * x15) + (-65.628612 * x16) + (21.400818 * x17) + (87.326030 * x18) + (-43.942767 * x19) + (-64.158762 * x20) + (42.805540 * x21) + (-24.128839 * x22) + (-42.142590 * x23) + (-5.020839 * x24) + (-55.539745 * x25) + (-48.365666 * x26) + (79.646496 * x27) + (89.395310 * x28) + (88.111702 * x29) + (-4.494464 * x30) + (15.390521 * x31) + (97.654795 * x32) + (-32.184729 * x33) + (85.751010 * x34) + (-12.442615 * x35) + (97.337535 * x36) + (-2.419522 * x37) + (-52.553696 * x38) + (-6.203904 * x39) + (95.900796 * x40) + (-82.591341 * x41) + (39.801877 * x42) + (-87.367315 * x43)  <= 42.242263 ; 
consLB18:  (-86.038091 * x1) + (72.510957 * x2) + (62.044986 * x3) + (-21.624100 * x4) + (89.838216 * x5) + (-69.656567 * x6) + (-71.476416 * x7) + (82.438884 * x8) + (29.467642 * x9) + (-10.013536 * x10) + (1.973833 * x11) + (15.904038 * x12) + (31.131967 * x13) + (-1.633599 * x14) + (94.700506 * x15) + (90.488750 * x16) + (-33.214042 * x17) + (-1.467014 * x18) + (43.141761 * x19) + (-68.163820 * x20) + (-98.545482 * x21) + (-82.044830 * x22) + (52.434286 * x23) + (65.609389 * x24) + (-67.582906 * x25) + (-28.505075 * x26) + (92.794617 * x27) + (-35.814610 * x28) + (-12.800818 * x29) + (56.902382 * x30) + (-64.454900 * x31) + (6.429663 * x32) + (43.305081 * x33) + (-96.489749 * x34) + (48.321513 * x35) + (57.307968 * x36) + (-64.150528 * x37) + (-18.919958 * x38) + (59.411535 * x39) + (95.812415 * x40) + (67.598227 * x41) + (-40.118800 * x42) + (61.421753 * x43)  >= -29.299378 ; 
consUB18:  (-86.038091 * x1) + (72.510957 * x2) + (62.044986 * x3) + (-21.624100 * x4) + (89.838216 * x5) + (-69.656567 * x6) + (-71.476416 * x7) + (82.438884 * x8) + (29.467642 * x9) + (-10.013536 * x10) + (1.973833 * x11) + (15.904038 * x12) + (31.131967 * x13) + (-1.633599 * x14) + (94.700506 * x15) + (90.488750 * x16) + (-33.214042 * x17) + (-1.467014 * x18) + (43.141761 * x19) + (-68.163820 * x20) + (-98.545482 * x21) + (-82.044830 * x22) + (52.434286 * x23) + (65.609389 * x24) + (-67.582906 * x25) + (-28.505075 * x26) + (92.794617 * x27) + (-35.814610 * x28) + (-12.800818 * x29) + (56.902382 * x30) + (-64.454900 * x31) + (6.429663 * x32) + (43.305081 * x33) + (-96.489749 * x34) + (48.321513 * x35) + (57.307968 * x36) + (-64.150528 * x37) + (-18.919958 * x38) + (59.411535 * x39) + (95.812415 * x40) + (67.598227 * x41) + (-40.118800 * x42) + (61.421753 * x43)  <= 32.798630 ; 
consLB19:  (22.319270 * x1) + (-1.643656 * x2) + (50.105858 * x3) + (-6.186238 * x4) + (-60.841508 * x5) + (-10.786512 * x6) + (44.300731 * x7) + (39.669728 * x8) + (-84.413956 * x9) + (-62.929568 * x10) + (-13.077411 * x11) + (-60.147476 * x12) + (80.861136 * x13) + (-65.556724 * x14) + (37.308988 * x15) + (-8.852072 * x16) + (-87.281616 * x17) + (-89.778275 * x18) + (-46.159560 * x19) + (5.774264 * x20) + (44.790876 * x21) + (83.413525 * x22) + (-23.981873 * x23) + (-2.298946 * x24) + (62.710942 * x25) + (31.634409 * x26) + (26.381618 * x27) + (-15.459482 * x28) + (-82.457406 * x29) + (-69.977820 * x30) + (95.057868 * x31) + (88.497028 * x32) + (-4.640361 * x33) + (48.309954 * x34) + (-53.694769 * x35) + (50.237529 * x36) + (-52.721961 * x37) + (51.057553 * x38) + (29.358255 * x39) + (77.963496 * x40) + (-75.193359 * x41) + (78.706790 * x42) + (56.479748 * x43)  >= -24.955389 ; 
consUB19:  (22.319270 * x1) + (-1.643656 * x2) + (50.105858 * x3) + (-6.186238 * x4) + (-60.841508 * x5) + (-10.786512 * x6) + (44.300731 * x7) + (39.669728 * x8) + (-84.413956 * x9) + (-62.929568 * x10) + (-13.077411 * x11) + (-60.147476 * x12) + (80.861136 * x13) + (-65.556724 * x14) + (37.308988 * x15) + (-8.852072 * x16) + (-87.281616 * x17) + (-89.778275 * x18) + (-46.159560 * x19) + (5.774264 * x20) + (44.790876 * x21) + (83.413525 * x22) + (-23.981873 * x23) + (-2.298946 * x24) + (62.710942 * x25) + (31.634409 * x26) + (26.381618 * x27) + (-15.459482 * x28) + (-82.457406 * x29) + (-69.977820 * x30) + (95.057868 * x31) + (88.497028 * x32) + (-4.640361 * x33) + (48.309954 * x34) + (-53.694769 * x35) + (50.237529 * x36) + (-52.721961 * x37) + (51.057553 * x38) + (29.358255 * x39) + (77.963496 * x40) + (-75.193359 * x41) + (78.706790 * x42) + (56.479748 * x43)  <= 80.281772 ; 
consLB20:  (10.929837 * x1) + (-33.651423 * x2) + (-1.483656 * x3) + (-8.699874 * x4) + (-69.198763 * x5) + (-56.957036 * x6) + (10.990277 * x7) + (-27.190659 * x8) + (-17.680581 * x9) + (62.484586 * x10) + (38.711401 * x11) + (-22.072122 * x12) + (21.658724 * x13) + (29.424593 * x14) + (-26.778051 * x15) + (32.209453 * x16) + (-20.420237 * x17) + (21.189400 * x18) + (27.579611 * x19) + (38.333162 * x20) + (-31.815139 * x21) + (15.734613 * x22) + (56.402338 * x23) + (70.666025 * x24) + (-36.007926 * x25) + (41.077337 * x26) + (-66.329335 * x27) + (-63.017768 * x28) + (-66.440251 * x29) + (-58.949644 * x30) + (-3.522992 * x31) + (31.701866 * x32) + (-73.481378 * x33) + (84.246848 * x34) + (-1.382316 * x35) + (-14.326305 * x36) + (18.236161 * x37) + (6.651187 * x38) + (2.860723 * x39) + (83.112708 * x40) + (42.206050 * x41) + (-34.618560 * x42) + (59.461078 * x43)  >= -43.699097 ; 
consUB20:  (10.929837 * x1) + (-33.651423 * x2) + (-1.483656 * x3) + (-8.699874 * x4) + (-69.198763 * x5) + (-56.957036 * x6) + (10.990277 * x7) + (-27.190659 * x8) + (-17.680581 * x9) + (62.484586 * x10) + (38.711401 * x11) + (-22.072122 * x12) + (21.658724 * x13) + (29.424593 * x14) + (-26.778051 * x15) + (32.209453 * x16) + (-20.420237 * x17) + (21.189400 * x18) + (27.579611 * x19) + (38.333162 * x20) + (-31.815139 * x21) + (15.734613 * x22) + (56.402338 * x23) + (70.666025 * x24) + (-36.007926 * x25) + (41.077337 * x26) + (-66.329335 * x27) + (-63.017768 * x28) + (-66.440251 * x29) + (-58.949644 * x30) + (-3.522992 * x31) + (31.701866 * x32) + (-73.481378 * x33) + (84.246848 * x34) + (-1.382316 * x35) + (-14.326305 * x36) + (18.236161 * x37) + (6.651187 * x38) + (2.860723 * x39) + (83.112708 * x40) + (42.206050 * x41) + (-34.618560 * x42) + (59.461078 * x43)  <= 50.353706 ; 
consLB21:  (-15.022501 * x1) + (-9.492802 * x2) + (98.429068 * x3) + (-41.270012 * x4) + (-71.375421 * x5) + (-12.680710 * x6) + (-93.877469 * x7) + (-51.982737 * x8) + (-84.579944 * x9) + (-58.351595 * x10) + (-17.259371 * x11) + (12.279534 * x12) + (41.163132 * x13) + (-24.635490 * x14) + (-14.639973 * x15) + (-70.445783 * x16) + (49.344457 * x17) + (93.765471 * x18) + (1.366027 * x19) + (-71.666397 * x20) + (15.714706 * x21) + (-61.332618 * x22) + (-98.562103 * x23) + (46.356137 * x24) + (-83.711222 * x25) + (-62.888584 * x26) + (-7.783558 * x27) + (76.148222 * x28) + (-57.702114 * x29) + (-41.069286 * x30) + (-71.126348 * x31) + (-8.670208 * x32) + (47.889586 * x33) + (-71.480004 * x34) + (44.658610 * x35) + (-8.064044 * x36) + (33.353443 * x37) + (-66.796644 * x38) + (-99.957846 * x39) + (-47.374524 * x40) + (52.731762 * x41) + (-56.265135 * x42) + (-38.198622 * x43)  >= -9.943696 ; 
consUB21:  (-15.022501 * x1) + (-9.492802 * x2) + (98.429068 * x3) + (-41.270012 * x4) + (-71.375421 * x5) + (-12.680710 * x6) + (-93.877469 * x7) + (-51.982737 * x8) + (-84.579944 * x9) + (-58.351595 * x10) + (-17.259371 * x11) + (12.279534 * x12) + (41.163132 * x13) + (-24.635490 * x14) + (-14.639973 * x15) + (-70.445783 * x16) + (49.344457 * x17) + (93.765471 * x18) + (1.366027 * x19) + (-71.666397 * x20) + (15.714706 * x21) + (-61.332618 * x22) + (-98.562103 * x23) + (46.356137 * x24) + (-83.711222 * x25) + (-62.888584 * x26) + (-7.783558 * x27) + (76.148222 * x28) + (-57.702114 * x29) + (-41.069286 * x30) + (-71.126348 * x31) + (-8.670208 * x32) + (47.889586 * x33) + (-71.480004 * x34) + (44.658610 * x35) + (-8.064044 * x36) + (33.353443 * x37) + (-66.796644 * x38) + (-99.957846 * x39) + (-47.374524 * x40) + (52.731762 * x41) + (-56.265135 * x42) + (-38.198622 * x43)  <= 77.923062 ; 
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
 display obj; 
end; 
