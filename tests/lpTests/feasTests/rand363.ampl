var x1 , <= 71.479488   ; 
var x2 , >= -87.198983   ; 
var x3 , >= -61.216131 , <= 83.935709   ; 
var x4 , >= -38.394659 , <= 45.371866   ; 
var x5 , >= -82.706332 , <= 41.700731   ; 
var x6 , >= -52.214037 , <= 29.243264   ; 
var x7 , >= -28.187024 , <= 49.606750   ; 
var x8 , >= -12.839324 , <= 32.437669   ; 
var x9 , >= -85.452603   ; 
var x10 , >= -85.054320 , <= 39.326449   ; 
var x11 , >= -96.110947 , <= 9.621779   ; 
var x12 , >= -25.562471 , <= 16.808393   ; 
var x13 , >= -80.509344 , <= 71.840197   ; 
var x14 , >= -52.579918 , <= 73.774474   ; 
var x15 , >= -12.388595 , <= 83.332025   ; 
var x16 , >= -62.888611 , <= 30.762476   ; 
# End of variable declarations 
maximize obj: 0  +( 63.580570 * x1 )  +( 25.692940 * x2 )  +( -44.635856 * x3 )  +( 26.440168 * x4 )  +( -7.629528 * x5 )  +( 46.128171 * x6 )  +( -3.368979 * x7 )  +( 32.430170 * x8 )  +( 40.464294 * x9 )  +( 74.074471 * x10 )  +( -47.231172 * x11 )  +( 56.317490 * x12 )  +( 77.394163 * x13 )  +( -5.714257 * x14 )  +( 16.865792 * x15 )  +( 71.017973 * x16 ) ; 
consLB0:  (38.132264 * x1) + (-40.538099 * x2) + (-49.171355 * x3) + (-65.376528 * x4) + (58.740128 * x5) + (54.915276 * x6) + (-65.903803 * x7) + (-47.447661 * x8) + (-49.208388 * x9) + (-22.321429 * x10) + (37.999123 * x11) + (45.156252 * x12) + (-33.329047 * x13) + (-74.514088 * x14) + (-24.073223 * x15) + (45.907391 * x16)  >= -11.749421 ; 
consUB0:  (38.132264 * x1) + (-40.538099 * x2) + (-49.171355 * x3) + (-65.376528 * x4) + (58.740128 * x5) + (54.915276 * x6) + (-65.903803 * x7) + (-47.447661 * x8) + (-49.208388 * x9) + (-22.321429 * x10) + (37.999123 * x11) + (45.156252 * x12) + (-33.329047 * x13) + (-74.514088 * x14) + (-24.073223 * x15) + (45.907391 * x16)  <= 63.655562 ; 
consLB1:  (34.376953 * x1) + (51.154557 * x2) + (81.095338 * x3) + (-88.929204 * x4) + (93.617603 * x5) + (93.706109 * x6) + (-82.933779 * x7) + (-41.092634 * x8) + (-44.892250 * x9) + (77.413042 * x10) + (18.153586 * x11) + (48.586313 * x12) + (58.062434 * x13) + (5.284259 * x14) + (15.023993 * x15) + (-42.130309 * x16)  >= -89.121399 ; 
consUB1:  (34.376953 * x1) + (51.154557 * x2) + (81.095338 * x3) + (-88.929204 * x4) + (93.617603 * x5) + (93.706109 * x6) + (-82.933779 * x7) + (-41.092634 * x8) + (-44.892250 * x9) + (77.413042 * x10) + (18.153586 * x11) + (48.586313 * x12) + (58.062434 * x13) + (5.284259 * x14) + (15.023993 * x15) + (-42.130309 * x16)  <= 16.470128 ; 
consLB2:  (8.511708 * x1) + (48.882580 * x2) + (43.293846 * x3) + (4.148750 * x4) + (50.475749 * x5) + (-60.507163 * x6) + (-81.439694 * x7) + (83.570075 * x8) + (-73.916587 * x9) + (-62.648128 * x10) + (39.472890 * x11) + (-36.078323 * x12) + (-92.130342 * x13) + (-60.143351 * x14) + (41.205085 * x15) + (-27.086959 * x16)  >= -92.768976 ; 
consLB3:  (90.848940 * x1) + (83.454035 * x2) + (-54.317981 * x3) + (66.861638 * x4) + (83.259500 * x5) + (-2.518965 * x6) + (63.450695 * x7) + (-33.900819 * x8) + (68.458768 * x9) + (34.887637 * x10) + (7.057432 * x11) + (1.266911 * x12) + (-22.700322 * x13) + (90.981218 * x14) + (29.762193 * x15) + (55.838187 * x16)  >= -54.421435 ; 
consUB3:  (90.848940 * x1) + (83.454035 * x2) + (-54.317981 * x3) + (66.861638 * x4) + (83.259500 * x5) + (-2.518965 * x6) + (63.450695 * x7) + (-33.900819 * x8) + (68.458768 * x9) + (34.887637 * x10) + (7.057432 * x11) + (1.266911 * x12) + (-22.700322 * x13) + (90.981218 * x14) + (29.762193 * x15) + (55.838187 * x16)  <= 16.172080 ; 
consLB4:  (-72.967133 * x1) + (36.652074 * x2) + (49.535313 * x3) + (19.571382 * x4) + (81.587328 * x5) + (49.669286 * x6) + (-59.661999 * x7) + (18.164554 * x8) + (66.833396 * x9) + (92.395208 * x10) + (45.097774 * x11) + (-32.711909 * x12) + (-53.396230 * x13) + (-74.399371 * x14) + (2.592893 * x15) + (53.670653 * x16)  >= -88.101465 ; 
consLB5:  (9.942019 * x1) + (88.041462 * x2) + (89.319864 * x3) + (89.389797 * x4) + (-68.009704 * x5) + (35.276920 * x6) + (3.624306 * x7) + (63.479666 * x8) + (10.470405 * x9) + (97.188909 * x10) + (99.841908 * x11) + (51.046727 * x12) + (22.831378 * x13) + (63.248110 * x14) + (-7.537987 * x15) + (86.038739 * x16)  >= -32.971868 ; 
consUB5:  (9.942019 * x1) + (88.041462 * x2) + (89.319864 * x3) + (89.389797 * x4) + (-68.009704 * x5) + (35.276920 * x6) + (3.624306 * x7) + (63.479666 * x8) + (10.470405 * x9) + (97.188909 * x10) + (99.841908 * x11) + (51.046727 * x12) + (22.831378 * x13) + (63.248110 * x14) + (-7.537987 * x15) + (86.038739 * x16)  <= 65.413885 ; 
consLB6:  (37.434027 * x1) + (72.334187 * x2) + (62.555504 * x3) + (-10.475512 * x4) + (-97.155044 * x5) + (7.551150 * x6) + (19.690262 * x7) + (28.820450 * x8) + (55.270963 * x9) + (66.804388 * x10) + (-98.294418 * x11) + (-99.822063 * x12) + (-36.143968 * x13) + (90.868509 * x14) + (72.070581 * x15) + (43.278569 * x16)  >= -32.037245 ; 
consUB6:  (37.434027 * x1) + (72.334187 * x2) + (62.555504 * x3) + (-10.475512 * x4) + (-97.155044 * x5) + (7.551150 * x6) + (19.690262 * x7) + (28.820450 * x8) + (55.270963 * x9) + (66.804388 * x10) + (-98.294418 * x11) + (-99.822063 * x12) + (-36.143968 * x13) + (90.868509 * x14) + (72.070581 * x15) + (43.278569 * x16)  <= 12.360568 ; 
consLB8:  (1.107369 * x1) + (-21.429074 * x2) + (-77.014482 * x3) + (-23.947281 * x4) + (-4.652668 * x5) + (76.976264 * x6) + (2.617215 * x7) + (-98.036707 * x8) + (68.447689 * x9) + (36.964031 * x10) + (57.206772 * x11) + (23.695269 * x12) + (15.220326 * x13) + (67.806967 * x14) + (-99.695243 * x15) + (-53.773262 * x16)  >= -12.524111 ; 
consLB9:  (-7.480437 * x1) + (0.417646 * x2) + (-16.960667 * x3) + (-91.570956 * x4) + (62.210559 * x5) + (-28.038248 * x6) + (-76.692672 * x7) + (-21.365680 * x8) + (-86.902063 * x9) + (36.393810 * x10) + (-42.364537 * x11) + (-47.732482 * x12) + (42.593321 * x13) + (45.617546 * x14) + (91.058747 * x15) + (82.895603 * x16)  >= -43.885764 ; 
consLB10:  (-2.138093 * x1) + (-43.882097 * x2) + (-47.681262 * x3) + (13.954297 * x4) + (38.179233 * x5) + (10.053081 * x6) + (68.017553 * x7) + (-34.788329 * x8) + (-41.898184 * x9) + (-41.246720 * x10) + (99.488164 * x11) + (51.850605 * x12) + (93.285709 * x13) + (-15.706680 * x14) + (-69.903256 * x15) + (-10.843281 * x16)  >= -13.832674 ; 
consUB10:  (-2.138093 * x1) + (-43.882097 * x2) + (-47.681262 * x3) + (13.954297 * x4) + (38.179233 * x5) + (10.053081 * x6) + (68.017553 * x7) + (-34.788329 * x8) + (-41.898184 * x9) + (-41.246720 * x10) + (99.488164 * x11) + (51.850605 * x12) + (93.285709 * x13) + (-15.706680 * x14) + (-69.903256 * x15) + (-10.843281 * x16)  <= 92.008986 ; 
consLB11:  (-28.523145 * x1) + (28.359288 * x2) + (-70.857304 * x3) + (-45.432599 * x4) + (-59.926991 * x5) + (-42.789756 * x6) + (72.755544 * x7) + (61.779025 * x8) + (-65.929494 * x9) + (30.464965 * x10) + (-15.880832 * x11) + (47.356058 * x12) + (-4.863256 * x13) + (-43.833812 * x14) + (17.521991 * x15) + (5.595350 * x16)  >= -89.367624 ; 
consUB11:  (-28.523145 * x1) + (28.359288 * x2) + (-70.857304 * x3) + (-45.432599 * x4) + (-59.926991 * x5) + (-42.789756 * x6) + (72.755544 * x7) + (61.779025 * x8) + (-65.929494 * x9) + (30.464965 * x10) + (-15.880832 * x11) + (47.356058 * x12) + (-4.863256 * x13) + (-43.833812 * x14) + (17.521991 * x15) + (5.595350 * x16)  <= 56.024167 ; 
consLB12:  (30.592681 * x1) + (-85.339016 * x2) + (96.300723 * x3) + (-62.845690 * x4) + (42.475233 * x5) + (-68.018775 * x6) + (7.504213 * x7) + (-65.839326 * x8) + (-40.570991 * x9) + (45.432766 * x10) + (30.466889 * x11) + (-79.682967 * x12) + (81.426691 * x13) + (-1.048608 * x14) + (47.487315 * x15) + (38.152945 * x16)  >= -3.096353 ; 
consUB12:  (30.592681 * x1) + (-85.339016 * x2) + (96.300723 * x3) + (-62.845690 * x4) + (42.475233 * x5) + (-68.018775 * x6) + (7.504213 * x7) + (-65.839326 * x8) + (-40.570991 * x9) + (45.432766 * x10) + (30.466889 * x11) + (-79.682967 * x12) + (81.426691 * x13) + (-1.048608 * x14) + (47.487315 * x15) + (38.152945 * x16)  <= 80.373017 ; 
consLB13:  (-21.660729 * x1) + (-44.472049 * x2) + (-41.879513 * x3) + (44.444195 * x4) + (62.897768 * x5) + (43.839894 * x6) + (40.501858 * x7) + (84.420368 * x8) + (46.958546 * x9) + (-55.528221 * x10) + (-89.459338 * x11) + (89.351149 * x12) + (63.181553 * x13) + (49.208702 * x14) + (-99.711016 * x15) + (32.196543 * x16)  >= -93.334036 ; 
consUB13:  (-21.660729 * x1) + (-44.472049 * x2) + (-41.879513 * x3) + (44.444195 * x4) + (62.897768 * x5) + (43.839894 * x6) + (40.501858 * x7) + (84.420368 * x8) + (46.958546 * x9) + (-55.528221 * x10) + (-89.459338 * x11) + (89.351149 * x12) + (63.181553 * x13) + (49.208702 * x14) + (-99.711016 * x15) + (32.196543 * x16)  <= 31.137512 ; 
consLB14:  (-66.143809 * x1) + (-70.585811 * x2) + (-21.524647 * x3) + (12.109247 * x4) + (51.889679 * x5) + (-35.846699 * x6) + (-22.123702 * x7) + (78.696593 * x8) + (28.759359 * x9) + (-3.687182 * x10) + (-24.699403 * x11) + (-12.782436 * x12) + (-1.000228 * x13) + (-0.551368 * x14) + (30.517680 * x15) + (-39.434769 * x16)  >= -96.503213 ; 
consUB14:  (-66.143809 * x1) + (-70.585811 * x2) + (-21.524647 * x3) + (12.109247 * x4) + (51.889679 * x5) + (-35.846699 * x6) + (-22.123702 * x7) + (78.696593 * x8) + (28.759359 * x9) + (-3.687182 * x10) + (-24.699403 * x11) + (-12.782436 * x12) + (-1.000228 * x13) + (-0.551368 * x14) + (30.517680 * x15) + (-39.434769 * x16)  <= 8.055219 ; 
consLB15:  (-45.350711 * x1) + (-3.473665 * x2) + (-38.861876 * x3) + (65.349338 * x4) + (35.746009 * x5) + (24.309615 * x6) + (82.539257 * x7) + (58.155518 * x8) + (-90.209813 * x9) + (87.212900 * x10) + (37.336760 * x11) + (72.749539 * x12) + (-64.942854 * x13) + (98.414913 * x14) + (80.172854 * x15) + (-23.625104 * x16)  >= -38.742056 ; 
consUB15:  (-45.350711 * x1) + (-3.473665 * x2) + (-38.861876 * x3) + (65.349338 * x4) + (35.746009 * x5) + (24.309615 * x6) + (82.539257 * x7) + (58.155518 * x8) + (-90.209813 * x9) + (87.212900 * x10) + (37.336760 * x11) + (72.749539 * x12) + (-64.942854 * x13) + (98.414913 * x14) + (80.172854 * x15) + (-23.625104 * x16)  <= 57.399161 ; 
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
 display obj; 
end; 
