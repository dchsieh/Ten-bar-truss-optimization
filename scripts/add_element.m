function K = add_element(element)
    K_c = zeros(12,12);
    K_initial = zeros(4,4);
    for i = 1:10
        K_i = zeros(4,4);
        K_i(1,1) = element(i,7)^2;
        K_i(2,2) = element(i,8)^2;
        K_i(3,3) = K_i(1,1);
        K_i(4,4) = K_i(2,2);
        K_i(1,2) = element(i,7)*element(i,8);
        K_i(1,3) = -K_i(1,1);
        K_i(1,4) = -K_i(1,2);
        K_i(2,3) = K_i(1,4);
        K_i(2,4) = -K_i(2,2);
        K_i(3,4) = K_i(1,2);
        K_i = K_i./element(i,6).*element(i,4).*element(i,5);
        K_initial(:,:,i) = K_i;
    end
    
    for i = 1:10
        q = zeros(4,1);
        q(1) = element(i,1)*2-1;
        q(2) = element(i,1)*2;
        q(3) = element(i,2)*2-1;
        q(4) = element(i,2)*2;
        for j = 1:4
            for l = 1:4
            K_c(q(j),q(l)) = K_c(q(j),q(l))+K_initial(j,l,i);
            
            end

        end
    end

    K_t = K_c';
    
    for i = 1:12
    K_t(i,i) = 0;
    end

    K_c = K_c+K_t;
    K = zeros(8,8);

    for i = 1:8
        for j = 1:8
            K(i,j) = K_c(i,j);
        end
    end

end
