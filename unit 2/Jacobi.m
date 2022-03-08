function [ P_sgte, it] = Jacobi( A, b, P0, it_max, tol)

P_actual = P0;
P_sgte = P_actual;
n = length(P0);
for it = 1:it_max
    for eq = 1:n
        v_ind1 = 1:eq-1;
        v_ind2 = eq+1:n;
        v_ind = [v_ind1 v_ind2];
        sumatoria = A(eq, v_ind)*P_actual(v_ind, 1);
        P_sgte(eq) = (b(eq) - sumatoria)/( A(eq, eq) );
    end
    if( norm( P_sgte - P_actual ) < tol)
        break;
    end
    P_actual = P_sgte;
end



end

