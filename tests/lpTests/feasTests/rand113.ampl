var x1 , >= -46.225519 , <= 59.798503   ; 
var x2 , >= -13.819475 , <= 59.081231   ; 
var x3 , >= -30.489115 , <= 74.173288   ; 
var x4 , >= -25.008455 , <= 18.707184   ; 
var x5 , >= -37.844394 , <= 6.123318   ; 
var x6 , >= -5.795695 , <= 12.527082   ; 
var x7 , >= -68.580064   ; 
var x8 , >= -5.664734 , <= 76.958447   ; 
var x9 , <= 46.919234   ; 
var x10 , >= -35.364117 , <= 57.816478   ; 
var x11 , >= -72.637481 , <= 56.715611   ; 
var x12 , >= -27.497082 , <= 3.009738   ; 
var x13 , <= 66.475814   ; 
var x14 , >= -48.907003   ; 
var x15 , >= -31.124811 , <= 58.346405   ; 
var x16 , >= -58.698121 , <= 69.179247   ; 
var x17 , >= -81.618671 , <= 89.572896   ; 
var x18 , >= -47.125282 , <= 11.991554   ; 
var x19 , >= -72.355286   ; 
var x20 , >= -63.642697 , <= 3.197556   ; 
var x21 , >= -83.306654 , <= 93.933746   ; 
var x22 , >= -16.281046 , <= 85.574682   ; 
var x23 , >= -2.865334 , <= 35.601257   ; 
var x24 , >= -46.931079 , <= 0.180405   ; 
var x25 , >= -45.953366 , <= 5.010121   ; 
var x26 , >= -58.581067 , <= 21.122681   ; 
var x27 , >= -76.010308 , <= 16.164333   ; 
var x28 , >= -2.330262 , <= 21.284509   ; 
var x29 , >= -26.906040 , <= 11.662297   ; 
var x30 , >= -35.737763 , <= 97.216073   ; 
var x31 , >= -80.618922 , <= 55.532033   ; 
var x32 , >= -17.736350   ; 
var x33 , >= -87.390368 , <= 66.334067   ; 
var x34 , >= -75.057060 , <= 57.869927   ; 
var x35 , >= -8.907280 , <= 88.499986   ; 
# End of variable declarations 
maximize obj: 0  +( 52.708236 * x1 )  +( 27.591849 * x2 )  +( 0.028596 * x3 )  +( 55.294463 * x4 )  +( 13.663616 * x5 )  +( -39.695417 * x6 )  +( 98.230311 * x7 )  +( 98.016305 * x8 )  +( 66.536214 * x9 )  +( 83.291783 * x10 )  +( -99.255495 * x11 )  +( 98.090319 * x12 )  +( -55.024983 * x13 )  +( 20.728625 * x14 )  +( 72.089803 * x15 )  +( -13.877031 * x16 )  +( -54.039693 * x17 )  +( -29.181551 * x18 )  +( -74.254455 * x19 )  +( 86.835328 * x20 )  +( -53.443543 * x21 )  +( -14.257632 * x22 )  +( 13.734504 * x23 )  +( 10.949894 * x24 )  +( 94.594689 * x25 )  +( -1.918325 * x26 )  +( -66.741941 * x27 )  +( 15.814996 * x28 )  +( 87.887133 * x29 )  +( -98.355398 * x30 )  +( 63.044652 * x31 )  +( -27.609203 * x32 )  +( -16.896714 * x33 )  +( -45.275023 * x34 )  +( 43.705825 * x35 ) ; 
consLB0:  (-67.998268 * x1) + (-71.406858 * x2) + (29.631642 * x3) + (69.748771 * x4) + (23.400834 * x5) + (5.569634 * x6) + (-87.825569 * x7) + (-47.115766 * x8) + (2.824767 * x9) + (-84.857017 * x10) + (90.120434 * x11) + (74.432804 * x12) + (-71.397818 * x13) + (-43.667219 * x14) + (45.013438 * x15) + (-12.864749 * x16) + (17.395148 * x17) + (9.596620 * x18) + (64.875217 * x19) + (12.302580 * x20) + (69.311625 * x21) + (-55.541584 * x22) + (66.999996 * x23) + (56.413022 * x24) + (-89.940877 * x25) + (-3.028160 * x26) + (-95.741742 * x27) + (-67.984717 * x28) + (4.273591 * x29) + (-32.884013 * x30) + (22.113477 * x31) + (-8.205886 * x32) + (37.535994 * x33) + (-62.481828 * x34) + (-62.879437 * x35)  >= -45.396322 ; 
consUB0:  (-67.998268 * x1) + (-71.406858 * x2) + (29.631642 * x3) + (69.748771 * x4) + (23.400834 * x5) + (5.569634 * x6) + (-87.825569 * x7) + (-47.115766 * x8) + (2.824767 * x9) + (-84.857017 * x10) + (90.120434 * x11) + (74.432804 * x12) + (-71.397818 * x13) + (-43.667219 * x14) + (45.013438 * x15) + (-12.864749 * x16) + (17.395148 * x17) + (9.596620 * x18) + (64.875217 * x19) + (12.302580 * x20) + (69.311625 * x21) + (-55.541584 * x22) + (66.999996 * x23) + (56.413022 * x24) + (-89.940877 * x25) + (-3.028160 * x26) + (-95.741742 * x27) + (-67.984717 * x28) + (4.273591 * x29) + (-32.884013 * x30) + (22.113477 * x31) + (-8.205886 * x32) + (37.535994 * x33) + (-62.481828 * x34) + (-62.879437 * x35)  <= 39.564030 ; 
consLB1:  (-6.815324 * x1) + (-34.110094 * x2) + (48.484110 * x3) + (-25.661847 * x4) + (15.900383 * x5) + (-10.470628 * x6) + (31.165230 * x7) + (-12.706275 * x8) + (-91.296142 * x9) + (48.495322 * x10) + (17.408157 * x11) + (-0.538920 * x12) + (87.866560 * x13) + (67.583555 * x14) + (-56.361130 * x15) + (-36.660593 * x16) + (-68.181572 * x17) + (28.235725 * x18) + (44.885456 * x19) + (-2.017770 * x20) + (-11.101303 * x21) + (28.089574 * x22) + (7.215152 * x23) + (7.158272 * x24) + (-47.078018 * x25) + (-56.636300 * x26) + (-8.444893 * x27) + (20.305093 * x28) + (70.133670 * x29) + (52.728258 * x30) + (53.808623 * x31) + (-37.744527 * x32) + (-32.665080 * x33) + (-40.726023 * x34) + (25.720977 * x35)  >= -86.176001 ; 
consUB1:  (-6.815324 * x1) + (-34.110094 * x2) + (48.484110 * x3) + (-25.661847 * x4) + (15.900383 * x5) + (-10.470628 * x6) + (31.165230 * x7) + (-12.706275 * x8) + (-91.296142 * x9) + (48.495322 * x10) + (17.408157 * x11) + (-0.538920 * x12) + (87.866560 * x13) + (67.583555 * x14) + (-56.361130 * x15) + (-36.660593 * x16) + (-68.181572 * x17) + (28.235725 * x18) + (44.885456 * x19) + (-2.017770 * x20) + (-11.101303 * x21) + (28.089574 * x22) + (7.215152 * x23) + (7.158272 * x24) + (-47.078018 * x25) + (-56.636300 * x26) + (-8.444893 * x27) + (20.305093 * x28) + (70.133670 * x29) + (52.728258 * x30) + (53.808623 * x31) + (-37.744527 * x32) + (-32.665080 * x33) + (-40.726023 * x34) + (25.720977 * x35)  <= 29.167611 ; 
consLB2:  (23.696259 * x1) + (-28.575978 * x2) + (-16.729520 * x3) + (-35.931977 * x4) + (-46.094855 * x5) + (-97.133385 * x6) + (44.359075 * x7) + (64.038003 * x8) + (65.072836 * x9) + (-62.163537 * x10) + (37.537573 * x11) + (-76.620920 * x12) + (61.151621 * x13) + (-45.249941 * x14) + (-9.226727 * x15) + (-40.156503 * x16) + (74.496843 * x17) + (10.066423 * x18) + (-90.542304 * x19) + (64.150595 * x20) + (4.530459 * x21) + (-34.422838 * x22) + (-71.549128 * x23) + (18.216686 * x24) + (-48.673960 * x25) + (-54.364887 * x26) + (-51.463237 * x27) + (43.486626 * x28) + (73.587624 * x29) + (9.151924 * x30) + (-98.767516 * x31) + (-47.798667 * x32) + (-21.709017 * x33) + (39.649619 * x34) + (12.695342 * x35)  >= -86.153605 ; 
consUB2:  (23.696259 * x1) + (-28.575978 * x2) + (-16.729520 * x3) + (-35.931977 * x4) + (-46.094855 * x5) + (-97.133385 * x6) + (44.359075 * x7) + (64.038003 * x8) + (65.072836 * x9) + (-62.163537 * x10) + (37.537573 * x11) + (-76.620920 * x12) + (61.151621 * x13) + (-45.249941 * x14) + (-9.226727 * x15) + (-40.156503 * x16) + (74.496843 * x17) + (10.066423 * x18) + (-90.542304 * x19) + (64.150595 * x20) + (4.530459 * x21) + (-34.422838 * x22) + (-71.549128 * x23) + (18.216686 * x24) + (-48.673960 * x25) + (-54.364887 * x26) + (-51.463237 * x27) + (43.486626 * x28) + (73.587624 * x29) + (9.151924 * x30) + (-98.767516 * x31) + (-47.798667 * x32) + (-21.709017 * x33) + (39.649619 * x34) + (12.695342 * x35)  <= 59.190390 ; 
consLB3:  (-43.675906 * x1) + (-25.279482 * x2) + (-10.282194 * x3) + (-99.289057 * x4) + (11.227782 * x5) + (58.338371 * x6) + (57.070590 * x7) + (-6.694240 * x8) + (16.341729 * x9) + (92.559849 * x10) + (-48.195370 * x11) + (-13.583792 * x12) + (-89.377609 * x13) + (44.901109 * x14) + (62.846191 * x15) + (-77.603551 * x16) + (50.422832 * x17) + (27.056654 * x18) + (-89.020540 * x19) + (-39.783537 * x20) + (-29.806155 * x21) + (58.325782 * x22) + (41.934997 * x23) + (-10.626606 * x24) + (47.180877 * x25) + (-6.365926 * x26) + (-37.925064 * x27) + (-91.679584 * x28) + (-69.762585 * x29) + (-40.491430 * x30) + (38.154614 * x31) + (-81.758660 * x32) + (-23.966453 * x33) + (-44.791158 * x34) + (-0.992398 * x35)  >= -10.948463 ; 
consUB3:  (-43.675906 * x1) + (-25.279482 * x2) + (-10.282194 * x3) + (-99.289057 * x4) + (11.227782 * x5) + (58.338371 * x6) + (57.070590 * x7) + (-6.694240 * x8) + (16.341729 * x9) + (92.559849 * x10) + (-48.195370 * x11) + (-13.583792 * x12) + (-89.377609 * x13) + (44.901109 * x14) + (62.846191 * x15) + (-77.603551 * x16) + (50.422832 * x17) + (27.056654 * x18) + (-89.020540 * x19) + (-39.783537 * x20) + (-29.806155 * x21) + (58.325782 * x22) + (41.934997 * x23) + (-10.626606 * x24) + (47.180877 * x25) + (-6.365926 * x26) + (-37.925064 * x27) + (-91.679584 * x28) + (-69.762585 * x29) + (-40.491430 * x30) + (38.154614 * x31) + (-81.758660 * x32) + (-23.966453 * x33) + (-44.791158 * x34) + (-0.992398 * x35)  <= 13.033377 ; 
consLB4:  (-23.976367 * x1) + (54.899789 * x2) + (86.360952 * x3) + (-91.043146 * x4) + (-13.809756 * x5) + (50.537375 * x6) + (-7.417299 * x7) + (-10.912135 * x8) + (-1.650477 * x9) + (-44.301337 * x10) + (-50.453171 * x11) + (92.644349 * x12) + (-99.454742 * x13) + (-51.828299 * x14) + (13.649328 * x15) + (-15.237768 * x16) + (73.993436 * x17) + (72.092851 * x18) + (31.003053 * x19) + (15.207569 * x20) + (-6.538653 * x21) + (18.487227 * x22) + (52.057620 * x23) + (-72.982424 * x24) + (40.486133 * x25) + (-68.649777 * x26) + (-67.924384 * x27) + (-74.124745 * x28) + (-57.623531 * x29) + (12.511021 * x30) + (-87.582468 * x31) + (-2.783777 * x32) + (85.250686 * x33) + (-23.437656 * x34) + (77.674100 * x35)  >= -59.123038 ; 
consUB5:  (43.635348 * x1) + (79.120020 * x2) + (-51.473624 * x3) + (-18.170042 * x4) + (7.919733 * x5) + (10.234714 * x6) + (99.506260 * x7) + (-1.332712 * x8) + (-78.602438 * x9) + (-88.293882 * x10) + (-7.177506 * x11) + (46.467463 * x12) + (88.298282 * x13) + (-42.942368 * x14) + (44.155436 * x15) + (86.813136 * x16) + (90.132798 * x17) + (-49.775952 * x18) + (78.735532 * x19) + (-72.872020 * x20) + (-83.988359 * x21) + (95.120442 * x22) + (-43.006599 * x23) + (44.836650 * x24) + (-67.761329 * x25) + (-98.128939 * x26) + (13.279096 * x27) + (79.128913 * x28) + (-25.013196 * x29) + (76.883366 * x30) + (-48.114771 * x31) + (38.839493 * x32) + (-48.455521 * x33) + (-19.944516 * x34) + (27.888857 * x35)  <= 86.181203 ; 
consLB6:  (-10.395619 * x1) + (-22.693630 * x2) + (-27.475521 * x3) + (30.113552 * x4) + (1.045474 * x5) + (-43.216990 * x6) + (58.630945 * x7) + (-81.717509 * x8) + (49.213665 * x9) + (77.460850 * x10) + (-89.549727 * x11) + (50.287356 * x12) + (27.956389 * x13) + (-43.979366 * x14) + (94.705313 * x15) + (88.162743 * x16) + (-24.535776 * x17) + (28.507148 * x18) + (-29.363081 * x19) + (78.183360 * x20) + (-27.687019 * x21) + (-28.548791 * x22) + (42.100768 * x23) + (-37.532049 * x24) + (21.297967 * x25) + (-17.785499 * x26) + (4.538793 * x27) + (-36.818622 * x28) + (-63.173890 * x29) + (-72.876630 * x30) + (-17.575771 * x31) + (-31.899064 * x32) + (-84.715232 * x33) + (19.068249 * x34) + (-11.691336 * x35)  >= -84.847935 ; 
consUB6:  (-10.395619 * x1) + (-22.693630 * x2) + (-27.475521 * x3) + (30.113552 * x4) + (1.045474 * x5) + (-43.216990 * x6) + (58.630945 * x7) + (-81.717509 * x8) + (49.213665 * x9) + (77.460850 * x10) + (-89.549727 * x11) + (50.287356 * x12) + (27.956389 * x13) + (-43.979366 * x14) + (94.705313 * x15) + (88.162743 * x16) + (-24.535776 * x17) + (28.507148 * x18) + (-29.363081 * x19) + (78.183360 * x20) + (-27.687019 * x21) + (-28.548791 * x22) + (42.100768 * x23) + (-37.532049 * x24) + (21.297967 * x25) + (-17.785499 * x26) + (4.538793 * x27) + (-36.818622 * x28) + (-63.173890 * x29) + (-72.876630 * x30) + (-17.575771 * x31) + (-31.899064 * x32) + (-84.715232 * x33) + (19.068249 * x34) + (-11.691336 * x35)  <= 73.533009 ; 
consLB7:  (-14.193412 * x1) + (43.463534 * x2) + (36.584848 * x3) + (11.840184 * x4) + (-6.456253 * x5) + (-51.287464 * x6) + (-90.959150 * x7) + (55.331723 * x8) + (99.993207 * x9) + (-25.851984 * x10) + (-76.908471 * x11) + (-60.979228 * x12) + (-66.507739 * x13) + (50.058453 * x14) + (50.328636 * x15) + (99.583478 * x16) + (54.035657 * x17) + (-42.957223 * x18) + (41.943010 * x19) + (73.380789 * x20) + (0.621271 * x21) + (68.771322 * x22) + (10.791858 * x23) + (-6.920671 * x24) + (-84.205182 * x25) + (-92.829363 * x26) + (42.670495 * x27) + (-87.411915 * x28) + (-56.182808 * x29) + (27.990260 * x30) + (5.624612 * x31) + (18.691460 * x32) + (50.578591 * x33) + (-79.066507 * x34) + (-91.783089 * x35)  >= -98.857536 ; 
consUB7:  (-14.193412 * x1) + (43.463534 * x2) + (36.584848 * x3) + (11.840184 * x4) + (-6.456253 * x5) + (-51.287464 * x6) + (-90.959150 * x7) + (55.331723 * x8) + (99.993207 * x9) + (-25.851984 * x10) + (-76.908471 * x11) + (-60.979228 * x12) + (-66.507739 * x13) + (50.058453 * x14) + (50.328636 * x15) + (99.583478 * x16) + (54.035657 * x17) + (-42.957223 * x18) + (41.943010 * x19) + (73.380789 * x20) + (0.621271 * x21) + (68.771322 * x22) + (10.791858 * x23) + (-6.920671 * x24) + (-84.205182 * x25) + (-92.829363 * x26) + (42.670495 * x27) + (-87.411915 * x28) + (-56.182808 * x29) + (27.990260 * x30) + (5.624612 * x31) + (18.691460 * x32) + (50.578591 * x33) + (-79.066507 * x34) + (-91.783089 * x35)  <= 33.987187 ; 
consLB8:  (-25.527344 * x1) + (-49.307880 * x2) + (-0.229705 * x3) + (-15.179645 * x4) + (83.866499 * x5) + (4.217494 * x6) + (71.169096 * x7) + (38.913203 * x8) + (-39.159473 * x9) + (31.919522 * x10) + (-93.419264 * x11) + (-24.712284 * x12) + (51.285198 * x13) + (29.207624 * x14) + (52.702408 * x15) + (-89.031161 * x16) + (89.331346 * x17) + (85.908409 * x18) + (-40.712498 * x19) + (-74.989589 * x20) + (99.263210 * x21) + (-41.605144 * x22) + (87.919116 * x23) + (-67.641424 * x24) + (-15.658592 * x25) + (24.559383 * x26) + (4.525898 * x27) + (-69.565864 * x28) + (7.699850 * x29) + (-21.474282 * x30) + (17.709214 * x31) + (43.401665 * x32) + (-20.833333 * x33) + (-95.677444 * x34) + (-26.684356 * x35)  >= -7.055723 ; 
consUB8:  (-25.527344 * x1) + (-49.307880 * x2) + (-0.229705 * x3) + (-15.179645 * x4) + (83.866499 * x5) + (4.217494 * x6) + (71.169096 * x7) + (38.913203 * x8) + (-39.159473 * x9) + (31.919522 * x10) + (-93.419264 * x11) + (-24.712284 * x12) + (51.285198 * x13) + (29.207624 * x14) + (52.702408 * x15) + (-89.031161 * x16) + (89.331346 * x17) + (85.908409 * x18) + (-40.712498 * x19) + (-74.989589 * x20) + (99.263210 * x21) + (-41.605144 * x22) + (87.919116 * x23) + (-67.641424 * x24) + (-15.658592 * x25) + (24.559383 * x26) + (4.525898 * x27) + (-69.565864 * x28) + (7.699850 * x29) + (-21.474282 * x30) + (17.709214 * x31) + (43.401665 * x32) + (-20.833333 * x33) + (-95.677444 * x34) + (-26.684356 * x35)  <= 42.530595 ; 
consLB9:  (-6.697664 * x1) + (54.639531 * x2) + (-14.908064 * x3) + (75.198859 * x4) + (64.993665 * x5) + (48.903075 * x6) + (-48.496148 * x7) + (97.965289 * x8) + (-50.548136 * x9) + (4.018392 * x10) + (10.247240 * x11) + (68.009034 * x12) + (-15.634834 * x13) + (67.274416 * x14) + (96.742790 * x15) + (-4.241581 * x16) + (-60.381441 * x17) + (66.926435 * x18) + (-92.823479 * x19) + (-20.650155 * x20) + (86.405724 * x21) + (60.440624 * x22) + (-59.188579 * x23) + (-94.390572 * x24) + (-48.908138 * x25) + (-73.276694 * x26) + (47.149055 * x27) + (-60.920389 * x28) + (88.005418 * x29) + (16.972361 * x30) + (-37.639374 * x31) + (-92.178112 * x32) + (-50.903357 * x33) + (-67.396333 * x34) + (39.589042 * x35)  >= -35.796009 ; 
consUB9:  (-6.697664 * x1) + (54.639531 * x2) + (-14.908064 * x3) + (75.198859 * x4) + (64.993665 * x5) + (48.903075 * x6) + (-48.496148 * x7) + (97.965289 * x8) + (-50.548136 * x9) + (4.018392 * x10) + (10.247240 * x11) + (68.009034 * x12) + (-15.634834 * x13) + (67.274416 * x14) + (96.742790 * x15) + (-4.241581 * x16) + (-60.381441 * x17) + (66.926435 * x18) + (-92.823479 * x19) + (-20.650155 * x20) + (86.405724 * x21) + (60.440624 * x22) + (-59.188579 * x23) + (-94.390572 * x24) + (-48.908138 * x25) + (-73.276694 * x26) + (47.149055 * x27) + (-60.920389 * x28) + (88.005418 * x29) + (16.972361 * x30) + (-37.639374 * x31) + (-92.178112 * x32) + (-50.903357 * x33) + (-67.396333 * x34) + (39.589042 * x35)  <= 94.123608 ; 
consLB10:  (-87.071792 * x1) + (13.530477 * x2) + (5.560468 * x3) + (47.966555 * x4) + (57.277903 * x5) + (-61.930523 * x6) + (-13.284071 * x7) + (20.848264 * x8) + (-88.595561 * x9) + (61.463499 * x10) + (50.661709 * x11) + (75.806572 * x12) + (16.832113 * x13) + (-54.464334 * x14) + (76.695898 * x15) + (73.967249 * x16) + (29.477527 * x17) + (-44.597169 * x18) + (21.165019 * x19) + (-83.479406 * x20) + (-9.620640 * x21) + (5.082366 * x22) + (38.484739 * x23) + (39.562873 * x24) + (-6.056887 * x25) + (47.029769 * x26) + (98.295318 * x27) + (28.290302 * x28) + (-75.989694 * x29) + (-70.037754 * x30) + (-26.441558 * x31) + (-42.918085 * x32) + (-82.545503 * x33) + (-55.683728 * x34) + (6.354734 * x35)  >= -40.696766 ; 
consUB10:  (-87.071792 * x1) + (13.530477 * x2) + (5.560468 * x3) + (47.966555 * x4) + (57.277903 * x5) + (-61.930523 * x6) + (-13.284071 * x7) + (20.848264 * x8) + (-88.595561 * x9) + (61.463499 * x10) + (50.661709 * x11) + (75.806572 * x12) + (16.832113 * x13) + (-54.464334 * x14) + (76.695898 * x15) + (73.967249 * x16) + (29.477527 * x17) + (-44.597169 * x18) + (21.165019 * x19) + (-83.479406 * x20) + (-9.620640 * x21) + (5.082366 * x22) + (38.484739 * x23) + (39.562873 * x24) + (-6.056887 * x25) + (47.029769 * x26) + (98.295318 * x27) + (28.290302 * x28) + (-75.989694 * x29) + (-70.037754 * x30) + (-26.441558 * x31) + (-42.918085 * x32) + (-82.545503 * x33) + (-55.683728 * x34) + (6.354734 * x35)  <= 97.129247 ; 
consLB11:  (17.895265 * x1) + (68.864634 * x2) + (15.151167 * x3) + (-9.796192 * x4) + (36.011606 * x5) + (36.520124 * x6) + (75.159957 * x7) + (-86.466107 * x8) + (-84.518446 * x9) + (80.736755 * x10) + (-16.777572 * x11) + (-9.766229 * x12) + (-1.760172 * x13) + (-54.661327 * x14) + (-35.202787 * x15) + (-60.091223 * x16) + (68.005029 * x17) + (69.184275 * x18) + (98.189183 * x19) + (80.542692 * x20) + (55.609131 * x21) + (28.163375 * x22) + (-95.240681 * x23) + (-54.128583 * x24) + (94.787997 * x25) + (2.834767 * x26) + (11.505719 * x27) + (53.160078 * x28) + (90.810322 * x29) + (39.957555 * x30) + (-78.199476 * x31) + (-83.374461 * x32) + (68.354537 * x33) + (27.781725 * x34) + (-24.292688 * x35)  >= -0.595152 ; 
consUB11:  (17.895265 * x1) + (68.864634 * x2) + (15.151167 * x3) + (-9.796192 * x4) + (36.011606 * x5) + (36.520124 * x6) + (75.159957 * x7) + (-86.466107 * x8) + (-84.518446 * x9) + (80.736755 * x10) + (-16.777572 * x11) + (-9.766229 * x12) + (-1.760172 * x13) + (-54.661327 * x14) + (-35.202787 * x15) + (-60.091223 * x16) + (68.005029 * x17) + (69.184275 * x18) + (98.189183 * x19) + (80.542692 * x20) + (55.609131 * x21) + (28.163375 * x22) + (-95.240681 * x23) + (-54.128583 * x24) + (94.787997 * x25) + (2.834767 * x26) + (11.505719 * x27) + (53.160078 * x28) + (90.810322 * x29) + (39.957555 * x30) + (-78.199476 * x31) + (-83.374461 * x32) + (68.354537 * x33) + (27.781725 * x34) + (-24.292688 * x35)  <= 69.886415 ; 
consLB12:  (47.968981 * x1) + (-4.887044 * x2) + (88.423641 * x3) + (-82.858892 * x4) + (7.011078 * x5) + (-15.313669 * x6) + (-37.594119 * x7) + (-36.292517 * x8) + (-10.986856 * x9) + (-16.968415 * x10) + (30.058250 * x11) + (-60.467494 * x12) + (-34.195724 * x13) + (69.267421 * x14) + (94.653378 * x15) + (-34.439515 * x16) + (68.324791 * x17) + (51.878223 * x18) + (-91.293757 * x19) + (-19.934380 * x20) + (19.772929 * x21) + (-71.237155 * x22) + (26.747600 * x23) + (99.535978 * x24) + (40.462751 * x25) + (-16.746990 * x26) + (-62.843036 * x27) + (32.307561 * x28) + (-34.850893 * x29) + (2.902696 * x30) + (87.506795 * x31) + (-29.358145 * x32) + (-13.541579 * x33) + (-6.123335 * x34) + (50.646181 * x35)  >= -20.129484 ; 
consUB12:  (47.968981 * x1) + (-4.887044 * x2) + (88.423641 * x3) + (-82.858892 * x4) + (7.011078 * x5) + (-15.313669 * x6) + (-37.594119 * x7) + (-36.292517 * x8) + (-10.986856 * x9) + (-16.968415 * x10) + (30.058250 * x11) + (-60.467494 * x12) + (-34.195724 * x13) + (69.267421 * x14) + (94.653378 * x15) + (-34.439515 * x16) + (68.324791 * x17) + (51.878223 * x18) + (-91.293757 * x19) + (-19.934380 * x20) + (19.772929 * x21) + (-71.237155 * x22) + (26.747600 * x23) + (99.535978 * x24) + (40.462751 * x25) + (-16.746990 * x26) + (-62.843036 * x27) + (32.307561 * x28) + (-34.850893 * x29) + (2.902696 * x30) + (87.506795 * x31) + (-29.358145 * x32) + (-13.541579 * x33) + (-6.123335 * x34) + (50.646181 * x35)  <= 2.810437 ; 
consLB13:  (48.266044 * x1) + (-12.185461 * x2) + (-2.880292 * x3) + (-36.115106 * x4) + (-62.729730 * x5) + (-92.375096 * x6) + (-65.230175 * x7) + (45.697583 * x8) + (38.844801 * x9) + (13.376626 * x10) + (-16.285001 * x11) + (91.048307 * x12) + (5.430996 * x13) + (17.692440 * x14) + (10.635983 * x15) + (-41.442034 * x16) + (-83.132613 * x17) + (-25.554121 * x18) + (47.803232 * x19) + (-15.753282 * x20) + (-39.924733 * x21) + (-84.008904 * x22) + (-54.593735 * x23) + (34.550580 * x24) + (-38.589160 * x25) + (74.808382 * x26) + (-75.985068 * x27) + (95.931268 * x28) + (64.302349 * x29) + (-55.090550 * x30) + (-44.744134 * x31) + (-7.008585 * x32) + (-5.895288 * x33) + (-71.180300 * x34) + (20.910352 * x35)  >= -85.484965 ; 
consUB13:  (48.266044 * x1) + (-12.185461 * x2) + (-2.880292 * x3) + (-36.115106 * x4) + (-62.729730 * x5) + (-92.375096 * x6) + (-65.230175 * x7) + (45.697583 * x8) + (38.844801 * x9) + (13.376626 * x10) + (-16.285001 * x11) + (91.048307 * x12) + (5.430996 * x13) + (17.692440 * x14) + (10.635983 * x15) + (-41.442034 * x16) + (-83.132613 * x17) + (-25.554121 * x18) + (47.803232 * x19) + (-15.753282 * x20) + (-39.924733 * x21) + (-84.008904 * x22) + (-54.593735 * x23) + (34.550580 * x24) + (-38.589160 * x25) + (74.808382 * x26) + (-75.985068 * x27) + (95.931268 * x28) + (64.302349 * x29) + (-55.090550 * x30) + (-44.744134 * x31) + (-7.008585 * x32) + (-5.895288 * x33) + (-71.180300 * x34) + (20.910352 * x35)  <= 5.607415 ; 
consLB14:  (-61.981195 * x1) + (9.780144 * x2) + (-38.384125 * x3) + (7.003520 * x4) + (-98.116494 * x5) + (-98.784956 * x6) + (-40.770539 * x7) + (-37.714251 * x8) + (-78.103807 * x9) + (-14.499825 * x10) + (87.036771 * x11) + (37.656939 * x12) + (42.424657 * x13) + (9.746945 * x14) + (47.778646 * x15) + (88.029584 * x16) + (37.703978 * x17) + (-52.973609 * x18) + (-65.656031 * x19) + (89.968730 * x20) + (65.434312 * x21) + (31.463457 * x22) + (-49.705553 * x23) + (51.912643 * x24) + (-80.365947 * x25) + (14.686263 * x26) + (-35.288693 * x27) + (79.218855 * x28) + (-79.874419 * x29) + (25.632494 * x30) + (11.640358 * x31) + (-70.327296 * x32) + (25.421227 * x33) + (6.691736 * x34) + (-30.141801 * x35)  >= -2.199050 ; 
consUB14:  (-61.981195 * x1) + (9.780144 * x2) + (-38.384125 * x3) + (7.003520 * x4) + (-98.116494 * x5) + (-98.784956 * x6) + (-40.770539 * x7) + (-37.714251 * x8) + (-78.103807 * x9) + (-14.499825 * x10) + (87.036771 * x11) + (37.656939 * x12) + (42.424657 * x13) + (9.746945 * x14) + (47.778646 * x15) + (88.029584 * x16) + (37.703978 * x17) + (-52.973609 * x18) + (-65.656031 * x19) + (89.968730 * x20) + (65.434312 * x21) + (31.463457 * x22) + (-49.705553 * x23) + (51.912643 * x24) + (-80.365947 * x25) + (14.686263 * x26) + (-35.288693 * x27) + (79.218855 * x28) + (-79.874419 * x29) + (25.632494 * x30) + (11.640358 * x31) + (-70.327296 * x32) + (25.421227 * x33) + (6.691736 * x34) + (-30.141801 * x35)  <= 15.343280 ; 
consLB15:  (-51.958749 * x1) + (70.218759 * x2) + (99.477676 * x3) + (45.761979 * x4) + (-92.019118 * x5) + (-4.096042 * x6) + (21.966636 * x7) + (38.905835 * x8) + (88.963810 * x9) + (3.213009 * x10) + (-35.277059 * x11) + (82.201815 * x12) + (63.353398 * x13) + (-45.525191 * x14) + (-72.503792 * x15) + (-68.670543 * x16) + (-81.567531 * x17) + (-14.296853 * x18) + (-0.715083 * x19) + (22.839188 * x20) + (-40.200965 * x21) + (-43.563520 * x22) + (-23.696477 * x23) + (-51.702029 * x24) + (-28.558286 * x25) + (20.948817 * x26) + (-74.918959 * x27) + (-98.755837 * x28) + (-5.030863 * x29) + (4.724618 * x30) + (-15.303436 * x31) + (-28.550027 * x32) + (52.495393 * x33) + (24.473643 * x34) + (6.085523 * x35)  >= -76.332638 ; 
consUB15:  (-51.958749 * x1) + (70.218759 * x2) + (99.477676 * x3) + (45.761979 * x4) + (-92.019118 * x5) + (-4.096042 * x6) + (21.966636 * x7) + (38.905835 * x8) + (88.963810 * x9) + (3.213009 * x10) + (-35.277059 * x11) + (82.201815 * x12) + (63.353398 * x13) + (-45.525191 * x14) + (-72.503792 * x15) + (-68.670543 * x16) + (-81.567531 * x17) + (-14.296853 * x18) + (-0.715083 * x19) + (22.839188 * x20) + (-40.200965 * x21) + (-43.563520 * x22) + (-23.696477 * x23) + (-51.702029 * x24) + (-28.558286 * x25) + (20.948817 * x26) + (-74.918959 * x27) + (-98.755837 * x28) + (-5.030863 * x29) + (4.724618 * x30) + (-15.303436 * x31) + (-28.550027 * x32) + (52.495393 * x33) + (24.473643 * x34) + (6.085523 * x35)  <= 76.979598 ; 
consUB16:  (-8.082767 * x1) + (6.803557 * x2) + (11.153881 * x3) + (-68.781179 * x4) + (-78.836941 * x5) + (26.473264 * x6) + (-50.707742 * x7) + (-4.820703 * x8) + (77.819284 * x9) + (16.142525 * x10) + (1.289074 * x11) + (-95.224640 * x12) + (75.631138 * x13) + (-37.919718 * x14) + (-35.566576 * x15) + (-85.995844 * x16) + (-48.020789 * x17) + (-74.499036 * x18) + (-63.761524 * x19) + (25.695318 * x20) + (87.572236 * x21) + (-49.092807 * x22) + (18.747756 * x23) + (-63.054655 * x24) + (-97.400652 * x25) + (-79.821636 * x26) + (-43.888220 * x27) + (91.030891 * x28) + (-62.852870 * x29) + (16.732560 * x30) + (6.558916 * x31) + (-31.469058 * x32) + (-89.038326 * x33) + (25.103853 * x34) + (37.580399 * x35)  <= 63.976876 ; 
consLB17:  (54.181923 * x1) + (67.676932 * x2) + (-97.452087 * x3) + (92.537393 * x4) + (-47.049589 * x5) + (-22.429386 * x6) + (-40.707299 * x7) + (1.923197 * x8) + (38.974264 * x9) + (-34.994413 * x10) + (-23.110733 * x11) + (-49.753642 * x12) + (-64.941200 * x13) + (-15.648990 * x14) + (99.517032 * x15) + (-89.863998 * x16) + (9.609142 * x17) + (61.861030 * x18) + (36.409833 * x19) + (-77.870640 * x20) + (4.147078 * x21) + (-0.647295 * x22) + (15.770093 * x23) + (-61.871404 * x24) + (70.439845 * x25) + (75.326581 * x26) + (-1.769709 * x27) + (18.279947 * x28) + (94.923213 * x29) + (-64.704059 * x30) + (73.329985 * x31) + (37.728165 * x32) + (53.321065 * x33) + (-81.458036 * x34) + (-26.545428 * x35)  >= -29.517456 ; 
consLB18:  (37.153619 * x1) + (-5.437379 * x2) + (-15.575364 * x3) + (9.705337 * x4) + (58.153523 * x5) + (-34.684656 * x6) + (-32.988857 * x7) + (-7.659361 * x8) + (-86.547179 * x9) + (10.350691 * x10) + (69.517379 * x11) + (-10.528062 * x12) + (-72.180269 * x13) + (15.830099 * x14) + (-94.598012 * x15) + (-88.032655 * x16) + (76.736009 * x17) + (-10.645836 * x18) + (74.538816 * x19) + (15.985940 * x20) + (-22.221968 * x21) + (-80.202229 * x22) + (32.480591 * x23) + (-21.160010 * x24) + (-61.127885 * x25) + (-50.277820 * x26) + (48.296900 * x27) + (-63.814221 * x28) + (-74.208646 * x29) + (-17.699282 * x30) + (-40.169128 * x31) + (-58.271246 * x32) + (19.282073 * x33) + (82.631899 * x34) + (-89.395699 * x35)  >= -11.757117 ; 
consUB18:  (37.153619 * x1) + (-5.437379 * x2) + (-15.575364 * x3) + (9.705337 * x4) + (58.153523 * x5) + (-34.684656 * x6) + (-32.988857 * x7) + (-7.659361 * x8) + (-86.547179 * x9) + (10.350691 * x10) + (69.517379 * x11) + (-10.528062 * x12) + (-72.180269 * x13) + (15.830099 * x14) + (-94.598012 * x15) + (-88.032655 * x16) + (76.736009 * x17) + (-10.645836 * x18) + (74.538816 * x19) + (15.985940 * x20) + (-22.221968 * x21) + (-80.202229 * x22) + (32.480591 * x23) + (-21.160010 * x24) + (-61.127885 * x25) + (-50.277820 * x26) + (48.296900 * x27) + (-63.814221 * x28) + (-74.208646 * x29) + (-17.699282 * x30) + (-40.169128 * x31) + (-58.271246 * x32) + (19.282073 * x33) + (82.631899 * x34) + (-89.395699 * x35)  <= 89.677978 ; 
consLB19:  (13.171544 * x1) + (33.990944 * x2) + (-89.918478 * x3) + (-95.732090 * x4) + (-85.864212 * x5) + (63.979361 * x6) + (-85.442349 * x7) + (32.825079 * x8) + (-39.022933 * x9) + (-96.745020 * x10) + (-33.331552 * x11) + (44.361275 * x12) + (-28.861763 * x13) + (17.741836 * x14) + (-18.543383 * x15) + (13.320528 * x16) + (36.926586 * x17) + (73.895372 * x18) + (-9.615153 * x19) + (88.242422 * x20) + (-68.043886 * x21) + (68.317457 * x22) + (59.628144 * x23) + (23.190938 * x24) + (69.194392 * x25) + (64.934223 * x26) + (-71.699623 * x27) + (82.878037 * x28) + (-72.554571 * x29) + (-2.613214 * x30) + (22.417816 * x31) + (58.842788 * x32) + (-39.337578 * x33) + (-96.803234 * x34) + (-95.779052 * x35)  >= -61.327018 ; 
consLB20:  (-15.750976 * x1) + (-19.181401 * x2) + (-54.924519 * x3) + (-52.398504 * x4) + (-94.706243 * x5) + (54.897337 * x6) + (-31.357106 * x7) + (35.103401 * x8) + (3.382658 * x9) + (-59.754312 * x10) + (23.130320 * x11) + (-12.801386 * x12) + (-12.239312 * x13) + (-23.954819 * x14) + (-86.195277 * x15) + (37.819947 * x16) + (44.943211 * x17) + (93.591617 * x18) + (-3.557427 * x19) + (-70.371991 * x20) + (-31.041498 * x21) + (-38.331721 * x22) + (-97.107087 * x23) + (-73.013514 * x24) + (63.094194 * x25) + (68.396021 * x26) + (93.422892 * x27) + (-66.466260 * x28) + (-64.329148 * x29) + (96.025589 * x30) + (60.079827 * x31) + (-5.392007 * x32) + (73.603160 * x33) + (-25.695985 * x34) + (-97.197836 * x35)  >= -93.842484 ; 
consUB20:  (-15.750976 * x1) + (-19.181401 * x2) + (-54.924519 * x3) + (-52.398504 * x4) + (-94.706243 * x5) + (54.897337 * x6) + (-31.357106 * x7) + (35.103401 * x8) + (3.382658 * x9) + (-59.754312 * x10) + (23.130320 * x11) + (-12.801386 * x12) + (-12.239312 * x13) + (-23.954819 * x14) + (-86.195277 * x15) + (37.819947 * x16) + (44.943211 * x17) + (93.591617 * x18) + (-3.557427 * x19) + (-70.371991 * x20) + (-31.041498 * x21) + (-38.331721 * x22) + (-97.107087 * x23) + (-73.013514 * x24) + (63.094194 * x25) + (68.396021 * x26) + (93.422892 * x27) + (-66.466260 * x28) + (-64.329148 * x29) + (96.025589 * x30) + (60.079827 * x31) + (-5.392007 * x32) + (73.603160 * x33) + (-25.695985 * x34) + (-97.197836 * x35)  <= 20.547220 ; 
consLB21:  (-6.727688 * x1) + (-89.463890 * x2) + (21.024298 * x3) + (16.662876 * x4) + (-16.416823 * x5) + (81.667830 * x6) + (-19.492321 * x7) + (67.753120 * x8) + (-92.033171 * x9) + (23.625112 * x10) + (53.047009 * x11) + (3.256749 * x12) + (-80.350254 * x13) + (-88.299891 * x14) + (37.359633 * x15) + (97.797774 * x16) + (69.197668 * x17) + (-16.730108 * x18) + (-33.914579 * x19) + (45.858508 * x20) + (50.140612 * x21) + (58.312383 * x22) + (49.171659 * x23) + (84.786097 * x24) + (56.813296 * x25) + (96.735432 * x26) + (15.087968 * x27) + (93.574868 * x28) + (-47.039518 * x29) + (17.008291 * x30) + (84.312850 * x31) + (31.301648 * x32) + (38.008964 * x33) + (8.709299 * x34) + (68.155475 * x35)  >= -42.448071 ; 
consUB21:  (-6.727688 * x1) + (-89.463890 * x2) + (21.024298 * x3) + (16.662876 * x4) + (-16.416823 * x5) + (81.667830 * x6) + (-19.492321 * x7) + (67.753120 * x8) + (-92.033171 * x9) + (23.625112 * x10) + (53.047009 * x11) + (3.256749 * x12) + (-80.350254 * x13) + (-88.299891 * x14) + (37.359633 * x15) + (97.797774 * x16) + (69.197668 * x17) + (-16.730108 * x18) + (-33.914579 * x19) + (45.858508 * x20) + (50.140612 * x21) + (58.312383 * x22) + (49.171659 * x23) + (84.786097 * x24) + (56.813296 * x25) + (96.735432 * x26) + (15.087968 * x27) + (93.574868 * x28) + (-47.039518 * x29) + (17.008291 * x30) + (84.312850 * x31) + (31.301648 * x32) + (38.008964 * x33) + (8.709299 * x34) + (68.155475 * x35)  <= 54.638908 ; 
consLB22:  (-69.003732 * x1) + (-74.518705 * x2) + (98.587978 * x3) + (-30.926633 * x4) + (78.170165 * x5) + (-98.264987 * x6) + (-50.783176 * x7) + (-7.804609 * x8) + (-90.352330 * x9) + (40.594088 * x10) + (83.035664 * x11) + (53.361423 * x12) + (-47.682521 * x13) + (-71.339349 * x14) + (12.452300 * x15) + (93.871786 * x16) + (70.641341 * x17) + (-34.056135 * x18) + (26.665147 * x19) + (59.152686 * x20) + (47.043388 * x21) + (-3.666932 * x22) + (24.149502 * x23) + (56.164820 * x24) + (-75.397848 * x25) + (-17.586822 * x26) + (-99.443302 * x27) + (-73.287145 * x28) + (93.848451 * x29) + (49.835869 * x30) + (97.497620 * x31) + (30.579966 * x32) + (5.131283 * x33) + (9.209127 * x34) + (-91.173391 * x35)  >= -3.217236 ; 
consUB22:  (-69.003732 * x1) + (-74.518705 * x2) + (98.587978 * x3) + (-30.926633 * x4) + (78.170165 * x5) + (-98.264987 * x6) + (-50.783176 * x7) + (-7.804609 * x8) + (-90.352330 * x9) + (40.594088 * x10) + (83.035664 * x11) + (53.361423 * x12) + (-47.682521 * x13) + (-71.339349 * x14) + (12.452300 * x15) + (93.871786 * x16) + (70.641341 * x17) + (-34.056135 * x18) + (26.665147 * x19) + (59.152686 * x20) + (47.043388 * x21) + (-3.666932 * x22) + (24.149502 * x23) + (56.164820 * x24) + (-75.397848 * x25) + (-17.586822 * x26) + (-99.443302 * x27) + (-73.287145 * x28) + (93.848451 * x29) + (49.835869 * x30) + (97.497620 * x31) + (30.579966 * x32) + (5.131283 * x33) + (9.209127 * x34) + (-91.173391 * x35)  <= 37.286359 ; 
consLB23:  (58.965714 * x1) + (-11.729010 * x2) + (30.164822 * x3) + (26.241525 * x4) + (-53.976155 * x5) + (-81.480491 * x6) + (45.447594 * x7) + (-87.971544 * x8) + (-69.019444 * x9) + (-8.238126 * x10) + (45.703016 * x11) + (18.488100 * x12) + (77.590060 * x13) + (-24.883447 * x14) + (71.917577 * x15) + (-36.007026 * x16) + (79.404403 * x17) + (47.444995 * x18) + (96.591554 * x19) + (-64.126825 * x20) + (81.975022 * x21) + (6.708331 * x22) + (-78.252474 * x23) + (-40.328769 * x24) + (15.766031 * x25) + (-80.318353 * x26) + (-82.543989 * x27) + (-29.873586 * x28) + (50.970284 * x29) + (49.449190 * x30) + (-75.015307 * x31) + (-12.946379 * x32) + (17.930364 * x33) + (95.677326 * x34) + (90.862900 * x35)  >= -70.577097 ; 
consUB23:  (58.965714 * x1) + (-11.729010 * x2) + (30.164822 * x3) + (26.241525 * x4) + (-53.976155 * x5) + (-81.480491 * x6) + (45.447594 * x7) + (-87.971544 * x8) + (-69.019444 * x9) + (-8.238126 * x10) + (45.703016 * x11) + (18.488100 * x12) + (77.590060 * x13) + (-24.883447 * x14) + (71.917577 * x15) + (-36.007026 * x16) + (79.404403 * x17) + (47.444995 * x18) + (96.591554 * x19) + (-64.126825 * x20) + (81.975022 * x21) + (6.708331 * x22) + (-78.252474 * x23) + (-40.328769 * x24) + (15.766031 * x25) + (-80.318353 * x26) + (-82.543989 * x27) + (-29.873586 * x28) + (50.970284 * x29) + (49.449190 * x30) + (-75.015307 * x31) + (-12.946379 * x32) + (17.930364 * x33) + (95.677326 * x34) + (90.862900 * x35)  <= 27.322601 ; 
consLB24:  (-37.295672 * x1) + (60.454495 * x2) + (3.341578 * x3) + (59.637524 * x4) + (-22.005017 * x5) + (45.583357 * x6) + (71.939803 * x7) + (-97.955509 * x8) + (-46.955605 * x9) + (-0.465389 * x10) + (-33.049106 * x11) + (-99.479780 * x12) + (60.784002 * x13) + (-1.520924 * x14) + (-10.782392 * x15) + (54.844375 * x16) + (27.126059 * x17) + (-47.037393 * x18) + (89.988567 * x19) + (47.277629 * x20) + (31.552820 * x21) + (-9.717804 * x22) + (-23.381610 * x23) + (-50.499790 * x24) + (-69.592762 * x25) + (79.680455 * x26) + (86.591738 * x27) + (-65.742286 * x28) + (-17.869375 * x29) + (46.190766 * x30) + (18.926935 * x31) + (-65.205796 * x32) + (7.837736 * x33) + (-18.677274 * x34) + (8.573231 * x35)  >= -20.761936 ; 
consUB24:  (-37.295672 * x1) + (60.454495 * x2) + (3.341578 * x3) + (59.637524 * x4) + (-22.005017 * x5) + (45.583357 * x6) + (71.939803 * x7) + (-97.955509 * x8) + (-46.955605 * x9) + (-0.465389 * x10) + (-33.049106 * x11) + (-99.479780 * x12) + (60.784002 * x13) + (-1.520924 * x14) + (-10.782392 * x15) + (54.844375 * x16) + (27.126059 * x17) + (-47.037393 * x18) + (89.988567 * x19) + (47.277629 * x20) + (31.552820 * x21) + (-9.717804 * x22) + (-23.381610 * x23) + (-50.499790 * x24) + (-69.592762 * x25) + (79.680455 * x26) + (86.591738 * x27) + (-65.742286 * x28) + (-17.869375 * x29) + (46.190766 * x30) + (18.926935 * x31) + (-65.205796 * x32) + (7.837736 * x33) + (-18.677274 * x34) + (8.573231 * x35)  <= 67.348181 ; 
consLB25:  (-22.562112 * x1) + (-51.297208 * x2) + (49.125590 * x3) + (70.712925 * x4) + (-9.734132 * x5) + (38.533800 * x6) + (-13.267291 * x7) + (90.610787 * x8) + (97.400587 * x9) + (78.644959 * x10) + (57.124184 * x11) + (-93.361164 * x12) + (68.595724 * x13) + (43.830856 * x14) + (-7.975457 * x15) + (48.289900 * x16) + (-27.607506 * x17) + (52.159228 * x18) + (93.678796 * x19) + (19.448692 * x20) + (33.932641 * x21) + (-35.185722 * x22) + (90.450366 * x23) + (-64.890153 * x24) + (-78.209091 * x25) + (-59.152482 * x26) + (-26.890444 * x27) + (-44.561298 * x28) + (-31.148408 * x29) + (29.060865 * x30) + (2.308097 * x31) + (-53.992149 * x32) + (97.839808 * x33) + (-62.885129 * x34) + (64.665399 * x35)  >= -43.006253 ; 
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
 display obj; 
end; 
