var x1 , >= -78.315200   ; 
var x2 , >= -10.811074 , <= 30.866833   ; 
var x3 , >= -5.041629 , <= 39.087064   ; 
var x4 , <= 83.536779   ; 
var x5 , >= -75.091980 , <= 24.637524   ; 
# End of variable declarations 
maximize obj: 0  +( -40.220622 * x1 )  +( 40.109162 * x2 )  +( -22.761801 * x3 )  +( 69.207065 * x4 )  +( 2.059664 * x5 ) ; 
consLB0:  (-58.900517 * x1) + (-21.808872 * x2) + (-93.926747 * x3) + (-66.205290 * x4) + (-31.856707 * x5)  >= -41.136980 ; 
consUB0:  (-58.900517 * x1) + (-21.808872 * x2) + (-93.926747 * x3) + (-66.205290 * x4) + (-31.856707 * x5)  <= 26.840626 ; 
consLB1:  (71.004340 * x1) + (-98.611639 * x2) + (55.990757 * x3) + (82.473646 * x4) + (-72.721556 * x5)  >= -71.720803 ; 
consUB1:  (71.004340 * x1) + (-98.611639 * x2) + (55.990757 * x3) + (82.473646 * x4) + (-72.721556 * x5)  <= 18.724992 ; 
consLB2:  (44.999960 * x1) + (-60.880627 * x2) + (-40.163626 * x3) + (-85.226748 * x4) + (-87.619765 * x5)  >= -13.635355 ; 
consUB2:  (44.999960 * x1) + (-60.880627 * x2) + (-40.163626 * x3) + (-85.226748 * x4) + (-87.619765 * x5)  <= 65.767594 ; 
consLB3:  (-82.297716 * x1) + (-95.868885 * x2) + (-90.646222 * x3) + (-55.889535 * x4) + (-20.861342 * x5)  >= -78.951194 ; 
consUB3:  (-82.297716 * x1) + (-95.868885 * x2) + (-90.646222 * x3) + (-55.889535 * x4) + (-20.861342 * x5)  <= 25.833315 ; 
consUB4:  (21.587614 * x1) + (-43.198813 * x2) + (-29.334421 * x3) + (86.376200 * x4) + (-11.591107 * x5)  <= 24.487758 ; 
consLB5:  (22.149539 * x1) + (-54.877177 * x2) + (0.557140 * x3) + (-95.091187 * x4) + (-34.157393 * x5)  >= -92.346762 ; 
consUB5:  (22.149539 * x1) + (-54.877177 * x2) + (0.557140 * x3) + (-95.091187 * x4) + (-34.157393 * x5)  <= 99.492608 ; 
consLB6:  (-97.800654 * x1) + (-77.076607 * x2) + (-15.017096 * x3) + (-60.640293 * x4) + (99.164188 * x5)  >= -92.674143 ; 
consUB6:  (-97.800654 * x1) + (-77.076607 * x2) + (-15.017096 * x3) + (-60.640293 * x4) + (99.164188 * x5)  <= 68.211596 ; 
consLB7:  (65.393536 * x1) + (-90.401758 * x2) + (84.949378 * x3) + (86.303467 * x4) + (12.304183 * x5)  >= -47.386872 ; 
 solve; 
 display x1; 
 display x2; 
 display x3; 
 display x4; 
 display x5; 
 display obj; 
end; 
