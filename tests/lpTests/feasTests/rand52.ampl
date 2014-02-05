var x1 , >= -6.211700 , <= 84.265795   ; 
var x2 , >= -94.005381 , <= 63.884926   ; 
var x3 , >= -3.359926   ; 
var x4 , <= 22.985883   ; 
var x5 , >= -43.275827 , <= 12.794711   ; 
var x6 , >= -27.711303 , <= 93.739360   ; 
var x7 , >= -41.180053 , <= 90.483186   ; 
# End of variable declarations 
maximize obj: 0  +( 39.169578 * x1 )  +( 82.925424 * x2 )  +( 8.175748 * x3 )  +( -15.493660 * x4 )  +( 36.370450 * x5 )  +( -40.434563 * x6 )  +( 19.363911 * x7 ) ; 
consLB0:  (-62.822978 * x1) + (66.878053 * x2) + (-10.036798 * x3) + (37.916740 * x4) + (30.156811 * x5) + (57.030126 * x6) + (-84.960346 * x7)  >= -84.903811 ; 
consUB0:  (-62.822978 * x1) + (66.878053 * x2) + (-10.036798 * x3) + (37.916740 * x4) + (30.156811 * x5) + (57.030126 * x6) + (-84.960346 * x7)  <= 57.020676 ; 
consLB1:  (43.874864 * x1) + (-78.502609 * x2) + (-30.054593 * x3) + (-25.488046 * x4) + (9.708863 * x5) + (-29.737972 * x6) + (94.346750 * x7)  >= -10.417075 ; 
consUB1:  (43.874864 * x1) + (-78.502609 * x2) + (-30.054593 * x3) + (-25.488046 * x4) + (9.708863 * x5) + (-29.737972 * x6) + (94.346750 * x7)  <= 98.651253 ; 
consLB2:  (-57.492828 * x1) + (-42.715197 * x2) + (-26.861050 * x3) + (-89.560817 * x4) + (-49.726254 * x5) + (60.007219 * x6) + (35.417311 * x7)  >= -64.295883 ; 
consUB2:  (-57.492828 * x1) + (-42.715197 * x2) + (-26.861050 * x3) + (-89.560817 * x4) + (-49.726254 * x5) + (60.007219 * x6) + (35.417311 * x7)  <= 66.859375 ; 
consLB3:  (97.444294 * x1) + (53.922304 * x2) + (-47.199617 * x3) + (-36.050239 * x4) + (73.921990 * x5) + (65.223390 * x6) + (-85.777844 * x7)  >= -26.202600 ; 
consUB3:  (97.444294 * x1) + (53.922304 * x2) + (-47.199617 * x3) + (-36.050239 * x4) + (73.921990 * x5) + (65.223390 * x6) + (-85.777844 * x7)  <= 18.448901 ; 
consLB4:  (25.506445 * x1) + (-84.836055 * x2) + (19.300940 * x3) + (38.359354 * x4) + (51.065890 * x5) + (82.071356 * x6) + (-67.092675 * x7)  >= -24.113503 ; 
consUB4:  (25.506445 * x1) + (-84.836055 * x2) + (19.300940 * x3) + (38.359354 * x4) + (51.065890 * x5) + (82.071356 * x6) + (-67.092675 * x7)  <= 16.752841 ; 
consLB5:  (6.143454 * x1) + (58.721601 * x2) + (-50.990400 * x3) + (-57.706327 * x4) + (23.889703 * x5) + (-83.233017 * x6) + (25.765636 * x7)  >= -39.512541 ; 
consUB5:  (6.143454 * x1) + (58.721601 * x2) + (-50.990400 * x3) + (-57.706327 * x4) + (23.889703 * x5) + (-83.233017 * x6) + (25.765636 * x7)  <= 29.310187 ; 
consLB6:  (85.068375 * x1) + (-60.634729 * x2) + (-45.961671 * x3) + (38.146938 * x4) + (-6.437557 * x5) + (-68.677889 * x6) + (-45.246141 * x7)  >= -51.785085 ; 
consUB6:  (85.068375 * x1) + (-60.634729 * x2) + (-45.961671 * x3) + (38.146938 * x4) + (-6.437557 * x5) + (-68.677889 * x6) + (-45.246141 * x7)  <= 66.052668 ; 
consLB7:  (-64.194861 * x1) + (38.913026 * x2) + (46.601765 * x3) + (36.018941 * x4) + (23.019770 * x5) + (49.281287 * x6) + (-80.328572 * x7)  >= -64.255650 ; 
consUB7:  (-64.194861 * x1) + (38.913026 * x2) + (46.601765 * x3) + (36.018941 * x4) + (23.019770 * x5) + (49.281287 * x6) + (-80.328572 * x7)  <= 32.212370 ; 
consLB8:  (12.131541 * x1) + (-87.460756 * x2) + (-80.591802 * x3) + (-66.552675 * x4) + (93.200365 * x5) + (53.873964 * x6) + (32.277041 * x7)  >= -16.787005 ; 
consUB8:  (12.131541 * x1) + (-87.460756 * x2) + (-80.591802 * x3) + (-66.552675 * x4) + (93.200365 * x5) + (53.873964 * x6) + (32.277041 * x7)  <= 47.467043 ; 
consLB9:  (-11.208104 * x1) + (66.889012 * x2) + (21.021812 * x3) + (-19.685227 * x4) + (-44.950558 * x5) + (69.955401 * x6) + (-88.544217 * x7)  >= -28.598117 ; 
consUB9:  (-11.208104 * x1) + (66.889012 * x2) + (21.021812 * x3) + (-19.685227 * x4) + (-44.950558 * x5) + (69.955401 * x6) + (-88.544217 * x7)  <= 49.802227 ; 
consLB10:  (-40.228809 * x1) + (-72.050096 * x2) + (-2.575254 * x3) + (24.918772 * x4) + (27.235482 * x5) + (-32.673705 * x6) + (26.599101 * x7)  >= -78.897952 ; 
consLB11:  (-10.621953 * x1) + (64.379353 * x2) + (9.147156 * x3) + (-16.325088 * x4) + (80.243319 * x5) + (61.775034 * x6) + (18.775193 * x7)  >= -28.848291 ; 
consUB11:  (-10.621953 * x1) + (64.379353 * x2) + (9.147156 * x3) + (-16.325088 * x4) + (80.243319 * x5) + (61.775034 * x6) + (18.775193 * x7)  <= 79.484591 ; 
consLB12:  (-36.355190 * x1) + (-48.875909 * x2) + (73.970208 * x3) + (-9.833836 * x4) + (68.658940 * x5) + (39.095736 * x6) + (37.980716 * x7)  >= -76.713359 ; 
consUB12:  (-36.355190 * x1) + (-48.875909 * x2) + (73.970208 * x3) + (-9.833836 * x4) + (68.658940 * x5) + (39.095736 * x6) + (37.980716 * x7)  <= 35.373182 ; 
consLB13:  (-95.417914 * x1) + (73.497232 * x2) + (19.386049 * x3) + (11.180992 * x4) + (88.599055 * x5) + (4.764970 * x6) + (23.936384 * x7)  >= -23.365599 ; 
consUB13:  (-95.417914 * x1) + (73.497232 * x2) + (19.386049 * x3) + (11.180992 * x4) + (88.599055 * x5) + (4.764970 * x6) + (23.936384 * x7)  <= 95.323130 ; 
consLB14:  (50.551980 * x1) + (91.656403 * x2) + (56.502682 * x3) + (-18.589436 * x4) + (-95.168022 * x5) + (-84.340257 * x6) + (-89.144510 * x7)  >= -2.539981 ; 
consUB14:  (50.551980 * x1) + (91.656403 * x2) + (56.502682 * x3) + (-18.589436 * x4) + (-95.168022 * x5) + (-84.340257 * x6) + (-89.144510 * x7)  <= 94.830978 ; 
consLB15:  (24.522008 * x1) + (-41.122140 * x2) + (41.379550 * x3) + (-81.840507 * x4) + (-98.748426 * x5) + (-6.822292 * x6) + (-82.631424 * x7)  >= -26.395029 ; 
consUB15:  (24.522008 * x1) + (-41.122140 * x2) + (41.379550 * x3) + (-81.840507 * x4) + (-98.748426 * x5) + (-6.822292 * x6) + (-82.631424 * x7)  <= 95.314910 ; 
consLB16:  (74.281313 * x1) + (42.487036 * x2) + (-8.218642 * x3) + (6.269466 * x4) + (-49.575610 * x5) + (18.306407 * x6) + (-57.121993 * x7)  >= -50.786189 ; 
consUB16:  (74.281313 * x1) + (42.487036 * x2) + (-8.218642 * x3) + (6.269466 * x4) + (-49.575610 * x5) + (18.306407 * x6) + (-57.121993 * x7)  <= 9.792338 ; 
consLB17:  (60.737627 * x1) + (46.149835 * x2) + (-37.346871 * x3) + (74.920285 * x4) + (-42.572314 * x5) + (-7.566588 * x6) + (-18.762042 * x7)  >= -14.895115 ; 
consUB17:  (60.737627 * x1) + (46.149835 * x2) + (-37.346871 * x3) + (74.920285 * x4) + (-42.572314 * x5) + (-7.566588 * x6) + (-18.762042 * x7)  <= 77.466659 ; 
consLB18:  (-92.232832 * x1) + (-76.126123 * x2) + (-1.298674 * x3) + (65.501794 * x4) + (76.114307 * x5) + (11.549428 * x6) + (-35.411181 * x7)  >= -15.899831 ; 
consUB18:  (-92.232832 * x1) + (-76.126123 * x2) + (-1.298674 * x3) + (65.501794 * x4) + (76.114307 * x5) + (11.549428 * x6) + (-35.411181 * x7)  <= 45.023797 ; 
consLB19:  (17.362299 * x1) + (-92.055013 * x2) + (1.456576 * x3) + (-59.595158 * x4) + (-88.153569 * x5) + (73.438298 * x6) + (-30.558709 * x7)  >= -76.489684 ; 
consUB19:  (17.362299 * x1) + (-92.055013 * x2) + (1.456576 * x3) + (-59.595158 * x4) + (-88.153569 * x5) + (73.438298 * x6) + (-30.558709 * x7)  <= 5.460408 ; 
 solve; 
 display x1; 
 display x2; 
 display x3; 
 display x4; 
 display x5; 
 display x6; 
 display x7; 
 display obj; 
end; 
