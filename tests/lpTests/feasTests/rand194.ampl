var x1 , >= -34.575384 , <= 86.535509   ; 
var x2 , >= -18.329018 , <= 99.271978   ; 
var x3 , >= -76.786558 , <= 25.310500   ; 
var x4 , >= -56.553351 , <= 36.317163   ; 
var x5 , >= -92.490379 , <= 78.468145   ; 
var x6 , >= -26.744392 , <= 86.600543   ; 
var x7 , >= -70.416894 , <= 34.344364   ; 
var x8 , >= -90.685207 , <= 78.900898   ; 
var x9 , >= -59.298398 , <= 20.977076   ; 
var x10 , >= -57.249539 , <= 0.113095   ; 
var x11 , >= -38.886456 , <= 79.218675   ; 
var x12 , <= 92.142989   ; 
var x13 , >= -40.747179 , <= 63.228083   ; 
# End of variable declarations 
maximize obj: 0  +( -28.019137 * x1 )  +( -9.440078 * x2 )  +( -22.308454 * x3 )  +( -28.443849 * x4 )  +( -72.680202 * x5 )  +( -85.792952 * x6 )  +( 40.879584 * x7 )  +( -69.004654 * x8 )  +( 14.057197 * x9 )  +( -71.998258 * x10 )  +( -49.098052 * x11 )  +( 34.602773 * x12 )  +( 72.081176 * x13 ) ; 
consLB0:  (46.047425 * x1) + (99.553683 * x2) + (-28.240727 * x3) + (-9.967103 * x4) + (0.259251 * x5) + (-23.437893 * x6) + (9.172574 * x7) + (-54.161334 * x8) + (37.257079 * x9) + (-69.004299 * x10) + (-63.183154 * x11) + (14.140730 * x12) + (-4.675017 * x13)  >= -38.830733 ; 
consLB1:  (-88.555798 * x1) + (-90.046413 * x2) + (-57.271859 * x3) + (-93.131127 * x4) + (85.130736 * x5) + (-37.642136 * x6) + (-73.401242 * x7) + (-68.100237 * x8) + (-62.249729 * x9) + (21.654733 * x10) + (61.436673 * x11) + (83.881548 * x12) + (-90.816655 * x13)  >= -73.989152 ; 
consUB1:  (-88.555798 * x1) + (-90.046413 * x2) + (-57.271859 * x3) + (-93.131127 * x4) + (85.130736 * x5) + (-37.642136 * x6) + (-73.401242 * x7) + (-68.100237 * x8) + (-62.249729 * x9) + (21.654733 * x10) + (61.436673 * x11) + (83.881548 * x12) + (-90.816655 * x13)  <= 66.408228 ; 
consLB2:  (-5.188701 * x1) + (-51.582298 * x2) + (89.129090 * x3) + (-87.776113 * x4) + (83.963236 * x5) + (75.335531 * x6) + (-43.729659 * x7) + (39.624177 * x8) + (41.638377 * x9) + (-93.325657 * x10) + (7.665394 * x11) + (7.262615 * x12) + (59.957126 * x13)  >= -53.758439 ; 
consUB2:  (-5.188701 * x1) + (-51.582298 * x2) + (89.129090 * x3) + (-87.776113 * x4) + (83.963236 * x5) + (75.335531 * x6) + (-43.729659 * x7) + (39.624177 * x8) + (41.638377 * x9) + (-93.325657 * x10) + (7.665394 * x11) + (7.262615 * x12) + (59.957126 * x13)  <= 60.773374 ; 
consUB3:  (84.666748 * x1) + (-72.198864 * x2) + (66.869936 * x3) + (-81.452332 * x4) + (47.420149 * x5) + (55.372816 * x6) + (-0.078871 * x7) + (76.846115 * x8) + (97.346975 * x9) + (-70.031290 * x10) + (65.052355 * x11) + (-97.584380 * x12) + (57.495893 * x13)  <= 92.062810 ; 
consLB4:  (98.061475 * x1) + (95.358941 * x2) + (70.296951 * x3) + (-95.321096 * x4) + (-13.425064 * x5) + (50.460918 * x6) + (69.703810 * x7) + (1.874565 * x8) + (18.958502 * x9) + (33.200778 * x10) + (-87.767819 * x11) + (-80.762895 * x12) + (34.908131 * x13)  >= -47.254120 ; 
consUB4:  (98.061475 * x1) + (95.358941 * x2) + (70.296951 * x3) + (-95.321096 * x4) + (-13.425064 * x5) + (50.460918 * x6) + (69.703810 * x7) + (1.874565 * x8) + (18.958502 * x9) + (33.200778 * x10) + (-87.767819 * x11) + (-80.762895 * x12) + (34.908131 * x13)  <= 36.286419 ; 
consLB5:  (34.803113 * x1) + (76.921979 * x2) + (49.756454 * x3) + (90.193422 * x4) + (18.441659 * x5) + (-43.125981 * x6) + (24.421692 * x7) + (-29.819956 * x8) + (-26.784893 * x9) + (-77.306265 * x10) + (-89.508144 * x11) + (-84.604214 * x12) + (-57.057151 * x13)  >= -53.081545 ; 
consUB5:  (34.803113 * x1) + (76.921979 * x2) + (49.756454 * x3) + (90.193422 * x4) + (18.441659 * x5) + (-43.125981 * x6) + (24.421692 * x7) + (-29.819956 * x8) + (-26.784893 * x9) + (-77.306265 * x10) + (-89.508144 * x11) + (-84.604214 * x12) + (-57.057151 * x13)  <= 23.421022 ; 
consLB6:  (0.937899 * x1) + (48.649776 * x2) + (-1.177717 * x3) + (-28.005271 * x4) + (20.239620 * x5) + (29.508384 * x6) + (34.573268 * x7) + (19.228858 * x8) + (21.263035 * x9) + (21.881252 * x10) + (61.439307 * x11) + (17.317788 * x12) + (-95.399946 * x13)  >= -81.863408 ; 
consUB6:  (0.937899 * x1) + (48.649776 * x2) + (-1.177717 * x3) + (-28.005271 * x4) + (20.239620 * x5) + (29.508384 * x6) + (34.573268 * x7) + (19.228858 * x8) + (21.263035 * x9) + (21.881252 * x10) + (61.439307 * x11) + (17.317788 * x12) + (-95.399946 * x13)  <= 45.659420 ; 
consLB7:  (4.771464 * x1) + (-89.241243 * x2) + (-64.790213 * x3) + (-73.199829 * x4) + (98.152008 * x5) + (-82.339589 * x6) + (13.737736 * x7) + (-99.321518 * x8) + (-24.091859 * x9) + (-97.514734 * x10) + (-43.382677 * x11) + (-58.240505 * x12) + (-64.985786 * x13)  >= -8.183273 ; 
consUB7:  (4.771464 * x1) + (-89.241243 * x2) + (-64.790213 * x3) + (-73.199829 * x4) + (98.152008 * x5) + (-82.339589 * x6) + (13.737736 * x7) + (-99.321518 * x8) + (-24.091859 * x9) + (-97.514734 * x10) + (-43.382677 * x11) + (-58.240505 * x12) + (-64.985786 * x13)  <= 59.209969 ; 
consLB8:  (72.828454 * x1) + (80.057817 * x2) + (86.192844 * x3) + (-89.024120 * x4) + (-33.032172 * x5) + (53.356794 * x6) + (-77.145494 * x7) + (9.259910 * x8) + (70.408375 * x9) + (40.203864 * x10) + (97.881332 * x11) + (-30.040389 * x12) + (35.941829 * x13)  >= -51.440874 ; 
consUB8:  (72.828454 * x1) + (80.057817 * x2) + (86.192844 * x3) + (-89.024120 * x4) + (-33.032172 * x5) + (53.356794 * x6) + (-77.145494 * x7) + (9.259910 * x8) + (70.408375 * x9) + (40.203864 * x10) + (97.881332 * x11) + (-30.040389 * x12) + (35.941829 * x13)  <= 41.000855 ; 
consUB9:  (-93.358264 * x1) + (-94.039559 * x2) + (18.030693 * x3) + (-25.806119 * x4) + (68.014972 * x5) + (-50.183812 * x6) + (59.431841 * x7) + (59.427557 * x8) + (-34.308524 * x9) + (76.138677 * x10) + (-34.607186 * x11) + (-79.164026 * x12) + (97.408370 * x13)  <= 27.488143 ; 
consLB10:  (59.437109 * x1) + (-90.587789 * x2) + (22.261057 * x3) + (-34.063670 * x4) + (-40.138669 * x5) + (-33.316364 * x6) + (35.912325 * x7) + (93.163817 * x8) + (-90.076349 * x9) + (-98.685581 * x10) + (4.051685 * x11) + (95.089050 * x12) + (-50.596885 * x13)  >= -11.309532 ; 
consUB10:  (59.437109 * x1) + (-90.587789 * x2) + (22.261057 * x3) + (-34.063670 * x4) + (-40.138669 * x5) + (-33.316364 * x6) + (35.912325 * x7) + (93.163817 * x8) + (-90.076349 * x9) + (-98.685581 * x10) + (4.051685 * x11) + (95.089050 * x12) + (-50.596885 * x13)  <= 48.850260 ; 
consLB11:  (16.411887 * x1) + (-24.298212 * x2) + (-7.388009 * x3) + (16.783828 * x4) + (54.970039 * x5) + (-24.702913 * x6) + (99.105220 * x7) + (86.750274 * x8) + (-39.779236 * x9) + (82.023685 * x10) + (74.800311 * x11) + (-87.956083 * x12) + (43.070277 * x13)  >= -87.829664 ; 
consUB11:  (16.411887 * x1) + (-24.298212 * x2) + (-7.388009 * x3) + (16.783828 * x4) + (54.970039 * x5) + (-24.702913 * x6) + (99.105220 * x7) + (86.750274 * x8) + (-39.779236 * x9) + (82.023685 * x10) + (74.800311 * x11) + (-87.956083 * x12) + (43.070277 * x13)  <= 68.936952 ; 
consLB12:  (-99.293383 * x1) + (56.969378 * x2) + (-41.990701 * x3) + (87.399472 * x4) + (18.946787 * x5) + (91.248779 * x6) + (-88.817717 * x7) + (42.968302 * x8) + (55.354533 * x9) + (-78.592311 * x10) + (-20.819125 * x11) + (-82.344639 * x12) + (-2.131765 * x13)  >= -52.461041 ; 
consUB12:  (-99.293383 * x1) + (56.969378 * x2) + (-41.990701 * x3) + (87.399472 * x4) + (18.946787 * x5) + (91.248779 * x6) + (-88.817717 * x7) + (42.968302 * x8) + (55.354533 * x9) + (-78.592311 * x10) + (-20.819125 * x11) + (-82.344639 * x12) + (-2.131765 * x13)  <= 33.322465 ; 
consLB13:  (-98.802574 * x1) + (85.957868 * x2) + (58.636340 * x3) + (50.104626 * x4) + (22.042058 * x5) + (90.297370 * x6) + (94.335387 * x7) + (91.407964 * x8) + (-5.713941 * x9) + (-69.458206 * x10) + (49.673281 * x11) + (-90.181752 * x12) + (-41.835346 * x13)  >= -6.363789 ; 
consUB13:  (-98.802574 * x1) + (85.957868 * x2) + (58.636340 * x3) + (50.104626 * x4) + (22.042058 * x5) + (90.297370 * x6) + (94.335387 * x7) + (91.407964 * x8) + (-5.713941 * x9) + (-69.458206 * x10) + (49.673281 * x11) + (-90.181752 * x12) + (-41.835346 * x13)  <= 93.382620 ; 
consLB14:  (-82.695051 * x1) + (16.012163 * x2) + (86.759486 * x3) + (-45.103980 * x4) + (78.868323 * x5) + (-10.389885 * x6) + (51.178000 * x7) + (70.225835 * x8) + (9.704250 * x9) + (-60.673536 * x10) + (35.583233 * x11) + (24.922778 * x12) + (-92.120735 * x13)  >= -17.682054 ; 
consUB14:  (-82.695051 * x1) + (16.012163 * x2) + (86.759486 * x3) + (-45.103980 * x4) + (78.868323 * x5) + (-10.389885 * x6) + (51.178000 * x7) + (70.225835 * x8) + (9.704250 * x9) + (-60.673536 * x10) + (35.583233 * x11) + (24.922778 * x12) + (-92.120735 * x13)  <= 27.545358 ; 
consLB15:  (42.362079 * x1) + (-33.470317 * x2) + (-27.707416 * x3) + (16.846339 * x4) + (-31.795410 * x5) + (-79.776065 * x6) + (55.537206 * x7) + (-55.656288 * x8) + (-6.472066 * x9) + (35.965406 * x10) + (52.148576 * x11) + (26.913484 * x12) + (8.045546 * x13)  >= -14.590711 ; 
consUB15:  (42.362079 * x1) + (-33.470317 * x2) + (-27.707416 * x3) + (16.846339 * x4) + (-31.795410 * x5) + (-79.776065 * x6) + (55.537206 * x7) + (-55.656288 * x8) + (-6.472066 * x9) + (35.965406 * x10) + (52.148576 * x11) + (26.913484 * x12) + (8.045546 * x13)  <= 22.969717 ; 
consLB16:  (74.978851 * x1) + (-96.467534 * x2) + (82.192787 * x3) + (-97.661590 * x4) + (-38.058937 * x5) + (1.371098 * x6) + (-40.002891 * x7) + (8.199586 * x8) + (-23.661031 * x9) + (-75.857513 * x10) + (-87.183071 * x11) + (50.407344 * x12) + (49.041706 * x13)  >= -19.578201 ; 
consUB16:  (74.978851 * x1) + (-96.467534 * x2) + (82.192787 * x3) + (-97.661590 * x4) + (-38.058937 * x5) + (1.371098 * x6) + (-40.002891 * x7) + (8.199586 * x8) + (-23.661031 * x9) + (-75.857513 * x10) + (-87.183071 * x11) + (50.407344 * x12) + (49.041706 * x13)  <= 51.084350 ; 
consLB17:  (-75.365930 * x1) + (80.318083 * x2) + (42.036214 * x3) + (-52.429393 * x4) + (39.757094 * x5) + (-27.468961 * x6) + (55.040667 * x7) + (-63.921346 * x8) + (-4.349482 * x9) + (-27.482662 * x10) + (-18.873707 * x11) + (10.700155 * x12) + (-77.252115 * x13)  >= -75.382199 ; 
consUB17:  (-75.365930 * x1) + (80.318083 * x2) + (42.036214 * x3) + (-52.429393 * x4) + (39.757094 * x5) + (-27.468961 * x6) + (55.040667 * x7) + (-63.921346 * x8) + (-4.349482 * x9) + (-27.482662 * x10) + (-18.873707 * x11) + (10.700155 * x12) + (-77.252115 * x13)  <= 24.262963 ; 
consLB18:  (19.420599 * x1) + (87.709916 * x2) + (28.522481 * x3) + (-23.418121 * x4) + (-86.922407 * x5) + (-91.460512 * x6) + (-37.089974 * x7) + (-79.341954 * x8) + (-33.960253 * x9) + (92.398527 * x10) + (-23.653642 * x11) + (-1.594402 * x12) + (60.319790 * x13)  >= -29.046231 ; 
consLB19:  (-14.015168 * x1) + (-45.450826 * x2) + (73.298326 * x3) + (14.940031 * x4) + (-66.119283 * x5) + (95.674511 * x6) + (11.646523 * x7) + (85.050667 * x8) + (40.498744 * x9) + (2.406857 * x10) + (-76.169521 * x11) + (70.766442 * x12) + (-77.405656 * x13)  >= -26.765643 ; 
consUB19:  (-14.015168 * x1) + (-45.450826 * x2) + (73.298326 * x3) + (14.940031 * x4) + (-66.119283 * x5) + (95.674511 * x6) + (11.646523 * x7) + (85.050667 * x8) + (40.498744 * x9) + (2.406857 * x10) + (-76.169521 * x11) + (70.766442 * x12) + (-77.405656 * x13)  <= 71.063914 ; 
consLB20:  (42.200893 * x1) + (60.041706 * x2) + (-31.179315 * x3) + (68.611430 * x4) + (-15.406340 * x5) + (9.708533 * x6) + (35.665093 * x7) + (-39.379323 * x8) + (-89.836533 * x9) + (4.122216 * x10) + (-92.115641 * x11) + (-30.600889 * x12) + (-67.680939 * x13)  >= -80.488582 ; 
consUB20:  (42.200893 * x1) + (60.041706 * x2) + (-31.179315 * x3) + (68.611430 * x4) + (-15.406340 * x5) + (9.708533 * x6) + (35.665093 * x7) + (-39.379323 * x8) + (-89.836533 * x9) + (4.122216 * x10) + (-92.115641 * x11) + (-30.600889 * x12) + (-67.680939 * x13)  <= 27.460403 ; 
consLB21:  (-65.612693 * x1) + (-65.995241 * x2) + (32.385573 * x3) + (52.729805 * x4) + (-72.640303 * x5) + (-21.662159 * x6) + (-87.443858 * x7) + (59.050171 * x8) + (-33.003332 * x9) + (-42.077737 * x10) + (-75.951863 * x11) + (97.970052 * x12) + (-5.560571 * x13)  >= -38.731414 ; 
consUB21:  (-65.612693 * x1) + (-65.995241 * x2) + (32.385573 * x3) + (52.729805 * x4) + (-72.640303 * x5) + (-21.662159 * x6) + (-87.443858 * x7) + (59.050171 * x8) + (-33.003332 * x9) + (-42.077737 * x10) + (-75.951863 * x11) + (97.970052 * x12) + (-5.560571 * x13)  <= 38.305434 ; 
consLB22:  (41.541420 * x1) + (23.597585 * x2) + (-51.018417 * x3) + (-5.280931 * x4) + (76.959554 * x5) + (97.144481 * x6) + (69.163557 * x7) + (-0.614282 * x8) + (98.817427 * x9) + (-74.470577 * x10) + (64.441561 * x11) + (-38.603017 * x12) + (13.068104 * x13)  >= -59.308743 ; 
consUB22:  (41.541420 * x1) + (23.597585 * x2) + (-51.018417 * x3) + (-5.280931 * x4) + (76.959554 * x5) + (97.144481 * x6) + (69.163557 * x7) + (-0.614282 * x8) + (98.817427 * x9) + (-74.470577 * x10) + (64.441561 * x11) + (-38.603017 * x12) + (13.068104 * x13)  <= 69.700282 ; 
consLB23:  (-35.094214 * x1) + (9.005857 * x2) + (40.679514 * x3) + (-59.453177 * x4) + (-85.199882 * x5) + (25.805140 * x6) + (65.935917 * x7) + (-53.485942 * x8) + (23.771394 * x9) + (54.352954 * x10) + (91.172213 * x11) + (77.170582 * x12) + (-30.926202 * x13)  >= -57.694912 ; 
consUB23:  (-35.094214 * x1) + (9.005857 * x2) + (40.679514 * x3) + (-59.453177 * x4) + (-85.199882 * x5) + (25.805140 * x6) + (65.935917 * x7) + (-53.485942 * x8) + (23.771394 * x9) + (54.352954 * x10) + (91.172213 * x11) + (77.170582 * x12) + (-30.926202 * x13)  <= 54.453707 ; 
consLB24:  (-32.320003 * x1) + (-34.642282 * x2) + (88.725420 * x3) + (-22.030723 * x4) + (-88.539832 * x5) + (92.513647 * x6) + (-11.765217 * x7) + (-14.658069 * x8) + (81.576276 * x9) + (29.897995 * x10) + (34.880333 * x11) + (-38.362271 * x12) + (-58.756845 * x13)  >= -73.555468 ; 
consLB25:  (-3.023633 * x1) + (80.501140 * x2) + (29.116876 * x3) + (17.966867 * x4) + (-68.669492 * x5) + (-7.956667 * x6) + (10.813741 * x7) + (-20.091016 * x8) + (-96.027665 * x9) + (7.277510 * x10) + (-61.072702 * x11) + (-60.410063 * x12) + (-89.259562 * x13)  >= -67.049433 ; 
consUB25:  (-3.023633 * x1) + (80.501140 * x2) + (29.116876 * x3) + (17.966867 * x4) + (-68.669492 * x5) + (-7.956667 * x6) + (10.813741 * x7) + (-20.091016 * x8) + (-96.027665 * x9) + (7.277510 * x10) + (-61.072702 * x11) + (-60.410063 * x12) + (-89.259562 * x13)  <= 27.342384 ; 
consLB26:  (-32.085710 * x1) + (66.715057 * x2) + (-7.624498 * x3) + (94.222245 * x4) + (-31.494271 * x5) + (-24.938032 * x6) + (93.040836 * x7) + (-31.742455 * x8) + (0.762535 * x9) + (2.094463 * x10) + (84.217488 * x11) + (-48.548258 * x12) + (84.776952 * x13)  >= -41.955416 ; 
consUB26:  (-32.085710 * x1) + (66.715057 * x2) + (-7.624498 * x3) + (94.222245 * x4) + (-31.494271 * x5) + (-24.938032 * x6) + (93.040836 * x7) + (-31.742455 * x8) + (0.762535 * x9) + (2.094463 * x10) + (84.217488 * x11) + (-48.548258 * x12) + (84.776952 * x13)  <= 21.588872 ; 
consUB27:  (-72.514948 * x1) + (-2.854183 * x2) + (-55.200751 * x3) + (-87.123506 * x4) + (54.046458 * x5) + (82.448453 * x6) + (79.652860 * x7) + (-81.672531 * x8) + (5.072545 * x9) + (-65.694706 * x10) + (24.662741 * x11) + (77.866972 * x12) + (19.497974 * x13)  <= 88.876166 ; 
consLB28:  (36.267230 * x1) + (-26.636922 * x2) + (-99.799219 * x3) + (-83.203934 * x4) + (-25.060276 * x5) + (-22.155686 * x6) + (-93.579973 * x7) + (23.716409 * x8) + (-14.031178 * x9) + (-20.921551 * x10) + (15.144552 * x11) + (25.206802 * x12) + (65.366450 * x13)  >= -30.411878 ; 
consUB28:  (36.267230 * x1) + (-26.636922 * x2) + (-99.799219 * x3) + (-83.203934 * x4) + (-25.060276 * x5) + (-22.155686 * x6) + (-93.579973 * x7) + (23.716409 * x8) + (-14.031178 * x9) + (-20.921551 * x10) + (15.144552 * x11) + (25.206802 * x12) + (65.366450 * x13)  <= 10.276381 ; 
consLB29:  (82.253141 * x1) + (-24.396803 * x2) + (7.519795 * x3) + (1.539265 * x4) + (-2.168688 * x5) + (-5.556145 * x6) + (-96.451049 * x7) + (-34.118785 * x8) + (-81.474211 * x9) + (-46.413350 * x10) + (95.475452 * x11) + (2.024624 * x12) + (22.127181 * x13)  >= -41.731541 ; 
consUB29:  (82.253141 * x1) + (-24.396803 * x2) + (7.519795 * x3) + (1.539265 * x4) + (-2.168688 * x5) + (-5.556145 * x6) + (-96.451049 * x7) + (-34.118785 * x8) + (-81.474211 * x9) + (-46.413350 * x10) + (95.475452 * x11) + (2.024624 * x12) + (22.127181 * x13)  <= 37.558760 ; 
consLB30:  (71.774917 * x1) + (60.058560 * x2) + (38.513320 * x3) + (-86.063148 * x4) + (-95.351350 * x5) + (-94.774901 * x6) + (32.584493 * x7) + (-25.150561 * x8) + (68.296436 * x9) + (6.480237 * x10) + (52.868748 * x11) + (26.940111 * x12) + (-1.407481 * x13)  >= -72.058855 ; 
consUB30:  (71.774917 * x1) + (60.058560 * x2) + (38.513320 * x3) + (-86.063148 * x4) + (-95.351350 * x5) + (-94.774901 * x6) + (32.584493 * x7) + (-25.150561 * x8) + (68.296436 * x9) + (6.480237 * x10) + (52.868748 * x11) + (26.940111 * x12) + (-1.407481 * x13)  <= 1.576658 ; 
consLB31:  (37.175901 * x1) + (98.210735 * x2) + (23.404554 * x3) + (-9.421701 * x4) + (42.560776 * x5) + (-96.329139 * x6) + (-89.836289 * x7) + (94.210122 * x8) + (44.148527 * x9) + (-68.587533 * x10) + (-20.705426 * x11) + (48.600380 * x12) + (-95.744732 * x13)  >= -1.235459 ; 
consUB31:  (37.175901 * x1) + (98.210735 * x2) + (23.404554 * x3) + (-9.421701 * x4) + (42.560776 * x5) + (-96.329139 * x6) + (-89.836289 * x7) + (94.210122 * x8) + (44.148527 * x9) + (-68.587533 * x10) + (-20.705426 * x11) + (48.600380 * x12) + (-95.744732 * x13)  <= 37.398615 ; 
consUB32:  (15.053609 * x1) + (67.221904 * x2) + (-81.815307 * x3) + (-77.825160 * x4) + (5.738647 * x5) + (-38.532258 * x6) + (30.936889 * x7) + (-19.392108 * x8) + (44.357495 * x9) + (-72.505029 * x10) + (18.833630 * x11) + (-13.510582 * x12) + (97.829897 * x13)  <= 94.309200 ; 
consLB33:  (1.212110 * x1) + (-89.625428 * x2) + (-57.253931 * x3) + (92.123849 * x4) + (3.067996 * x5) + (-61.650292 * x6) + (-99.139356 * x7) + (-52.238459 * x8) + (97.021125 * x9) + (-4.404145 * x10) + (-51.846711 * x11) + (-24.821717 * x12) + (-36.691773 * x13)  >= -59.825005 ; 
consUB33:  (1.212110 * x1) + (-89.625428 * x2) + (-57.253931 * x3) + (92.123849 * x4) + (3.067996 * x5) + (-61.650292 * x6) + (-99.139356 * x7) + (-52.238459 * x8) + (97.021125 * x9) + (-4.404145 * x10) + (-51.846711 * x11) + (-24.821717 * x12) + (-36.691773 * x13)  <= 94.592003 ; 
consLB34:  (-82.293019 * x1) + (13.758695 * x2) + (70.760116 * x3) + (-10.225812 * x4) + (93.190854 * x5) + (84.362444 * x6) + (26.139505 * x7) + (-34.900174 * x8) + (-74.844569 * x9) + (21.459294 * x10) + (-67.054042 * x11) + (21.739270 * x12) + (-0.855019 * x13)  >= -50.159001 ; 
consUB34:  (-82.293019 * x1) + (13.758695 * x2) + (70.760116 * x3) + (-10.225812 * x4) + (93.190854 * x5) + (84.362444 * x6) + (26.139505 * x7) + (-34.900174 * x8) + (-74.844569 * x9) + (21.459294 * x10) + (-67.054042 * x11) + (21.739270 * x12) + (-0.855019 * x13)  <= 10.948643 ; 
consLB36:  (-3.678711 * x1) + (79.123588 * x2) + (-68.077338 * x3) + (-52.992489 * x4) + (43.034303 * x5) + (96.399225 * x6) + (37.677467 * x7) + (61.976992 * x8) + (92.468873 * x9) + (79.875339 * x10) + (-82.739227 * x11) + (30.909127 * x12) + (-54.772726 * x13)  >= -26.858690 ; 
consUB36:  (-3.678711 * x1) + (79.123588 * x2) + (-68.077338 * x3) + (-52.992489 * x4) + (43.034303 * x5) + (96.399225 * x6) + (37.677467 * x7) + (61.976992 * x8) + (92.468873 * x9) + (79.875339 * x10) + (-82.739227 * x11) + (30.909127 * x12) + (-54.772726 * x13)  <= 7.196848 ; 
consLB37:  (-86.877411 * x1) + (-16.398530 * x2) + (-28.466538 * x3) + (19.438352 * x4) + (48.798951 * x5) + (-17.376479 * x6) + (22.171198 * x7) + (-55.724581 * x8) + (-41.123157 * x9) + (-5.395351 * x10) + (99.776031 * x11) + (-21.089213 * x12) + (-99.415868 * x13)  >= -38.098283 ; 
consUB37:  (-86.877411 * x1) + (-16.398530 * x2) + (-28.466538 * x3) + (19.438352 * x4) + (48.798951 * x5) + (-17.376479 * x6) + (22.171198 * x7) + (-55.724581 * x8) + (-41.123157 * x9) + (-5.395351 * x10) + (99.776031 * x11) + (-21.089213 * x12) + (-99.415868 * x13)  <= 8.680602 ; 
consUB38:  (-57.061996 * x1) + (-20.802124 * x2) + (-70.860946 * x3) + (35.103394 * x4) + (8.852212 * x5) + (-83.052222 * x6) + (11.868304 * x7) + (35.656489 * x8) + (32.890882 * x9) + (30.563474 * x10) + (-97.701687 * x11) + (65.092854 * x12) + (-4.004381 * x13)  <= 67.203778 ; 
consLB39:  (49.158895 * x1) + (93.197876 * x2) + (-47.585932 * x3) + (-36.490222 * x4) + (-27.136173 * x5) + (6.704895 * x6) + (55.343142 * x7) + (-78.918647 * x8) + (85.223659 * x9) + (-13.926870 * x10) + (-44.751174 * x11) + (-12.824639 * x12) + (-64.539926 * x13)  >= -91.678227 ; 
consUB39:  (49.158895 * x1) + (93.197876 * x2) + (-47.585932 * x3) + (-36.490222 * x4) + (-27.136173 * x5) + (6.704895 * x6) + (55.343142 * x7) + (-78.918647 * x8) + (85.223659 * x9) + (-13.926870 * x10) + (-44.751174 * x11) + (-12.824639 * x12) + (-64.539926 * x13)  <= 15.737384 ; 
consLB40:  (20.473873 * x1) + (-74.748031 * x2) + (35.716661 * x3) + (94.643374 * x4) + (36.149574 * x5) + (66.586710 * x6) + (-34.593860 * x7) + (-45.227648 * x8) + (40.854866 * x9) + (87.303145 * x10) + (-1.255542 * x11) + (11.599787 * x12) + (7.678965 * x13)  >= -56.887268 ; 
consUB40:  (20.473873 * x1) + (-74.748031 * x2) + (35.716661 * x3) + (94.643374 * x4) + (36.149574 * x5) + (66.586710 * x6) + (-34.593860 * x7) + (-45.227648 * x8) + (40.854866 * x9) + (87.303145 * x10) + (-1.255542 * x11) + (11.599787 * x12) + (7.678965 * x13)  <= 39.499286 ; 
consLB41:  (56.844020 * x1) + (-48.859182 * x2) + (-4.492579 * x3) + (-95.782808 * x4) + (-93.804826 * x5) + (74.187396 * x6) + (0.175043 * x7) + (41.968831 * x8) + (43.111852 * x9) + (20.875885 * x10) + (32.180830 * x11) + (70.228951 * x12) + (42.899707 * x13)  >= -19.262895 ; 
consUB41:  (56.844020 * x1) + (-48.859182 * x2) + (-4.492579 * x3) + (-95.782808 * x4) + (-93.804826 * x5) + (74.187396 * x6) + (0.175043 * x7) + (41.968831 * x8) + (43.111852 * x9) + (20.875885 * x10) + (32.180830 * x11) + (70.228951 * x12) + (42.899707 * x13)  <= 32.350626 ; 
consLB42:  (5.978940 * x1) + (-42.384189 * x2) + (53.183502 * x3) + (-24.455572 * x4) + (21.898920 * x5) + (61.520763 * x6) + (36.105249 * x7) + (-1.573555 * x8) + (-72.992936 * x9) + (35.310763 * x10) + (-32.696722 * x11) + (-70.158787 * x12) + (-64.009107 * x13)  >= -42.579123 ; 
consUB42:  (5.978940 * x1) + (-42.384189 * x2) + (53.183502 * x3) + (-24.455572 * x4) + (21.898920 * x5) + (61.520763 * x6) + (36.105249 * x7) + (-1.573555 * x8) + (-72.992936 * x9) + (35.310763 * x10) + (-32.696722 * x11) + (-70.158787 * x12) + (-64.009107 * x13)  <= 6.930972 ; 
consLB43:  (-45.182695 * x1) + (40.746155 * x2) + (-87.889820 * x3) + (24.254029 * x4) + (61.252161 * x5) + (-42.871274 * x6) + (54.876780 * x7) + (-96.646426 * x8) + (79.007401 * x9) + (68.780238 * x10) + (40.524707 * x11) + (52.323496 * x12) + (33.103863 * x13)  >= -43.856346 ; 
consUB43:  (-45.182695 * x1) + (40.746155 * x2) + (-87.889820 * x3) + (24.254029 * x4) + (61.252161 * x5) + (-42.871274 * x6) + (54.876780 * x7) + (-96.646426 * x8) + (79.007401 * x9) + (68.780238 * x10) + (40.524707 * x11) + (52.323496 * x12) + (33.103863 * x13)  <= 89.184948 ; 
consLB44:  (29.537348 * x1) + (86.446434 * x2) + (-0.849037 * x3) + (16.262353 * x4) + (-29.025131 * x5) + (-54.332603 * x6) + (-35.595954 * x7) + (17.599637 * x8) + (-19.229764 * x9) + (-68.740322 * x10) + (9.936468 * x11) + (94.071269 * x12) + (80.169792 * x13)  >= -50.218992 ; 
consUB44:  (29.537348 * x1) + (86.446434 * x2) + (-0.849037 * x3) + (16.262353 * x4) + (-29.025131 * x5) + (-54.332603 * x6) + (-35.595954 * x7) + (17.599637 * x8) + (-19.229764 * x9) + (-68.740322 * x10) + (9.936468 * x11) + (94.071269 * x12) + (80.169792 * x13)  <= 9.877436 ; 
consLB45:  (54.847307 * x1) + (-87.274000 * x2) + (39.847208 * x3) + (51.346603 * x4) + (-50.272344 * x5) + (-81.629622 * x6) + (1.290432 * x7) + (20.835757 * x8) + (-80.251262 * x9) + (59.826222 * x10) + (75.215043 * x11) + (-15.725605 * x12) + (21.754797 * x13)  >= -47.950125 ; 
consLB46:  (-27.985024 * x1) + (-89.644886 * x2) + (85.555347 * x3) + (-1.568766 * x4) + (37.443430 * x5) + (66.830448 * x6) + (18.545526 * x7) + (66.658902 * x8) + (85.627464 * x9) + (51.826951 * x10) + (-16.831582 * x11) + (-88.433929 * x12) + (91.624325 * x13)  >= -57.709593 ; 
consUB46:  (-27.985024 * x1) + (-89.644886 * x2) + (85.555347 * x3) + (-1.568766 * x4) + (37.443430 * x5) + (66.830448 * x6) + (18.545526 * x7) + (66.658902 * x8) + (85.627464 * x9) + (51.826951 * x10) + (-16.831582 * x11) + (-88.433929 * x12) + (91.624325 * x13)  <= 90.143111 ; 
consUB47:  (-16.680905 * x1) + (34.474561 * x2) + (6.508026 * x3) + (-93.746324 * x4) + (-5.323486 * x5) + (-48.980092 * x6) + (82.998344 * x7) + (-39.371321 * x8) + (-95.732335 * x9) + (8.260006 * x10) + (11.576533 * x11) + (-43.441622 * x12) + (-25.822688 * x13)  <= 49.222255 ; 
consLB48:  (-32.306939 * x1) + (64.762827 * x2) + (-53.520668 * x3) + (-25.007125 * x4) + (-69.782343 * x5) + (47.286793 * x6) + (64.210735 * x7) + (79.014007 * x8) + (-97.193551 * x9) + (67.970844 * x10) + (61.510846 * x11) + (7.551684 * x12) + (-5.544204 * x13)  >= -16.912751 ; 
consUB48:  (-32.306939 * x1) + (64.762827 * x2) + (-53.520668 * x3) + (-25.007125 * x4) + (-69.782343 * x5) + (47.286793 * x6) + (64.210735 * x7) + (79.014007 * x8) + (-97.193551 * x9) + (67.970844 * x10) + (61.510846 * x11) + (7.551684 * x12) + (-5.544204 * x13)  <= 43.919716 ; 
consLB49:  (53.917019 * x1) + (-16.223602 * x2) + (-39.815823 * x3) + (96.898452 * x4) + (73.524448 * x5) + (-41.971595 * x6) + (-78.470934 * x7) + (-22.667686 * x8) + (-66.480155 * x9) + (-77.549599 * x10) + (-43.500444 * x11) + (77.118219 * x12) + (-19.596729 * x13)  >= -58.369251 ; 
consUB49:  (53.917019 * x1) + (-16.223602 * x2) + (-39.815823 * x3) + (96.898452 * x4) + (73.524448 * x5) + (-41.971595 * x6) + (-78.470934 * x7) + (-22.667686 * x8) + (-66.480155 * x9) + (-77.549599 * x10) + (-43.500444 * x11) + (77.118219 * x12) + (-19.596729 * x13)  <= 51.308191 ; 
consUB50:  (-17.803671 * x1) + (-84.008708 * x2) + (87.854163 * x3) + (92.910273 * x4) + (-7.902061 * x5) + (-55.030801 * x6) + (83.387383 * x7) + (-35.691533 * x8) + (-67.466585 * x9) + (43.094215 * x10) + (-4.750148 * x11) + (-2.754297 * x12) + (27.452864 * x13)  <= 21.283044 ; 
consLB51:  (19.073620 * x1) + (4.892184 * x2) + (-34.262766 * x3) + (-51.099902 * x4) + (-85.812376 * x5) + (17.266007 * x6) + (25.634806 * x7) + (-66.043434 * x8) + (73.915491 * x9) + (8.210904 * x10) + (4.100468 * x11) + (9.620271 * x12) + (10.858298 * x13)  >= -60.813037 ; 
consUB51:  (19.073620 * x1) + (4.892184 * x2) + (-34.262766 * x3) + (-51.099902 * x4) + (-85.812376 * x5) + (17.266007 * x6) + (25.634806 * x7) + (-66.043434 * x8) + (73.915491 * x9) + (8.210904 * x10) + (4.100468 * x11) + (9.620271 * x12) + (10.858298 * x13)  <= 67.286470 ; 
consLB52:  (-12.690659 * x1) + (88.376074 * x2) + (-41.397272 * x3) + (-65.540934 * x4) + (-23.923131 * x5) + (23.285153 * x6) + (-27.611613 * x7) + (96.205948 * x8) + (-90.624321 * x9) + (-35.159056 * x10) + (13.286235 * x11) + (1.547049 * x12) + (69.722583 * x13)  >= -76.392683 ; 
consLB53:  (14.102171 * x1) + (-41.129705 * x2) + (-74.252201 * x3) + (-43.222004 * x4) + (-48.319558 * x5) + (22.537344 * x6) + (-89.889817 * x7) + (77.945840 * x8) + (30.349256 * x9) + (-46.585931 * x10) + (42.699120 * x11) + (74.005761 * x12) + (-27.051632 * x13)  >= -34.521522 ; 
consUB53:  (14.102171 * x1) + (-41.129705 * x2) + (-74.252201 * x3) + (-43.222004 * x4) + (-48.319558 * x5) + (22.537344 * x6) + (-89.889817 * x7) + (77.945840 * x8) + (30.349256 * x9) + (-46.585931 * x10) + (42.699120 * x11) + (74.005761 * x12) + (-27.051632 * x13)  <= 36.934018 ; 
consLB54:  (16.155035 * x1) + (-5.038584 * x2) + (-77.515972 * x3) + (17.757902 * x4) + (-36.955098 * x5) + (-91.021407 * x6) + (0.618151 * x7) + (-3.101892 * x8) + (-57.863738 * x9) + (41.793043 * x10) + (-48.021916 * x11) + (-91.117921 * x12) + (-31.074049 * x13)  >= -24.826306 ; 
consUB54:  (16.155035 * x1) + (-5.038584 * x2) + (-77.515972 * x3) + (17.757902 * x4) + (-36.955098 * x5) + (-91.021407 * x6) + (0.618151 * x7) + (-3.101892 * x8) + (-57.863738 * x9) + (41.793043 * x10) + (-48.021916 * x11) + (-91.117921 * x12) + (-31.074049 * x13)  <= 36.447600 ; 
consLB55:  (-28.861055 * x1) + (-48.105948 * x2) + (28.624210 * x3) + (-63.569341 * x4) + (64.471804 * x5) + (75.752935 * x6) + (2.025685 * x7) + (-11.275173 * x8) + (89.524854 * x9) + (63.032063 * x10) + (-96.616079 * x11) + (53.433040 * x12) + (94.453459 * x13)  >= -94.749722 ; 
consUB55:  (-28.861055 * x1) + (-48.105948 * x2) + (28.624210 * x3) + (-63.569341 * x4) + (64.471804 * x5) + (75.752935 * x6) + (2.025685 * x7) + (-11.275173 * x8) + (89.524854 * x9) + (63.032063 * x10) + (-96.616079 * x11) + (53.433040 * x12) + (94.453459 * x13)  <= 42.461706 ; 
consLB56:  (-36.163470 * x1) + (38.594718 * x2) + (64.833246 * x3) + (69.311696 * x4) + (32.014007 * x5) + (-7.652024 * x6) + (34.758868 * x7) + (-5.885052 * x8) + (71.084898 * x9) + (20.799217 * x10) + (95.145156 * x11) + (23.680248 * x12) + (-19.184190 * x13)  >= -56.824935 ; 
consUB56:  (-36.163470 * x1) + (38.594718 * x2) + (64.833246 * x3) + (69.311696 * x4) + (32.014007 * x5) + (-7.652024 * x6) + (34.758868 * x7) + (-5.885052 * x8) + (71.084898 * x9) + (20.799217 * x10) + (95.145156 * x11) + (23.680248 * x12) + (-19.184190 * x13)  <= 24.710731 ; 
consLB57:  (-49.306057 * x1) + (-26.269329 * x2) + (-86.971212 * x3) + (-69.024028 * x4) + (70.419087 * x5) + (-68.893524 * x6) + (-27.765950 * x7) + (-4.530112 * x8) + (-12.630468 * x9) + (-80.863811 * x10) + (-5.319072 * x11) + (8.580247 * x12) + (-80.613027 * x13)  >= -73.418734 ; 
consUB57:  (-49.306057 * x1) + (-26.269329 * x2) + (-86.971212 * x3) + (-69.024028 * x4) + (70.419087 * x5) + (-68.893524 * x6) + (-27.765950 * x7) + (-4.530112 * x8) + (-12.630468 * x9) + (-80.863811 * x10) + (-5.319072 * x11) + (8.580247 * x12) + (-80.613027 * x13)  <= 79.594250 ; 
consLB58:  (82.007404 * x1) + (31.867667 * x2) + (-97.446497 * x3) + (16.517318 * x4) + (-45.798132 * x5) + (-89.140159 * x6) + (2.411626 * x7) + (-55.769569 * x8) + (84.996040 * x9) + (-7.354325 * x10) + (-7.002129 * x11) + (62.466400 * x12) + (85.358103 * x13)  >= -6.003814 ; 
consUB58:  (82.007404 * x1) + (31.867667 * x2) + (-97.446497 * x3) + (16.517318 * x4) + (-45.798132 * x5) + (-89.140159 * x6) + (2.411626 * x7) + (-55.769569 * x8) + (84.996040 * x9) + (-7.354325 * x10) + (-7.002129 * x11) + (62.466400 * x12) + (85.358103 * x13)  <= 53.287484 ; 
consLB59:  (-48.078786 * x1) + (41.307148 * x2) + (8.954684 * x3) + (-72.950100 * x4) + (-12.146258 * x5) + (13.683097 * x6) + (33.360568 * x7) + (-19.744529 * x8) + (-66.640876 * x9) + (-64.820412 * x10) + (-35.263663 * x11) + (38.149720 * x12) + (-34.765262 * x13)  >= -32.373876 ; 
consUB59:  (-48.078786 * x1) + (41.307148 * x2) + (8.954684 * x3) + (-72.950100 * x4) + (-12.146258 * x5) + (13.683097 * x6) + (33.360568 * x7) + (-19.744529 * x8) + (-66.640876 * x9) + (-64.820412 * x10) + (-35.263663 * x11) + (38.149720 * x12) + (-34.765262 * x13)  <= 90.918083 ; 
consLB60:  (13.104359 * x1) + (52.906629 * x2) + (5.623979 * x3) + (92.591186 * x4) + (-92.567772 * x5) + (69.837453 * x6) + (-85.842283 * x7) + (-54.475604 * x8) + (-50.534977 * x9) + (-54.609407 * x10) + (-67.049793 * x11) + (44.591697 * x12) + (62.020437 * x13)  >= -75.750085 ; 
consUB60:  (13.104359 * x1) + (52.906629 * x2) + (5.623979 * x3) + (92.591186 * x4) + (-92.567772 * x5) + (69.837453 * x6) + (-85.842283 * x7) + (-54.475604 * x8) + (-50.534977 * x9) + (-54.609407 * x10) + (-67.049793 * x11) + (44.591697 * x12) + (62.020437 * x13)  <= 16.887889 ; 
consUB61:  (39.438508 * x1) + (-26.589645 * x2) + (14.752560 * x3) + (-52.127249 * x4) + (6.023482 * x5) + (-96.420019 * x6) + (-59.016623 * x7) + (19.589968 * x8) + (-87.372260 * x9) + (2.793404 * x10) + (38.377677 * x11) + (-72.115096 * x12) + (56.842605 * x13)  <= 53.991969 ; 
consLB62:  (-25.262927 * x1) + (34.424865 * x2) + (94.817232 * x3) + (32.573533 * x4) + (-92.925056 * x5) + (8.173694 * x6) + (13.469921 * x7) + (-12.191821 * x8) + (4.081224 * x9) + (88.607683 * x10) + (81.022110 * x11) + (-24.054516 * x12) + (39.529768 * x13)  >= -60.496260 ; 
consUB62:  (-25.262927 * x1) + (34.424865 * x2) + (94.817232 * x3) + (32.573533 * x4) + (-92.925056 * x5) + (8.173694 * x6) + (13.469921 * x7) + (-12.191821 * x8) + (4.081224 * x9) + (88.607683 * x10) + (81.022110 * x11) + (-24.054516 * x12) + (39.529768 * x13)  <= 44.678124 ; 
consLB63:  (-63.109865 * x1) + (84.521609 * x2) + (-86.600744 * x3) + (-27.188428 * x4) + (93.902970 * x5) + (-41.680852 * x6) + (38.938915 * x7) + (-37.603580 * x8) + (-98.942344 * x9) + (32.383651 * x10) + (-63.073027 * x11) + (95.954422 * x12) + (-50.325198 * x13)  >= -99.817377 ; 
consUB63:  (-63.109865 * x1) + (84.521609 * x2) + (-86.600744 * x3) + (-27.188428 * x4) + (93.902970 * x5) + (-41.680852 * x6) + (38.938915 * x7) + (-37.603580 * x8) + (-98.942344 * x9) + (32.383651 * x10) + (-63.073027 * x11) + (95.954422 * x12) + (-50.325198 * x13)  <= 25.796992 ; 
consLB64:  (48.018346 * x1) + (89.796600 * x2) + (62.465964 * x3) + (-1.087030 * x4) + (-58.588118 * x5) + (-92.052793 * x6) + (23.357073 * x7) + (-43.496462 * x8) + (98.682015 * x9) + (31.510600 * x10) + (30.109357 * x11) + (38.268564 * x12) + (-65.577726 * x13)  >= -64.073215 ; 
consUB64:  (48.018346 * x1) + (89.796600 * x2) + (62.465964 * x3) + (-1.087030 * x4) + (-58.588118 * x5) + (-92.052793 * x6) + (23.357073 * x7) + (-43.496462 * x8) + (98.682015 * x9) + (31.510600 * x10) + (30.109357 * x11) + (38.268564 * x12) + (-65.577726 * x13)  <= 93.671537 ; 
consLB65:  (82.568775 * x1) + (96.042257 * x2) + (-74.960859 * x3) + (-91.810486 * x4) + (-16.573898 * x5) + (-0.691876 * x6) + (98.254230 * x7) + (-8.057195 * x8) + (52.117386 * x9) + (-10.039476 * x10) + (52.931015 * x11) + (-38.643006 * x12) + (-13.241734 * x13)  >= -84.803479 ; 
consLB66:  (-58.239151 * x1) + (-80.791052 * x2) + (83.507770 * x3) + (92.529610 * x4) + (-47.189242 * x5) + (47.257453 * x6) + (-5.895433 * x7) + (-33.427884 * x8) + (-90.104202 * x9) + (-33.396715 * x10) + (33.803345 * x11) + (5.015195 * x12) + (19.481789 * x13)  >= -31.800615 ; 
consUB66:  (-58.239151 * x1) + (-80.791052 * x2) + (83.507770 * x3) + (92.529610 * x4) + (-47.189242 * x5) + (47.257453 * x6) + (-5.895433 * x7) + (-33.427884 * x8) + (-90.104202 * x9) + (-33.396715 * x10) + (33.803345 * x11) + (5.015195 * x12) + (19.481789 * x13)  <= 92.236511 ; 
consLB67:  (77.104355 * x1) + (-17.141345 * x2) + (41.564606 * x3) + (-68.372186 * x4) + (-12.276043 * x5) + (87.293575 * x6) + (-32.059870 * x7) + (77.800901 * x8) + (29.419436 * x9) + (1.822569 * x10) + (63.027006 * x11) + (-26.044566 * x12) + (-66.046159 * x13)  >= -32.744411 ; 
consLB68:  (-67.973767 * x1) + (-99.453103 * x2) + (48.657837 * x3) + (10.994704 * x4) + (90.943694 * x5) + (85.654875 * x6) + (13.001974 * x7) + (56.832233 * x8) + (-3.361660 * x9) + (-48.957554 * x10) + (-56.794291 * x11) + (90.406562 * x12) + (-66.149049 * x13)  >= -59.040159 ; 
consUB68:  (-67.973767 * x1) + (-99.453103 * x2) + (48.657837 * x3) + (10.994704 * x4) + (90.943694 * x5) + (85.654875 * x6) + (13.001974 * x7) + (56.832233 * x8) + (-3.361660 * x9) + (-48.957554 * x10) + (-56.794291 * x11) + (90.406562 * x12) + (-66.149049 * x13)  <= 48.866869 ; 
consLB69:  (-74.588106 * x1) + (74.862172 * x2) + (2.681732 * x3) + (-55.848579 * x4) + (-35.251545 * x5) + (-35.276944 * x6) + (-94.030568 * x7) + (-42.268456 * x8) + (43.442936 * x9) + (-55.376237 * x10) + (28.439696 * x11) + (51.966903 * x12) + (-37.577469 * x13)  >= -18.330161 ; 
consUB69:  (-74.588106 * x1) + (74.862172 * x2) + (2.681732 * x3) + (-55.848579 * x4) + (-35.251545 * x5) + (-35.276944 * x6) + (-94.030568 * x7) + (-42.268456 * x8) + (43.442936 * x9) + (-55.376237 * x10) + (28.439696 * x11) + (51.966903 * x12) + (-37.577469 * x13)  <= 90.062721 ; 
consLB70:  (-66.145920 * x1) + (-20.764621 * x2) + (36.061287 * x3) + (-89.929205 * x4) + (80.191180 * x5) + (40.433759 * x6) + (-10.457625 * x7) + (-35.476945 * x8) + (-66.673082 * x9) + (-31.701235 * x10) + (-99.701864 * x11) + (-50.799945 * x12) + (-86.953591 * x13)  >= -94.308215 ; 
consUB70:  (-66.145920 * x1) + (-20.764621 * x2) + (36.061287 * x3) + (-89.929205 * x4) + (80.191180 * x5) + (40.433759 * x6) + (-10.457625 * x7) + (-35.476945 * x8) + (-66.673082 * x9) + (-31.701235 * x10) + (-99.701864 * x11) + (-50.799945 * x12) + (-86.953591 * x13)  <= 82.710645 ; 
consLB71:  (18.192488 * x1) + (-16.450285 * x2) + (-65.895570 * x3) + (-8.117388 * x4) + (71.141530 * x5) + (48.093851 * x6) + (-59.009353 * x7) + (-30.160208 * x8) + (-73.016200 * x9) + (94.886449 * x10) + (-20.806424 * x11) + (57.030267 * x12) + (-53.518741 * x13)  >= -22.355777 ; 
consUB71:  (18.192488 * x1) + (-16.450285 * x2) + (-65.895570 * x3) + (-8.117388 * x4) + (71.141530 * x5) + (48.093851 * x6) + (-59.009353 * x7) + (-30.160208 * x8) + (-73.016200 * x9) + (94.886449 * x10) + (-20.806424 * x11) + (57.030267 * x12) + (-53.518741 * x13)  <= 15.858449 ; 
consLB72:  (-26.725953 * x1) + (-30.547285 * x2) + (-93.288558 * x3) + (45.625324 * x4) + (-77.268030 * x5) + (54.912547 * x6) + (42.376664 * x7) + (58.060752 * x8) + (-63.217825 * x9) + (41.653454 * x10) + (12.501697 * x11) + (-59.787532 * x12) + (97.910591 * x13)  >= -10.773580 ; 
consUB72:  (-26.725953 * x1) + (-30.547285 * x2) + (-93.288558 * x3) + (45.625324 * x4) + (-77.268030 * x5) + (54.912547 * x6) + (42.376664 * x7) + (58.060752 * x8) + (-63.217825 * x9) + (41.653454 * x10) + (12.501697 * x11) + (-59.787532 * x12) + (97.910591 * x13)  <= 47.335867 ; 
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
