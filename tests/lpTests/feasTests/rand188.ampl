var x1 , <= 62.018023   ; 
var x2 , >= -64.533289 , <= 37.688410   ; 
var x3 , >= -94.639498 , <= 87.172217   ; 
var x4 , >= -15.184131 , <= 50.447706   ; 
var x5 , >= -47.770083 , <= 31.528040   ; 
var x6 , >= -49.958951 , <= 6.525405   ; 
var x7 , >= -11.756635 , <= 73.059703   ; 
var x8 , >= -37.935586   ; 
var x9 , >= -20.940293 , <= 40.687889   ; 
var x10 , >= -61.410569   ; 
var x11 , >= -12.760919 , <= 42.332826   ; 
var x12 , >= -83.999130 , <= 7.236155   ; 
var x13 , >= -46.883923 , <= 30.647519   ; 
var x14 , >= -48.445726 , <= 21.894832   ; 
var x15 , >= -74.755927 , <= 72.142064   ; 
var x16 , >= -14.133811 , <= 43.979689   ; 
var x17 , <= 22.032474   ; 
var x18 , >= -41.442598   ; 
var x19 , >= -89.147859 , <= 38.708054   ; 
var x20 , >= -17.568051 , <= 15.198131   ; 
var x21 , >= -17.266540 , <= 55.616126   ; 
var x22 , >= -51.318381   ; 
var x23 , <= 1.711852   ; 
var x24 , >= -45.780293 , <= 11.456338   ; 
var x25 , >= -67.141301   ; 
var x26 , >= -56.711195 , <= 37.392147   ; 
var x27 , >= -11.467565 , <= 92.447048   ; 
var x28 , >= -75.624944 , <= 28.734946   ; 
var x29 , >= -49.379606 , <= 68.905324   ; 
var x30 , >= -23.018727 , <= 99.839539   ; 
var x31 , >= -42.543397 , <= 81.168672   ; 
# End of variable declarations 
maximize obj: 0  +( 20.154962 * x1 )  +( 37.577274 * x2 )  +( 57.856838 * x3 )  +( -92.337851 * x4 )  +( -82.081112 * x5 )  +( -52.662261 * x6 )  +( -2.291658 * x7 )  +( 91.962059 * x8 )  +( 89.357124 * x9 )  +( 60.250730 * x10 )  +( -25.476226 * x11 )  +( -96.355051 * x12 )  +( -47.528849 * x13 )  +( -30.282120 * x14 )  +( 52.216367 * x15 )  +( 61.821694 * x16 )  +( -9.129645 * x17 )  +( 38.194617 * x18 )  +( -89.170744 * x19 )  +( 23.034426 * x20 )  +( -25.861892 * x21 )  +( 20.987438 * x22 )  +( 65.512732 * x23 )  +( 27.147261 * x24 )  +( -15.059700 * x25 )  +( -86.913536 * x26 )  +( 47.866445 * x27 )  +( 51.037105 * x28 )  +( 92.477690 * x29 )  +( -48.035142 * x30 )  +( -12.692612 * x31 ) ; 
consLB0:  (32.708574 * x1) + (-61.586865 * x2) + (69.372641 * x3) + (-68.242028 * x4) + (-15.762176 * x5) + (-45.441989 * x6) + (-59.036237 * x7) + (-99.696897 * x8) + (-50.909205 * x9) + (-78.269572 * x10) + (62.442240 * x11) + (-47.544887 * x12) + (-48.505356 * x13) + (-67.722133 * x14) + (-83.758933 * x15) + (-83.170408 * x16) + (34.425011 * x17) + (-73.609959 * x18) + (68.126827 * x19) + (64.537747 * x20) + (68.288854 * x21) + (41.740803 * x22) + (36.248629 * x23) + (-1.769009 * x24) + (-57.459175 * x25) + (-79.957743 * x26) + (46.842729 * x27) + (-94.095034 * x28) + (13.403346 * x29) + (41.246465 * x30) + (-24.991005 * x31)  >= -4.989781 ; 
consUB0:  (32.708574 * x1) + (-61.586865 * x2) + (69.372641 * x3) + (-68.242028 * x4) + (-15.762176 * x5) + (-45.441989 * x6) + (-59.036237 * x7) + (-99.696897 * x8) + (-50.909205 * x9) + (-78.269572 * x10) + (62.442240 * x11) + (-47.544887 * x12) + (-48.505356 * x13) + (-67.722133 * x14) + (-83.758933 * x15) + (-83.170408 * x16) + (34.425011 * x17) + (-73.609959 * x18) + (68.126827 * x19) + (64.537747 * x20) + (68.288854 * x21) + (41.740803 * x22) + (36.248629 * x23) + (-1.769009 * x24) + (-57.459175 * x25) + (-79.957743 * x26) + (46.842729 * x27) + (-94.095034 * x28) + (13.403346 * x29) + (41.246465 * x30) + (-24.991005 * x31)  <= 19.044896 ; 
consLB1:  (-10.677678 * x1) + (-13.175611 * x2) + (60.491901 * x3) + (-37.237203 * x4) + (0.910316 * x5) + (59.185474 * x6) + (-25.810475 * x7) + (10.131106 * x8) + (-68.480285 * x9) + (39.573157 * x10) + (-24.771254 * x11) + (1.724942 * x12) + (-3.590339 * x13) + (-64.716694 * x14) + (24.133018 * x15) + (-82.572854 * x16) + (-79.211833 * x17) + (23.396418 * x18) + (-20.289898 * x19) + (-8.844987 * x20) + (72.353772 * x21) + (60.627007 * x22) + (-68.450495 * x23) + (38.787023 * x24) + (10.339710 * x25) + (-65.781500 * x26) + (-44.528983 * x27) + (-58.898066 * x28) + (-7.028229 * x29) + (-60.440123 * x30) + (-14.799969 * x31)  >= -24.131344 ; 
consUB1:  (-10.677678 * x1) + (-13.175611 * x2) + (60.491901 * x3) + (-37.237203 * x4) + (0.910316 * x5) + (59.185474 * x6) + (-25.810475 * x7) + (10.131106 * x8) + (-68.480285 * x9) + (39.573157 * x10) + (-24.771254 * x11) + (1.724942 * x12) + (-3.590339 * x13) + (-64.716694 * x14) + (24.133018 * x15) + (-82.572854 * x16) + (-79.211833 * x17) + (23.396418 * x18) + (-20.289898 * x19) + (-8.844987 * x20) + (72.353772 * x21) + (60.627007 * x22) + (-68.450495 * x23) + (38.787023 * x24) + (10.339710 * x25) + (-65.781500 * x26) + (-44.528983 * x27) + (-58.898066 * x28) + (-7.028229 * x29) + (-60.440123 * x30) + (-14.799969 * x31)  <= 42.514075 ; 
consLB2:  (8.912305 * x1) + (-76.946098 * x2) + (-75.300662 * x3) + (-61.760909 * x4) + (-2.446702 * x5) + (-79.744362 * x6) + (85.406421 * x7) + (-54.152590 * x8) + (-98.293294 * x9) + (34.881635 * x10) + (-27.605085 * x11) + (76.582474 * x12) + (-72.480039 * x13) + (98.370051 * x14) + (-91.602405 * x15) + (-14.023070 * x16) + (-11.434426 * x17) + (18.032305 * x18) + (58.737912 * x19) + (-86.778832 * x20) + (-60.051551 * x21) + (35.775883 * x22) + (-15.243777 * x23) + (36.424147 * x24) + (88.502115 * x25) + (91.533463 * x26) + (-7.073323 * x27) + (-86.016673 * x28) + (-12.659645 * x29) + (61.269760 * x30) + (9.878358 * x31)  >= -34.212636 ; 
consUB2:  (8.912305 * x1) + (-76.946098 * x2) + (-75.300662 * x3) + (-61.760909 * x4) + (-2.446702 * x5) + (-79.744362 * x6) + (85.406421 * x7) + (-54.152590 * x8) + (-98.293294 * x9) + (34.881635 * x10) + (-27.605085 * x11) + (76.582474 * x12) + (-72.480039 * x13) + (98.370051 * x14) + (-91.602405 * x15) + (-14.023070 * x16) + (-11.434426 * x17) + (18.032305 * x18) + (58.737912 * x19) + (-86.778832 * x20) + (-60.051551 * x21) + (35.775883 * x22) + (-15.243777 * x23) + (36.424147 * x24) + (88.502115 * x25) + (91.533463 * x26) + (-7.073323 * x27) + (-86.016673 * x28) + (-12.659645 * x29) + (61.269760 * x30) + (9.878358 * x31)  <= 85.639556 ; 
consLB4:  (58.412063 * x1) + (-99.436980 * x2) + (-7.933025 * x3) + (-74.990872 * x4) + (-30.441513 * x5) + (54.376231 * x6) + (22.594694 * x7) + (75.299882 * x8) + (-17.763941 * x9) + (31.593631 * x10) + (-25.215260 * x11) + (-43.755840 * x12) + (0.431170 * x13) + (-19.912053 * x14) + (-78.808855 * x15) + (20.875451 * x16) + (-12.736562 * x17) + (-12.194413 * x18) + (19.997201 * x19) + (49.423885 * x20) + (31.337629 * x21) + (96.911251 * x22) + (3.434579 * x23) + (44.309418 * x24) + (-58.883105 * x25) + (19.611500 * x26) + (-88.243775 * x27) + (-6.690486 * x28) + (58.876592 * x29) + (-17.239062 * x30) + (-21.790276 * x31)  >= -14.711921 ; 
consLB5:  (32.161862 * x1) + (9.620729 * x2) + (10.585069 * x3) + (58.178266 * x4) + (81.817892 * x5) + (75.447632 * x6) + (-4.456304 * x7) + (49.209412 * x8) + (74.012731 * x9) + (4.620457 * x10) + (-23.765361 * x11) + (68.232655 * x12) + (33.050759 * x13) + (-52.460360 * x14) + (73.651052 * x15) + (-8.804225 * x16) + (63.637273 * x17) + (-42.439007 * x18) + (-15.966799 * x19) + (-24.927561 * x20) + (-43.245158 * x21) + (-70.087276 * x22) + (4.599009 * x23) + (82.279687 * x24) + (-88.848028 * x25) + (-18.279901 * x26) + (-90.176750 * x27) + (-74.310742 * x28) + (60.770631 * x29) + (-66.644554 * x30) + (98.514834 * x31)  >= -97.803311 ; 
consUB5:  (32.161862 * x1) + (9.620729 * x2) + (10.585069 * x3) + (58.178266 * x4) + (81.817892 * x5) + (75.447632 * x6) + (-4.456304 * x7) + (49.209412 * x8) + (74.012731 * x9) + (4.620457 * x10) + (-23.765361 * x11) + (68.232655 * x12) + (33.050759 * x13) + (-52.460360 * x14) + (73.651052 * x15) + (-8.804225 * x16) + (63.637273 * x17) + (-42.439007 * x18) + (-15.966799 * x19) + (-24.927561 * x20) + (-43.245158 * x21) + (-70.087276 * x22) + (4.599009 * x23) + (82.279687 * x24) + (-88.848028 * x25) + (-18.279901 * x26) + (-90.176750 * x27) + (-74.310742 * x28) + (60.770631 * x29) + (-66.644554 * x30) + (98.514834 * x31)  <= 85.974535 ; 
consLB6:  (-85.558618 * x1) + (72.802112 * x2) + (47.126663 * x3) + (-90.808524 * x4) + (-24.380918 * x5) + (-47.933238 * x6) + (-47.042931 * x7) + (32.272993 * x8) + (-23.414578 * x9) + (60.726197 * x10) + (-40.423853 * x11) + (-72.865198 * x12) + (2.620902 * x13) + (-15.753998 * x14) + (-40.657651 * x15) + (-59.566204 * x16) + (32.743576 * x17) + (81.946474 * x18) + (8.788385 * x19) + (-4.684119 * x20) + (84.695838 * x21) + (-69.052131 * x22) + (57.074171 * x23) + (20.739881 * x24) + (-97.390575 * x25) + (-26.001092 * x26) + (30.635693 * x27) + (73.432713 * x28) + (-24.490618 * x29) + (-76.637985 * x30) + (22.437177 * x31)  >= -80.262698 ; 
consUB6:  (-85.558618 * x1) + (72.802112 * x2) + (47.126663 * x3) + (-90.808524 * x4) + (-24.380918 * x5) + (-47.933238 * x6) + (-47.042931 * x7) + (32.272993 * x8) + (-23.414578 * x9) + (60.726197 * x10) + (-40.423853 * x11) + (-72.865198 * x12) + (2.620902 * x13) + (-15.753998 * x14) + (-40.657651 * x15) + (-59.566204 * x16) + (32.743576 * x17) + (81.946474 * x18) + (8.788385 * x19) + (-4.684119 * x20) + (84.695838 * x21) + (-69.052131 * x22) + (57.074171 * x23) + (20.739881 * x24) + (-97.390575 * x25) + (-26.001092 * x26) + (30.635693 * x27) + (73.432713 * x28) + (-24.490618 * x29) + (-76.637985 * x30) + (22.437177 * x31)  <= 82.419557 ; 
consLB7:  (-5.222773 * x1) + (92.408855 * x2) + (-45.970019 * x3) + (14.502094 * x4) + (-20.296415 * x5) + (-45.775158 * x6) + (80.105542 * x7) + (47.073332 * x8) + (-81.491058 * x9) + (21.180892 * x10) + (-21.148206 * x11) + (79.217260 * x12) + (-74.804866 * x13) + (-73.048638 * x14) + (-20.993531 * x15) + (34.448186 * x16) + (72.741654 * x17) + (-59.136332 * x18) + (-74.639039 * x19) + (39.641578 * x20) + (-82.302132 * x21) + (13.455194 * x22) + (72.874684 * x23) + (-77.115597 * x24) + (-19.814133 * x25) + (58.150585 * x26) + (-56.109092 * x27) + (90.861582 * x28) + (33.080067 * x29) + (-34.521794 * x30) + (-64.869293 * x31)  >= -43.431483 ; 
consUB7:  (-5.222773 * x1) + (92.408855 * x2) + (-45.970019 * x3) + (14.502094 * x4) + (-20.296415 * x5) + (-45.775158 * x6) + (80.105542 * x7) + (47.073332 * x8) + (-81.491058 * x9) + (21.180892 * x10) + (-21.148206 * x11) + (79.217260 * x12) + (-74.804866 * x13) + (-73.048638 * x14) + (-20.993531 * x15) + (34.448186 * x16) + (72.741654 * x17) + (-59.136332 * x18) + (-74.639039 * x19) + (39.641578 * x20) + (-82.302132 * x21) + (13.455194 * x22) + (72.874684 * x23) + (-77.115597 * x24) + (-19.814133 * x25) + (58.150585 * x26) + (-56.109092 * x27) + (90.861582 * x28) + (33.080067 * x29) + (-34.521794 * x30) + (-64.869293 * x31)  <= 33.972336 ; 
consLB8:  (41.906944 * x1) + (-6.376774 * x2) + (31.902103 * x3) + (11.481186 * x4) + (-51.912221 * x5) + (65.527511 * x6) + (31.952962 * x7) + (36.201707 * x8) + (47.902098 * x9) + (-21.204798 * x10) + (-58.031160 * x11) + (-82.288464 * x12) + (97.729737 * x13) + (-37.196904 * x14) + (-88.401048 * x15) + (-2.116738 * x16) + (-69.399623 * x17) + (-24.020754 * x18) + (3.602032 * x19) + (52.662437 * x20) + (38.756084 * x21) + (-71.363088 * x22) + (14.829947 * x23) + (-49.595607 * x24) + (-66.348906 * x25) + (-34.179946 * x26) + (-63.802335 * x27) + (34.728009 * x28) + (-76.670092 * x29) + (-68.416047 * x30) + (-5.402315 * x31)  >= -41.931506 ; 
consUB8:  (41.906944 * x1) + (-6.376774 * x2) + (31.902103 * x3) + (11.481186 * x4) + (-51.912221 * x5) + (65.527511 * x6) + (31.952962 * x7) + (36.201707 * x8) + (47.902098 * x9) + (-21.204798 * x10) + (-58.031160 * x11) + (-82.288464 * x12) + (97.729737 * x13) + (-37.196904 * x14) + (-88.401048 * x15) + (-2.116738 * x16) + (-69.399623 * x17) + (-24.020754 * x18) + (3.602032 * x19) + (52.662437 * x20) + (38.756084 * x21) + (-71.363088 * x22) + (14.829947 * x23) + (-49.595607 * x24) + (-66.348906 * x25) + (-34.179946 * x26) + (-63.802335 * x27) + (34.728009 * x28) + (-76.670092 * x29) + (-68.416047 * x30) + (-5.402315 * x31)  <= 5.875364 ; 
consLB10:  (-5.444329 * x1) + (-29.177344 * x2) + (75.131390 * x3) + (65.298126 * x4) + (21.787112 * x5) + (-14.576176 * x6) + (-55.774068 * x7) + (-83.380412 * x8) + (-10.345113 * x9) + (5.321634 * x10) + (-94.443132 * x11) + (-38.359864 * x12) + (87.675889 * x13) + (-96.749123 * x14) + (-33.601162 * x15) + (23.963800 * x16) + (76.321188 * x17) + (39.394380 * x18) + (98.076620 * x19) + (-54.080147 * x20) + (69.711097 * x21) + (-67.066624 * x22) + (38.232926 * x23) + (-58.236102 * x24) + (-28.915621 * x25) + (48.801756 * x26) + (-45.054190 * x27) + (13.012232 * x28) + (-93.742739 * x29) + (-36.619956 * x30) + (72.414619 * x31)  >= -7.641536 ; 
consUB10:  (-5.444329 * x1) + (-29.177344 * x2) + (75.131390 * x3) + (65.298126 * x4) + (21.787112 * x5) + (-14.576176 * x6) + (-55.774068 * x7) + (-83.380412 * x8) + (-10.345113 * x9) + (5.321634 * x10) + (-94.443132 * x11) + (-38.359864 * x12) + (87.675889 * x13) + (-96.749123 * x14) + (-33.601162 * x15) + (23.963800 * x16) + (76.321188 * x17) + (39.394380 * x18) + (98.076620 * x19) + (-54.080147 * x20) + (69.711097 * x21) + (-67.066624 * x22) + (38.232926 * x23) + (-58.236102 * x24) + (-28.915621 * x25) + (48.801756 * x26) + (-45.054190 * x27) + (13.012232 * x28) + (-93.742739 * x29) + (-36.619956 * x30) + (72.414619 * x31)  <= 65.370246 ; 
consLB11:  (-18.133238 * x1) + (-94.047276 * x2) + (35.252757 * x3) + (-45.306850 * x4) + (-37.697607 * x5) + (52.737275 * x6) + (40.207156 * x7) + (87.107474 * x8) + (78.236380 * x9) + (26.296324 * x10) + (-26.588658 * x11) + (48.811277 * x12) + (-41.618837 * x13) + (-1.019254 * x14) + (-93.160830 * x15) + (76.786635 * x16) + (7.625297 * x17) + (2.161468 * x18) + (-12.202295 * x19) + (-47.999520 * x20) + (-39.557268 * x21) + (6.256367 * x22) + (36.773940 * x23) + (-58.990427 * x24) + (-36.124450 * x25) + (39.789635 * x26) + (-47.709705 * x27) + (-22.172647 * x28) + (-17.329187 * x29) + (-24.921598 * x30) + (50.207105 * x31)  >= -89.813358 ; 
consUB11:  (-18.133238 * x1) + (-94.047276 * x2) + (35.252757 * x3) + (-45.306850 * x4) + (-37.697607 * x5) + (52.737275 * x6) + (40.207156 * x7) + (87.107474 * x8) + (78.236380 * x9) + (26.296324 * x10) + (-26.588658 * x11) + (48.811277 * x12) + (-41.618837 * x13) + (-1.019254 * x14) + (-93.160830 * x15) + (76.786635 * x16) + (7.625297 * x17) + (2.161468 * x18) + (-12.202295 * x19) + (-47.999520 * x20) + (-39.557268 * x21) + (6.256367 * x22) + (36.773940 * x23) + (-58.990427 * x24) + (-36.124450 * x25) + (39.789635 * x26) + (-47.709705 * x27) + (-22.172647 * x28) + (-17.329187 * x29) + (-24.921598 * x30) + (50.207105 * x31)  <= 20.646714 ; 
consLB12:  (-73.792662 * x1) + (49.405007 * x2) + (92.810166 * x3) + (-11.276050 * x4) + (4.667752 * x5) + (45.751256 * x6) + (-79.302307 * x7) + (-17.375717 * x8) + (-53.286628 * x9) + (60.911588 * x10) + (41.520875 * x11) + (56.118550 * x12) + (-3.938733 * x13) + (58.750587 * x14) + (-44.742102 * x15) + (-21.366217 * x16) + (-31.370274 * x17) + (-58.945624 * x18) + (-66.133744 * x19) + (-31.638299 * x20) + (-54.887796 * x21) + (-69.048428 * x22) + (-46.082026 * x23) + (21.226608 * x24) + (-36.236639 * x25) + (43.847241 * x26) + (63.168184 * x27) + (-44.292025 * x28) + (-35.670094 * x29) + (-45.161593 * x30) + (16.812267 * x31)  >= -18.985259 ; 
consUB12:  (-73.792662 * x1) + (49.405007 * x2) + (92.810166 * x3) + (-11.276050 * x4) + (4.667752 * x5) + (45.751256 * x6) + (-79.302307 * x7) + (-17.375717 * x8) + (-53.286628 * x9) + (60.911588 * x10) + (41.520875 * x11) + (56.118550 * x12) + (-3.938733 * x13) + (58.750587 * x14) + (-44.742102 * x15) + (-21.366217 * x16) + (-31.370274 * x17) + (-58.945624 * x18) + (-66.133744 * x19) + (-31.638299 * x20) + (-54.887796 * x21) + (-69.048428 * x22) + (-46.082026 * x23) + (21.226608 * x24) + (-36.236639 * x25) + (43.847241 * x26) + (63.168184 * x27) + (-44.292025 * x28) + (-35.670094 * x29) + (-45.161593 * x30) + (16.812267 * x31)  <= 87.767438 ; 
consLB13:  (74.814560 * x1) + (-29.252001 * x2) + (-81.272878 * x3) + (95.359390 * x4) + (94.246331 * x5) + (-99.690947 * x6) + (-75.724266 * x7) + (29.539836 * x8) + (-80.188634 * x9) + (-63.400185 * x10) + (56.735686 * x11) + (52.415222 * x12) + (-32.473606 * x13) + (-83.091624 * x14) + (-43.972762 * x15) + (71.944985 * x16) + (-12.814248 * x17) + (54.338089 * x18) + (-38.020346 * x19) + (-91.125390 * x20) + (-4.176691 * x21) + (-38.905944 * x22) + (-31.888870 * x23) + (-71.728719 * x24) + (63.329507 * x25) + (60.934711 * x26) + (12.511631 * x27) + (64.786377 * x28) + (-28.940006 * x29) + (-97.628129 * x30) + (35.091402 * x31)  >= -5.234987 ; 
consUB13:  (74.814560 * x1) + (-29.252001 * x2) + (-81.272878 * x3) + (95.359390 * x4) + (94.246331 * x5) + (-99.690947 * x6) + (-75.724266 * x7) + (29.539836 * x8) + (-80.188634 * x9) + (-63.400185 * x10) + (56.735686 * x11) + (52.415222 * x12) + (-32.473606 * x13) + (-83.091624 * x14) + (-43.972762 * x15) + (71.944985 * x16) + (-12.814248 * x17) + (54.338089 * x18) + (-38.020346 * x19) + (-91.125390 * x20) + (-4.176691 * x21) + (-38.905944 * x22) + (-31.888870 * x23) + (-71.728719 * x24) + (63.329507 * x25) + (60.934711 * x26) + (12.511631 * x27) + (64.786377 * x28) + (-28.940006 * x29) + (-97.628129 * x30) + (35.091402 * x31)  <= 56.969921 ; 
consLB14:  (-88.658364 * x1) + (28.747605 * x2) + (14.739290 * x3) + (56.999862 * x4) + (21.112413 * x5) + (69.194635 * x6) + (19.739991 * x7) + (-11.744715 * x8) + (29.237360 * x9) + (18.491522 * x10) + (32.659390 * x11) + (-42.968129 * x12) + (2.564506 * x13) + (-23.079647 * x14) + (-0.647910 * x15) + (57.728923 * x16) + (-4.980598 * x17) + (-52.079032 * x18) + (-65.241740 * x19) + (-70.376481 * x20) + (48.046961 * x21) + (-34.186967 * x22) + (-98.411678 * x23) + (63.934816 * x24) + (-91.644705 * x25) + (34.293294 * x26) + (-82.434790 * x27) + (-29.518415 * x28) + (20.322428 * x29) + (-25.397644 * x30) + (57.989450 * x31)  >= -2.025436 ; 
consUB14:  (-88.658364 * x1) + (28.747605 * x2) + (14.739290 * x3) + (56.999862 * x4) + (21.112413 * x5) + (69.194635 * x6) + (19.739991 * x7) + (-11.744715 * x8) + (29.237360 * x9) + (18.491522 * x10) + (32.659390 * x11) + (-42.968129 * x12) + (2.564506 * x13) + (-23.079647 * x14) + (-0.647910 * x15) + (57.728923 * x16) + (-4.980598 * x17) + (-52.079032 * x18) + (-65.241740 * x19) + (-70.376481 * x20) + (48.046961 * x21) + (-34.186967 * x22) + (-98.411678 * x23) + (63.934816 * x24) + (-91.644705 * x25) + (34.293294 * x26) + (-82.434790 * x27) + (-29.518415 * x28) + (20.322428 * x29) + (-25.397644 * x30) + (57.989450 * x31)  <= 76.078966 ; 
consLB15:  (57.396165 * x1) + (22.485646 * x2) + (-37.156105 * x3) + (57.276633 * x4) + (45.794519 * x5) + (74.213688 * x6) + (19.030148 * x7) + (-33.482718 * x8) + (-21.255194 * x9) + (50.784326 * x10) + (95.435025 * x11) + (30.158433 * x12) + (-71.197408 * x13) + (-33.400548 * x14) + (-61.200768 * x15) + (-32.137643 * x16) + (64.890992 * x17) + (-35.763182 * x18) + (0.514449 * x19) + (-70.156504 * x20) + (-72.874778 * x21) + (-8.342454 * x22) + (12.404991 * x23) + (6.027636 * x24) + (-37.335173 * x25) + (-15.518502 * x26) + (-4.960524 * x27) + (59.850596 * x28) + (97.799834 * x29) + (81.254161 * x30) + (-76.819023 * x31)  >= -32.999662 ; 
consUB15:  (57.396165 * x1) + (22.485646 * x2) + (-37.156105 * x3) + (57.276633 * x4) + (45.794519 * x5) + (74.213688 * x6) + (19.030148 * x7) + (-33.482718 * x8) + (-21.255194 * x9) + (50.784326 * x10) + (95.435025 * x11) + (30.158433 * x12) + (-71.197408 * x13) + (-33.400548 * x14) + (-61.200768 * x15) + (-32.137643 * x16) + (64.890992 * x17) + (-35.763182 * x18) + (0.514449 * x19) + (-70.156504 * x20) + (-72.874778 * x21) + (-8.342454 * x22) + (12.404991 * x23) + (6.027636 * x24) + (-37.335173 * x25) + (-15.518502 * x26) + (-4.960524 * x27) + (59.850596 * x28) + (97.799834 * x29) + (81.254161 * x30) + (-76.819023 * x31)  <= 3.115043 ; 
consLB16:  (-96.825224 * x1) + (27.840731 * x2) + (86.628944 * x3) + (-67.814061 * x4) + (84.533975 * x5) + (79.213141 * x6) + (-76.926845 * x7) + (-56.321106 * x8) + (-88.272630 * x9) + (85.307886 * x10) + (-8.105337 * x11) + (-56.924233 * x12) + (-67.194366 * x13) + (-17.417663 * x14) + (18.024730 * x15) + (20.542400 * x16) + (45.983347 * x17) + (5.251151 * x18) + (-47.849046 * x19) + (46.420855 * x20) + (-33.644808 * x21) + (80.370226 * x22) + (23.668087 * x23) + (88.323213 * x24) + (40.996551 * x25) + (10.558520 * x26) + (6.823939 * x27) + (76.895001 * x28) + (-52.275024 * x29) + (-95.005118 * x30) + (-88.172000 * x31)  >= -22.332307 ; 
consUB16:  (-96.825224 * x1) + (27.840731 * x2) + (86.628944 * x3) + (-67.814061 * x4) + (84.533975 * x5) + (79.213141 * x6) + (-76.926845 * x7) + (-56.321106 * x8) + (-88.272630 * x9) + (85.307886 * x10) + (-8.105337 * x11) + (-56.924233 * x12) + (-67.194366 * x13) + (-17.417663 * x14) + (18.024730 * x15) + (20.542400 * x16) + (45.983347 * x17) + (5.251151 * x18) + (-47.849046 * x19) + (46.420855 * x20) + (-33.644808 * x21) + (80.370226 * x22) + (23.668087 * x23) + (88.323213 * x24) + (40.996551 * x25) + (10.558520 * x26) + (6.823939 * x27) + (76.895001 * x28) + (-52.275024 * x29) + (-95.005118 * x30) + (-88.172000 * x31)  <= 69.613962 ; 
consLB17:  (18.227051 * x1) + (-61.754694 * x2) + (72.272743 * x3) + (27.132083 * x4) + (51.209739 * x5) + (73.480826 * x6) + (28.421002 * x7) + (6.280551 * x8) + (-83.433954 * x9) + (55.613620 * x10) + (72.756308 * x11) + (-46.517126 * x12) + (90.283955 * x13) + (-26.148108 * x14) + (31.696665 * x15) + (60.328581 * x16) + (27.733277 * x17) + (63.468458 * x18) + (20.340526 * x19) + (-21.085391 * x20) + (-53.438747 * x21) + (-77.404453 * x22) + (-6.774203 * x23) + (-15.717276 * x24) + (67.804188 * x25) + (59.124357 * x26) + (84.581041 * x27) + (34.790570 * x28) + (47.443079 * x29) + (-50.523684 * x30) + (25.543164 * x31)  >= -11.243588 ; 
consLB18:  (39.309218 * x1) + (17.408658 * x2) + (-91.255552 * x3) + (-12.156360 * x4) + (-5.476825 * x5) + (-41.030316 * x6) + (-97.369447 * x7) + (-27.414676 * x8) + (76.800968 * x9) + (36.306609 * x10) + (-91.265230 * x11) + (-63.204199 * x12) + (-73.073992 * x13) + (98.295072 * x14) + (-30.778583 * x15) + (-57.072510 * x16) + (-78.626318 * x17) + (27.139069 * x18) + (7.946580 * x19) + (6.480979 * x20) + (-97.138065 * x21) + (-20.833860 * x22) + (-69.828519 * x23) + (99.182855 * x24) + (70.784199 * x25) + (72.115667 * x26) + (27.509161 * x27) + (-99.995798 * x28) + (87.175836 * x29) + (61.530267 * x30) + (98.393158 * x31)  >= -49.455807 ; 
consUB18:  (39.309218 * x1) + (17.408658 * x2) + (-91.255552 * x3) + (-12.156360 * x4) + (-5.476825 * x5) + (-41.030316 * x6) + (-97.369447 * x7) + (-27.414676 * x8) + (76.800968 * x9) + (36.306609 * x10) + (-91.265230 * x11) + (-63.204199 * x12) + (-73.073992 * x13) + (98.295072 * x14) + (-30.778583 * x15) + (-57.072510 * x16) + (-78.626318 * x17) + (27.139069 * x18) + (7.946580 * x19) + (6.480979 * x20) + (-97.138065 * x21) + (-20.833860 * x22) + (-69.828519 * x23) + (99.182855 * x24) + (70.784199 * x25) + (72.115667 * x26) + (27.509161 * x27) + (-99.995798 * x28) + (87.175836 * x29) + (61.530267 * x30) + (98.393158 * x31)  <= 19.153606 ; 
consLB19:  (49.737455 * x1) + (-82.486573 * x2) + (93.938625 * x3) + (-83.126551 * x4) + (98.459098 * x5) + (-67.529209 * x6) + (-5.440306 * x7) + (69.819919 * x8) + (96.220247 * x9) + (84.451653 * x10) + (51.052341 * x11) + (92.654623 * x12) + (-11.421959 * x13) + (32.106865 * x14) + (91.795083 * x15) + (-97.325916 * x16) + (78.584612 * x17) + (11.069267 * x18) + (-32.653247 * x19) + (-78.880397 * x20) + (9.688671 * x21) + (-13.128040 * x22) + (57.774708 * x23) + (-67.210203 * x24) + (29.404065 * x25) + (26.651284 * x26) + (-82.268293 * x27) + (25.673203 * x28) + (-3.088393 * x29) + (93.094512 * x30) + (97.429798 * x31)  >= -12.932123 ; 
consUB19:  (49.737455 * x1) + (-82.486573 * x2) + (93.938625 * x3) + (-83.126551 * x4) + (98.459098 * x5) + (-67.529209 * x6) + (-5.440306 * x7) + (69.819919 * x8) + (96.220247 * x9) + (84.451653 * x10) + (51.052341 * x11) + (92.654623 * x12) + (-11.421959 * x13) + (32.106865 * x14) + (91.795083 * x15) + (-97.325916 * x16) + (78.584612 * x17) + (11.069267 * x18) + (-32.653247 * x19) + (-78.880397 * x20) + (9.688671 * x21) + (-13.128040 * x22) + (57.774708 * x23) + (-67.210203 * x24) + (29.404065 * x25) + (26.651284 * x26) + (-82.268293 * x27) + (25.673203 * x28) + (-3.088393 * x29) + (93.094512 * x30) + (97.429798 * x31)  <= 53.426915 ; 
consLB20:  (-68.557392 * x1) + (99.961526 * x2) + (3.619325 * x3) + (-56.461360 * x4) + (-72.545470 * x5) + (-85.864282 * x6) + (-30.461886 * x7) + (-17.309389 * x8) + (-82.980125 * x9) + (52.938050 * x10) + (96.660073 * x11) + (-44.505075 * x12) + (-39.837000 * x13) + (68.158904 * x14) + (6.238464 * x15) + (25.161884 * x16) + (42.999034 * x17) + (29.983502 * x18) + (42.324496 * x19) + (-2.944683 * x20) + (39.491175 * x21) + (74.483879 * x22) + (-59.486633 * x23) + (9.390359 * x24) + (2.083604 * x25) + (97.178188 * x26) + (18.957465 * x27) + (-12.836026 * x28) + (-86.950569 * x29) + (-94.389971 * x30) + (-56.303211 * x31)  >= -5.375649 ; 
consUB20:  (-68.557392 * x1) + (99.961526 * x2) + (3.619325 * x3) + (-56.461360 * x4) + (-72.545470 * x5) + (-85.864282 * x6) + (-30.461886 * x7) + (-17.309389 * x8) + (-82.980125 * x9) + (52.938050 * x10) + (96.660073 * x11) + (-44.505075 * x12) + (-39.837000 * x13) + (68.158904 * x14) + (6.238464 * x15) + (25.161884 * x16) + (42.999034 * x17) + (29.983502 * x18) + (42.324496 * x19) + (-2.944683 * x20) + (39.491175 * x21) + (74.483879 * x22) + (-59.486633 * x23) + (9.390359 * x24) + (2.083604 * x25) + (97.178188 * x26) + (18.957465 * x27) + (-12.836026 * x28) + (-86.950569 * x29) + (-94.389971 * x30) + (-56.303211 * x31)  <= 16.011293 ; 
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
 display obj; 
end; 
