%Equilibri estesi su esempio inventato 


x0 = [-2,1,1,0,1,1]
xmin = min(x0)
xMax = max(x0)
qmin = floor(xmin+0.5)
qMax = floor(xMax+0.5)
i=0;
disp('********Equilibri Estesi Grafo a 6 Nodi********')
for k1 = qmin:qMax
    for k2 = qmin:qMax
        for k3 = qmin:qMax
            for k4 = qmin:qMax
                for k5 = qmin:qMax
                    for k6 = qmin:qMax
                 radici = [(k2+k5)/2 (k1+k3)/2 k5 k5 (k1+k3)/2 k5];
                 s_up = [k1+0.5 k2+0.5 k3+0.5 k4+0.5 k5+0.5 k6+0.5];
                 s_down = [k1-0.5 k2-0.5 k3-0.5 k4-0.5 k5-0.5 k6-0.5];
                 i = i+1;
               if (radici<s_up)&(radici>s_down)
                   disp('equilibrio trovato')
                   radici
               end
                    end
               end
            end
        end
    end
end

