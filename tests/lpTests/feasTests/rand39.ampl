var x1 , >= -51.841721 , <= 47.836243   ; 
var x2 , >= -84.826709 , <= 83.983816   ; 
var x3 , >= -84.027430 , <= 24.829714   ; 
var x4 , >= -21.443165   ; 
var x5 , >= -34.690681 , <= 74.431171   ; 
var x6 , >= -22.366558 , <= 88.520569   ; 
var x7 , >= -73.498706 , <= 35.315222   ; 
var x8 , >= -5.554756 , <= 52.910748   ; 
var x9 , >= -74.844179 , <= 88.688950   ; 
var x10 , >= -63.809416 , <= 28.468534   ; 
var x11 , >= -51.302195   ; 
var x12 , >= -60.227427 , <= 12.188418   ; 
var x13 , >= -56.515634 , <= 82.580496   ; 
var x14 , >= -22.191367 , <= 4.864951   ; 
var x15 , >= -41.460031 , <= 69.723459   ; 
var x16 , >= -13.622092 , <= 41.669524   ; 
var x17 , >= -76.138518 , <= 15.221088   ; 
var x18 , >= -50.228211 , <= 42.577608   ; 
var x19 , >= -4.865851 , <= 58.748236   ; 
var x20 , >= -51.572383 , <= 82.775269   ; 
var x21 , >= -15.250118 , <= 21.954744   ; 
var x22 , >= -69.296284 , <= 97.223666   ; 
var x23 , >= -16.915806 , <= 95.314775   ; 
var x24 , >= -97.980582 , <= 92.517206   ; 
var x25 , >= -39.389724 , <= 71.941655   ; 
var x26 , >= -26.851554 , <= 6.219777   ; 
var x27 , >= -33.161140   ; 
var x28 , <= 51.576218   ; 
# End of variable declarations 
maximize obj: 0  +( 11.776045 * x1 )  +( 80.989803 * x2 )  +( 67.887832 * x3 )  +( 45.021496 * x4 )  +( -65.887841 * x5 )  +( -78.284231 * x6 )  +( -69.880544 * x7 )  +( -60.118242 * x8 )  +( -13.930972 * x9 )  +( 65.465802 * x10 )  +( -73.407828 * x11 )  +( 19.779285 * x12 )  +( -26.655027 * x13 )  +( -45.559334 * x14 )  +( -66.706507 * x15 )  +( 53.515199 * x16 )  +( -42.494995 * x17 )  +( -24.397068 * x18 )  +( 82.013686 * x19 )  +( 9.162699 * x20 )  +( 14.237538 * x21 )  +( -85.447630 * x22 )  +( 57.838650 * x23 )  +( 58.160912 * x24 )  +( -95.396455 * x25 )  +( 13.686634 * x26 )  +( -84.742257 * x27 )  +( -81.541170 * x28 ) ; 
consLB0:  (-1.120473 * x1) + (67.578800 * x2) + (-49.452605 * x3) + (-0.666658 * x4) + (19.125376 * x5) + (-51.400687 * x6) + (69.724805 * x7) + (66.286206 * x8) + (19.761416 * x9) + (11.621176 * x10) + (-55.279358 * x11) + (81.565404 * x12) + (15.567243 * x13) + (-93.505781 * x14) + (-57.590394 * x15) + (67.989707 * x16) + (19.594989 * x17) + (-37.697865 * x18) + (-30.698123 * x19) + (-7.360936 * x20) + (-38.877194 * x21) + (82.795207 * x22) + (17.201106 * x23) + (52.490561 * x24) + (23.187404 * x25) + (95.517382 * x26) + (-19.235372 * x27) + (74.237927 * x28)  >= -15.470010 ; 
consUB0:  (-1.120473 * x1) + (67.578800 * x2) + (-49.452605 * x3) + (-0.666658 * x4) + (19.125376 * x5) + (-51.400687 * x6) + (69.724805 * x7) + (66.286206 * x8) + (19.761416 * x9) + (11.621176 * x10) + (-55.279358 * x11) + (81.565404 * x12) + (15.567243 * x13) + (-93.505781 * x14) + (-57.590394 * x15) + (67.989707 * x16) + (19.594989 * x17) + (-37.697865 * x18) + (-30.698123 * x19) + (-7.360936 * x20) + (-38.877194 * x21) + (82.795207 * x22) + (17.201106 * x23) + (52.490561 * x24) + (23.187404 * x25) + (95.517382 * x26) + (-19.235372 * x27) + (74.237927 * x28)  <= 51.432934 ; 
consLB1:  (43.278777 * x1) + (-31.160989 * x2) + (-3.926894 * x3) + (1.464728 * x4) + (-52.067455 * x5) + (95.311438 * x6) + (10.068938 * x7) + (-51.694724 * x8) + (96.317029 * x9) + (33.547019 * x10) + (14.719482 * x11) + (-57.894247 * x12) + (59.209948 * x13) + (-95.606659 * x14) + (88.291580 * x15) + (-21.101181 * x16) + (-6.654989 * x17) + (3.833801 * x18) + (91.102055 * x19) + (-26.638980 * x20) + (-62.041863 * x21) + (81.253497 * x22) + (-82.926177 * x23) + (-73.908777 * x24) + (-22.921664 * x25) + (-52.970009 * x26) + (-51.456820 * x27) + (60.413135 * x28)  >= -57.300816 ; 
consUB1:  (43.278777 * x1) + (-31.160989 * x2) + (-3.926894 * x3) + (1.464728 * x4) + (-52.067455 * x5) + (95.311438 * x6) + (10.068938 * x7) + (-51.694724 * x8) + (96.317029 * x9) + (33.547019 * x10) + (14.719482 * x11) + (-57.894247 * x12) + (59.209948 * x13) + (-95.606659 * x14) + (88.291580 * x15) + (-21.101181 * x16) + (-6.654989 * x17) + (3.833801 * x18) + (91.102055 * x19) + (-26.638980 * x20) + (-62.041863 * x21) + (81.253497 * x22) + (-82.926177 * x23) + (-73.908777 * x24) + (-22.921664 * x25) + (-52.970009 * x26) + (-51.456820 * x27) + (60.413135 * x28)  <= 44.156695 ; 
consLB2:  (9.915785 * x1) + (-69.461838 * x2) + (-16.180407 * x3) + (-68.526679 * x4) + (50.450977 * x5) + (74.417424 * x6) + (79.409185 * x7) + (-6.689034 * x8) + (49.500676 * x9) + (92.283377 * x10) + (86.615965 * x11) + (-35.925326 * x12) + (77.230084 * x13) + (-42.955271 * x14) + (-28.905119 * x15) + (73.037708 * x16) + (16.022986 * x17) + (-49.194547 * x18) + (-69.863023 * x19) + (51.024023 * x20) + (53.163983 * x21) + (73.311920 * x22) + (2.933404 * x23) + (-38.063866 * x24) + (-94.094007 * x25) + (55.490460 * x26) + (-18.669204 * x27) + (19.029926 * x28)  >= -77.472605 ; 
consUB2:  (9.915785 * x1) + (-69.461838 * x2) + (-16.180407 * x3) + (-68.526679 * x4) + (50.450977 * x5) + (74.417424 * x6) + (79.409185 * x7) + (-6.689034 * x8) + (49.500676 * x9) + (92.283377 * x10) + (86.615965 * x11) + (-35.925326 * x12) + (77.230084 * x13) + (-42.955271 * x14) + (-28.905119 * x15) + (73.037708 * x16) + (16.022986 * x17) + (-49.194547 * x18) + (-69.863023 * x19) + (51.024023 * x20) + (53.163983 * x21) + (73.311920 * x22) + (2.933404 * x23) + (-38.063866 * x24) + (-94.094007 * x25) + (55.490460 * x26) + (-18.669204 * x27) + (19.029926 * x28)  <= 28.755785 ; 
consLB3:  (99.793476 * x1) + (92.382809 * x2) + (40.819709 * x3) + (-84.705991 * x4) + (11.813866 * x5) + (-66.579546 * x6) + (-67.520634 * x7) + (80.769733 * x8) + (-94.091856 * x9) + (38.304399 * x10) + (5.750129 * x11) + (97.025453 * x12) + (68.062755 * x13) + (17.719494 * x14) + (-90.741299 * x15) + (14.532848 * x16) + (-4.269107 * x17) + (76.782720 * x18) + (73.144436 * x19) + (74.766873 * x20) + (31.417974 * x21) + (-84.302175 * x22) + (-17.282934 * x23) + (-94.027984 * x24) + (-61.734433 * x25) + (-80.115128 * x26) + (71.730931 * x27) + (88.338862 * x28)  >= -13.698162 ; 
consLB4:  (97.356602 * x1) + (97.317913 * x2) + (-3.372661 * x3) + (47.574237 * x4) + (28.844000 * x5) + (-46.492615 * x6) + (93.939135 * x7) + (90.408302 * x8) + (-15.898560 * x9) + (97.201313 * x10) + (5.458918 * x11) + (24.470665 * x12) + (71.760445 * x13) + (-41.728725 * x14) + (-95.841258 * x15) + (69.317712 * x16) + (-69.791239 * x17) + (92.340684 * x18) + (-66.746401 * x19) + (54.462713 * x20) + (71.982889 * x21) + (-83.425483 * x22) + (36.887511 * x23) + (-18.568304 * x24) + (46.218919 * x25) + (42.876578 * x26) + (9.978907 * x27) + (95.649347 * x28)  >= -51.803986 ; 
consUB4:  (97.356602 * x1) + (97.317913 * x2) + (-3.372661 * x3) + (47.574237 * x4) + (28.844000 * x5) + (-46.492615 * x6) + (93.939135 * x7) + (90.408302 * x8) + (-15.898560 * x9) + (97.201313 * x10) + (5.458918 * x11) + (24.470665 * x12) + (71.760445 * x13) + (-41.728725 * x14) + (-95.841258 * x15) + (69.317712 * x16) + (-69.791239 * x17) + (92.340684 * x18) + (-66.746401 * x19) + (54.462713 * x20) + (71.982889 * x21) + (-83.425483 * x22) + (36.887511 * x23) + (-18.568304 * x24) + (46.218919 * x25) + (42.876578 * x26) + (9.978907 * x27) + (95.649347 * x28)  <= 20.520036 ; 
consLB5:  (-95.717687 * x1) + (76.852965 * x2) + (-86.295110 * x3) + (-56.016852 * x4) + (36.855382 * x5) + (64.743915 * x6) + (-80.528567 * x7) + (86.798424 * x8) + (-30.277484 * x9) + (-19.328949 * x10) + (76.172187 * x11) + (-30.715295 * x12) + (67.484377 * x13) + (-59.311592 * x14) + (1.871785 * x15) + (-56.387327 * x16) + (72.304716 * x17) + (-50.916087 * x18) + (-68.825813 * x19) + (57.303731 * x20) + (87.023842 * x21) + (70.098484 * x22) + (93.491823 * x23) + (-1.701203 * x24) + (52.662654 * x25) + (-28.217082 * x26) + (35.881169 * x27) + (-94.018064 * x28)  >= -62.602221 ; 
consUB5:  (-95.717687 * x1) + (76.852965 * x2) + (-86.295110 * x3) + (-56.016852 * x4) + (36.855382 * x5) + (64.743915 * x6) + (-80.528567 * x7) + (86.798424 * x8) + (-30.277484 * x9) + (-19.328949 * x10) + (76.172187 * x11) + (-30.715295 * x12) + (67.484377 * x13) + (-59.311592 * x14) + (1.871785 * x15) + (-56.387327 * x16) + (72.304716 * x17) + (-50.916087 * x18) + (-68.825813 * x19) + (57.303731 * x20) + (87.023842 * x21) + (70.098484 * x22) + (93.491823 * x23) + (-1.701203 * x24) + (52.662654 * x25) + (-28.217082 * x26) + (35.881169 * x27) + (-94.018064 * x28)  <= 87.172998 ; 
consLB6:  (39.216984 * x1) + (-91.706427 * x2) + (58.343934 * x3) + (40.355941 * x4) + (-98.944467 * x5) + (45.856857 * x6) + (-88.575659 * x7) + (47.313550 * x8) + (95.162282 * x9) + (52.354944 * x10) + (-31.898886 * x11) + (-6.742408 * x12) + (-61.492344 * x13) + (-29.428609 * x14) + (67.541766 * x15) + (72.078776 * x16) + (-77.781653 * x17) + (-6.719415 * x18) + (21.045748 * x19) + (-55.291185 * x20) + (2.795216 * x21) + (20.389662 * x22) + (-55.134063 * x23) + (-32.737933 * x24) + (67.878603 * x25) + (-26.809064 * x26) + (55.603991 * x27) + (-62.581496 * x28)  >= -75.797156 ; 
consUB6:  (39.216984 * x1) + (-91.706427 * x2) + (58.343934 * x3) + (40.355941 * x4) + (-98.944467 * x5) + (45.856857 * x6) + (-88.575659 * x7) + (47.313550 * x8) + (95.162282 * x9) + (52.354944 * x10) + (-31.898886 * x11) + (-6.742408 * x12) + (-61.492344 * x13) + (-29.428609 * x14) + (67.541766 * x15) + (72.078776 * x16) + (-77.781653 * x17) + (-6.719415 * x18) + (21.045748 * x19) + (-55.291185 * x20) + (2.795216 * x21) + (20.389662 * x22) + (-55.134063 * x23) + (-32.737933 * x24) + (67.878603 * x25) + (-26.809064 * x26) + (55.603991 * x27) + (-62.581496 * x28)  <= 90.761109 ; 
consLB7:  (5.082230 * x1) + (-9.472731 * x2) + (37.188189 * x3) + (57.567580 * x4) + (-18.062661 * x5) + (-38.492410 * x6) + (-89.648245 * x7) + (22.834167 * x8) + (-66.640816 * x9) + (37.655140 * x10) + (-57.050773 * x11) + (16.076962 * x12) + (26.245196 * x13) + (95.472387 * x14) + (-90.082673 * x15) + (-17.955432 * x16) + (-29.560484 * x17) + (-77.065857 * x18) + (-86.630904 * x19) + (88.977472 * x20) + (28.578788 * x21) + (18.069666 * x22) + (14.994755 * x23) + (26.063352 * x24) + (67.120630 * x25) + (-94.614429 * x26) + (14.043988 * x27) + (65.421200 * x28)  >= -21.055071 ; 
consUB7:  (5.082230 * x1) + (-9.472731 * x2) + (37.188189 * x3) + (57.567580 * x4) + (-18.062661 * x5) + (-38.492410 * x6) + (-89.648245 * x7) + (22.834167 * x8) + (-66.640816 * x9) + (37.655140 * x10) + (-57.050773 * x11) + (16.076962 * x12) + (26.245196 * x13) + (95.472387 * x14) + (-90.082673 * x15) + (-17.955432 * x16) + (-29.560484 * x17) + (-77.065857 * x18) + (-86.630904 * x19) + (88.977472 * x20) + (28.578788 * x21) + (18.069666 * x22) + (14.994755 * x23) + (26.063352 * x24) + (67.120630 * x25) + (-94.614429 * x26) + (14.043988 * x27) + (65.421200 * x28)  <= 51.399019 ; 
consLB8:  (-74.374362 * x1) + (-9.640290 * x2) + (64.721157 * x3) + (-98.035384 * x4) + (65.217687 * x5) + (30.671989 * x6) + (97.501333 * x7) + (15.959008 * x8) + (9.812248 * x9) + (55.426759 * x10) + (60.960201 * x11) + (-48.150838 * x12) + (-99.470010 * x13) + (-86.316815 * x14) + (-3.881295 * x15) + (21.625600 * x16) + (45.679615 * x17) + (87.590287 * x18) + (-3.426959 * x19) + (-1.621967 * x20) + (-67.598658 * x21) + (-77.107650 * x22) + (87.976110 * x23) + (20.634950 * x24) + (53.737130 * x25) + (73.223513 * x26) + (-86.452907 * x27) + (63.617693 * x28)  >= -91.611577 ; 
consUB8:  (-74.374362 * x1) + (-9.640290 * x2) + (64.721157 * x3) + (-98.035384 * x4) + (65.217687 * x5) + (30.671989 * x6) + (97.501333 * x7) + (15.959008 * x8) + (9.812248 * x9) + (55.426759 * x10) + (60.960201 * x11) + (-48.150838 * x12) + (-99.470010 * x13) + (-86.316815 * x14) + (-3.881295 * x15) + (21.625600 * x16) + (45.679615 * x17) + (87.590287 * x18) + (-3.426959 * x19) + (-1.621967 * x20) + (-67.598658 * x21) + (-77.107650 * x22) + (87.976110 * x23) + (20.634950 * x24) + (53.737130 * x25) + (73.223513 * x26) + (-86.452907 * x27) + (63.617693 * x28)  <= 66.138449 ; 
consLB9:  (44.387316 * x1) + (-59.732148 * x2) + (62.625307 * x3) + (-89.221866 * x4) + (73.202313 * x5) + (38.468470 * x6) + (91.892046 * x7) + (67.199061 * x8) + (39.643933 * x9) + (-7.403655 * x10) + (-80.576133 * x11) + (-37.001589 * x12) + (-90.239578 * x13) + (64.332247 * x14) + (-83.498378 * x15) + (-4.699596 * x16) + (15.003820 * x17) + (28.393224 * x18) + (-32.004270 * x19) + (25.251223 * x20) + (-49.545463 * x21) + (11.094338 * x22) + (46.718612 * x23) + (-16.278088 * x24) + (39.307473 * x25) + (-50.853239 * x26) + (68.544094 * x27) + (-74.360398 * x28)  >= -23.917657 ; 
consUB9:  (44.387316 * x1) + (-59.732148 * x2) + (62.625307 * x3) + (-89.221866 * x4) + (73.202313 * x5) + (38.468470 * x6) + (91.892046 * x7) + (67.199061 * x8) + (39.643933 * x9) + (-7.403655 * x10) + (-80.576133 * x11) + (-37.001589 * x12) + (-90.239578 * x13) + (64.332247 * x14) + (-83.498378 * x15) + (-4.699596 * x16) + (15.003820 * x17) + (28.393224 * x18) + (-32.004270 * x19) + (25.251223 * x20) + (-49.545463 * x21) + (11.094338 * x22) + (46.718612 * x23) + (-16.278088 * x24) + (39.307473 * x25) + (-50.853239 * x26) + (68.544094 * x27) + (-74.360398 * x28)  <= 68.009397 ; 
consLB10:  (-14.956736 * x1) + (-88.349672 * x2) + (22.129816 * x3) + (-83.672410 * x4) + (-15.591187 * x5) + (94.462590 * x6) + (-50.843460 * x7) + (-80.051744 * x8) + (11.639798 * x9) + (87.362497 * x10) + (-21.843454 * x11) + (-95.612081 * x12) + (-38.624216 * x13) + (-72.254520 * x14) + (-32.093676 * x15) + (-28.917546 * x16) + (24.172612 * x17) + (90.183185 * x18) + (-83.704558 * x19) + (-17.135465 * x20) + (99.758318 * x21) + (72.375688 * x22) + (-50.532122 * x23) + (96.550617 * x24) + (-19.815374 * x25) + (-18.737875 * x26) + (-23.596609 * x27) + (-63.563996 * x28)  >= -29.990940 ; 
consUB10:  (-14.956736 * x1) + (-88.349672 * x2) + (22.129816 * x3) + (-83.672410 * x4) + (-15.591187 * x5) + (94.462590 * x6) + (-50.843460 * x7) + (-80.051744 * x8) + (11.639798 * x9) + (87.362497 * x10) + (-21.843454 * x11) + (-95.612081 * x12) + (-38.624216 * x13) + (-72.254520 * x14) + (-32.093676 * x15) + (-28.917546 * x16) + (24.172612 * x17) + (90.183185 * x18) + (-83.704558 * x19) + (-17.135465 * x20) + (99.758318 * x21) + (72.375688 * x22) + (-50.532122 * x23) + (96.550617 * x24) + (-19.815374 * x25) + (-18.737875 * x26) + (-23.596609 * x27) + (-63.563996 * x28)  <= 32.281703 ; 
consLB11:  (-25.602471 * x1) + (-92.092519 * x2) + (-80.871416 * x3) + (-24.987653 * x4) + (-70.285739 * x5) + (18.944216 * x6) + (-7.790587 * x7) + (-48.928411 * x8) + (32.101587 * x9) + (51.637713 * x10) + (81.492967 * x11) + (64.046433 * x12) + (49.478353 * x13) + (-51.990445 * x14) + (76.275436 * x15) + (-23.782319 * x16) + (99.615275 * x17) + (22.962684 * x18) + (46.839524 * x19) + (48.676197 * x20) + (71.303455 * x21) + (-42.797152 * x22) + (76.916950 * x23) + (78.169428 * x24) + (64.661777 * x25) + (16.261799 * x26) + (95.004435 * x27) + (-86.177678 * x28)  >= -63.921131 ; 
consUB11:  (-25.602471 * x1) + (-92.092519 * x2) + (-80.871416 * x3) + (-24.987653 * x4) + (-70.285739 * x5) + (18.944216 * x6) + (-7.790587 * x7) + (-48.928411 * x8) + (32.101587 * x9) + (51.637713 * x10) + (81.492967 * x11) + (64.046433 * x12) + (49.478353 * x13) + (-51.990445 * x14) + (76.275436 * x15) + (-23.782319 * x16) + (99.615275 * x17) + (22.962684 * x18) + (46.839524 * x19) + (48.676197 * x20) + (71.303455 * x21) + (-42.797152 * x22) + (76.916950 * x23) + (78.169428 * x24) + (64.661777 * x25) + (16.261799 * x26) + (95.004435 * x27) + (-86.177678 * x28)  <= 77.118268 ; 
consLB12:  (-80.271378 * x1) + (3.544620 * x2) + (77.133587 * x3) + (66.957871 * x4) + (-86.563150 * x5) + (-7.383132 * x6) + (-15.169499 * x7) + (-86.263828 * x8) + (80.929348 * x9) + (-10.388016 * x10) + (64.388739 * x11) + (87.090726 * x12) + (80.787040 * x13) + (41.496195 * x14) + (66.633707 * x15) + (-2.400629 * x16) + (-86.411139 * x17) + (23.922014 * x18) + (90.116382 * x19) + (76.742760 * x20) + (-76.594776 * x21) + (-39.397076 * x22) + (35.803842 * x23) + (42.858255 * x24) + (-17.930432 * x25) + (94.746094 * x26) + (59.122355 * x27) + (20.499517 * x28)  >= -33.612754 ; 
consUB12:  (-80.271378 * x1) + (3.544620 * x2) + (77.133587 * x3) + (66.957871 * x4) + (-86.563150 * x5) + (-7.383132 * x6) + (-15.169499 * x7) + (-86.263828 * x8) + (80.929348 * x9) + (-10.388016 * x10) + (64.388739 * x11) + (87.090726 * x12) + (80.787040 * x13) + (41.496195 * x14) + (66.633707 * x15) + (-2.400629 * x16) + (-86.411139 * x17) + (23.922014 * x18) + (90.116382 * x19) + (76.742760 * x20) + (-76.594776 * x21) + (-39.397076 * x22) + (35.803842 * x23) + (42.858255 * x24) + (-17.930432 * x25) + (94.746094 * x26) + (59.122355 * x27) + (20.499517 * x28)  <= 63.418574 ; 
consLB13:  (61.728267 * x1) + (55.407405 * x2) + (-22.430283 * x3) + (-53.505391 * x4) + (-56.786007 * x5) + (-55.871070 * x6) + (-58.413623 * x7) + (-52.484033 * x8) + (-47.176814 * x9) + (69.453689 * x10) + (-3.876447 * x11) + (29.316927 * x12) + (-49.668879 * x13) + (-58.418794 * x14) + (84.160180 * x15) + (59.959472 * x16) + (-45.600247 * x17) + (-77.649471 * x18) + (95.713174 * x19) + (-80.510786 * x20) + (-48.599394 * x21) + (-74.139787 * x22) + (11.696165 * x23) + (15.864251 * x24) + (-80.810952 * x25) + (-45.572384 * x26) + (86.974723 * x27) + (98.897216 * x28)  >= -3.279044 ; 
consUB13:  (61.728267 * x1) + (55.407405 * x2) + (-22.430283 * x3) + (-53.505391 * x4) + (-56.786007 * x5) + (-55.871070 * x6) + (-58.413623 * x7) + (-52.484033 * x8) + (-47.176814 * x9) + (69.453689 * x10) + (-3.876447 * x11) + (29.316927 * x12) + (-49.668879 * x13) + (-58.418794 * x14) + (84.160180 * x15) + (59.959472 * x16) + (-45.600247 * x17) + (-77.649471 * x18) + (95.713174 * x19) + (-80.510786 * x20) + (-48.599394 * x21) + (-74.139787 * x22) + (11.696165 * x23) + (15.864251 * x24) + (-80.810952 * x25) + (-45.572384 * x26) + (86.974723 * x27) + (98.897216 * x28)  <= 85.029340 ; 
consLB14:  (53.253897 * x1) + (-91.551962 * x2) + (57.430081 * x3) + (36.032362 * x4) + (19.279011 * x5) + (55.358068 * x6) + (-71.307341 * x7) + (19.584710 * x8) + (99.467852 * x9) + (13.782284 * x10) + (-63.019730 * x11) + (-43.625971 * x12) + (41.599638 * x13) + (-11.381482 * x14) + (83.337867 * x15) + (-72.624642 * x16) + (-33.066977 * x17) + (68.989525 * x18) + (-9.684913 * x19) + (5.087935 * x20) + (18.601998 * x21) + (14.478432 * x22) + (-35.851221 * x23) + (65.928402 * x24) + (24.535315 * x25) + (49.817084 * x26) + (55.879173 * x27) + (-51.660060 * x28)  >= -24.476186 ; 
consUB14:  (53.253897 * x1) + (-91.551962 * x2) + (57.430081 * x3) + (36.032362 * x4) + (19.279011 * x5) + (55.358068 * x6) + (-71.307341 * x7) + (19.584710 * x8) + (99.467852 * x9) + (13.782284 * x10) + (-63.019730 * x11) + (-43.625971 * x12) + (41.599638 * x13) + (-11.381482 * x14) + (83.337867 * x15) + (-72.624642 * x16) + (-33.066977 * x17) + (68.989525 * x18) + (-9.684913 * x19) + (5.087935 * x20) + (18.601998 * x21) + (14.478432 * x22) + (-35.851221 * x23) + (65.928402 * x24) + (24.535315 * x25) + (49.817084 * x26) + (55.879173 * x27) + (-51.660060 * x28)  <= 22.666885 ; 
consLB15:  (-37.723173 * x1) + (-38.719348 * x2) + (-17.815546 * x3) + (-23.140688 * x4) + (-82.883689 * x5) + (-60.346012 * x6) + (12.358320 * x7) + (-81.393522 * x8) + (55.010012 * x9) + (-1.904596 * x10) + (63.692640 * x11) + (-39.810703 * x12) + (-61.145894 * x13) + (64.977284 * x14) + (-73.898284 * x15) + (-83.393292 * x16) + (-82.626156 * x17) + (-78.599617 * x18) + (1.299890 * x19) + (14.270405 * x20) + (-57.566941 * x21) + (33.255207 * x22) + (76.009440 * x23) + (60.755302 * x24) + (-79.195518 * x25) + (-15.740187 * x26) + (26.944888 * x27) + (-64.534231 * x28)  >= -56.609595 ; 
consUB15:  (-37.723173 * x1) + (-38.719348 * x2) + (-17.815546 * x3) + (-23.140688 * x4) + (-82.883689 * x5) + (-60.346012 * x6) + (12.358320 * x7) + (-81.393522 * x8) + (55.010012 * x9) + (-1.904596 * x10) + (63.692640 * x11) + (-39.810703 * x12) + (-61.145894 * x13) + (64.977284 * x14) + (-73.898284 * x15) + (-83.393292 * x16) + (-82.626156 * x17) + (-78.599617 * x18) + (1.299890 * x19) + (14.270405 * x20) + (-57.566941 * x21) + (33.255207 * x22) + (76.009440 * x23) + (60.755302 * x24) + (-79.195518 * x25) + (-15.740187 * x26) + (26.944888 * x27) + (-64.534231 * x28)  <= 71.314183 ; 
consLB16:  (-6.152569 * x1) + (18.284020 * x2) + (92.732133 * x3) + (-52.674436 * x4) + (-57.782380 * x5) + (-31.454324 * x6) + (-49.859823 * x7) + (-74.752673 * x8) + (27.410446 * x9) + (-86.869375 * x10) + (45.318826 * x11) + (-19.979599 * x12) + (67.965932 * x13) + (-70.935334 * x14) + (92.061564 * x15) + (26.006208 * x16) + (-18.483127 * x17) + (2.298394 * x18) + (-64.012033 * x19) + (29.406455 * x20) + (-53.856578 * x21) + (23.024674 * x22) + (64.128528 * x23) + (-13.246258 * x24) + (-97.066227 * x25) + (92.428956 * x26) + (-77.514221 * x27) + (90.674540 * x28)  >= -96.966121 ; 
consUB16:  (-6.152569 * x1) + (18.284020 * x2) + (92.732133 * x3) + (-52.674436 * x4) + (-57.782380 * x5) + (-31.454324 * x6) + (-49.859823 * x7) + (-74.752673 * x8) + (27.410446 * x9) + (-86.869375 * x10) + (45.318826 * x11) + (-19.979599 * x12) + (67.965932 * x13) + (-70.935334 * x14) + (92.061564 * x15) + (26.006208 * x16) + (-18.483127 * x17) + (2.298394 * x18) + (-64.012033 * x19) + (29.406455 * x20) + (-53.856578 * x21) + (23.024674 * x22) + (64.128528 * x23) + (-13.246258 * x24) + (-97.066227 * x25) + (92.428956 * x26) + (-77.514221 * x27) + (90.674540 * x28)  <= 40.339980 ; 
consLB17:  (-40.906649 * x1) + (79.094982 * x2) + (-10.846973 * x3) + (-53.976097 * x4) + (95.870656 * x5) + (84.797994 * x6) + (77.535102 * x7) + (-77.552679 * x8) + (-57.921976 * x9) + (57.384607 * x10) + (43.798160 * x11) + (11.670768 * x12) + (-38.193195 * x13) + (-26.941566 * x14) + (16.166966 * x15) + (-30.136985 * x16) + (9.420219 * x17) + (-95.016413 * x18) + (13.002192 * x19) + (15.887428 * x20) + (-72.969869 * x21) + (6.129687 * x22) + (74.266190 * x23) + (1.921656 * x24) + (-33.972343 * x25) + (-78.717715 * x26) + (90.187538 * x27) + (28.655564 * x28)  >= -60.380780 ; 
consUB17:  (-40.906649 * x1) + (79.094982 * x2) + (-10.846973 * x3) + (-53.976097 * x4) + (95.870656 * x5) + (84.797994 * x6) + (77.535102 * x7) + (-77.552679 * x8) + (-57.921976 * x9) + (57.384607 * x10) + (43.798160 * x11) + (11.670768 * x12) + (-38.193195 * x13) + (-26.941566 * x14) + (16.166966 * x15) + (-30.136985 * x16) + (9.420219 * x17) + (-95.016413 * x18) + (13.002192 * x19) + (15.887428 * x20) + (-72.969869 * x21) + (6.129687 * x22) + (74.266190 * x23) + (1.921656 * x24) + (-33.972343 * x25) + (-78.717715 * x26) + (90.187538 * x27) + (28.655564 * x28)  <= 10.779922 ; 
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
 display obj; 
end; 
