function [ P_sgte, it] = GS( A, b, P0, it_max, tol)
% Metodo de Gauss Seidel
P_actual = P0;
P_sgte = P_actual;
n = length(P0);
for it = 1:it_max
    Pactual_aux = P_actual;
    for eq = 1:n
        v_ind1 = 1:eq-1;
        v_ind2 = eq+1:n;
        v_ind = [v_ind1 v_ind2];
        sumatoria = A(eq, v_ind)*P_actual(v_ind, 1);
        P_sgte(eq) = (b(eq) - sumatoria)/( A(eq, eq) );
        P_actual(eq) = P_sgte(eq);
    end
    if( norm( P_sgte - Pactual_aux ) < tol)
        break;
    end
    P_actual = P_sgte;
end



end

%% Obs: el metodo de Jacobi es muy similar, solo se omite P_actual(eq) = P_sgte(eq);