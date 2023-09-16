function [sigma, Q] = sol_TenBarTruss(r1, r2)
    element = importdata('element.mat');
    nodes = importdata('nodes.mat');

    for i = 1:10
        element(i,6) = sqrt((nodes(element(i,2),1)-nodes(element(i,1),1))^2+(nodes(element(i,2),2)-nodes(element(i,1),2))^2);
        element(i,7) = (nodes(element(i,2),1)-nodes(element(i,1),1))/element(i,6);
        element(i,8) = (nodes(element(i,2),2)-nodes(element(i,1),2))/element(i,6);
        if i <=6
            r = r1;
        else
            r = r2;
        end
        element(i,5) = pi*r^2;
        element(i,4) = 200000000000;
    end

    K = add_element(element);
    F = zeros(8,1);
    F(4) = -1E+7;
    F(8) = -1E+7;
    Q = zeros(8,1);
    Q = inv(K)*F;
    sigma = compute_stress(Q, element);

end


