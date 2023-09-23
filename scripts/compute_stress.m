function sigma = compute_stress(Q, element)
    sigma = zeros(8,1);
    Q = [Q;0;0;0;0];
    for i = 1:8
        t = [-element(i,7), -element(i,8), element(i,7), element(i,8)];
        q = [Q((element(i,1)*2-1),1);Q((element(i,1)*2),1);Q((element(i,2)*2-1),1);Q((element(i,2)*2),1)];
        sigma(i,1) = element(i,4)/element(i,6)*t*q;
    end
end
