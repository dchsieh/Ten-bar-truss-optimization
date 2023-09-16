# Ten-bar-truss-optimization
## main.m
 main.m is the main program.
## add_element.m, compute_stress.m
 add_element.m, compute_stress.m, and sol_TenBarTruss is the function to calculate the stress and deformation for the truss.
## boj.m, nonlcon.m
 obj.m and nonlcon.m is the function for fmincon to calculate optimize result.
 obj.m is the design function.
 nonlcon.m is the design constrain.
## nodes.mat, element.mat
 nodes.mat is the dataset for nodes coordinate.
 element.mat is the dataset for element information including nodes, length, cross-section area, elastic modulus, sin value, cos value.
 
