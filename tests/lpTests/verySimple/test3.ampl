var x1 , >= -1.000000 , <= 2.000000   ; 
var x2 , >= 1.000000 , <= 2.000000   ; 
# End of variable declarations 
maximize obj: 0  +( -1.000000 * x1 )  +( -1.000000 * x2 ) ; 
consLB0:  (1.000000 * x1) + (0.000000 * x2)  >= 0.000000 ; 
consUB0:  (1.000000 * x1) + (0.000000 * x2)  <= 10.000000 ; 
consLB1:  (0.000000 * x1) + (1.000000 * x2)  >= 0.000000 ; 
consUB1:  (0.000000 * x1) + (1.000000 * x2)  <= 10.000000 ; 
 solve; 
 display obj; 
 display x1; 
 display x2; 
end; 
