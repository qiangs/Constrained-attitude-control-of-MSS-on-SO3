function w  = fcn3(u1,R)
    w=zeros(3,1);
    if u1(1)>=R
        w(1)=R/2;
    end
    if u1(1)>0 && u1(1)<R
        w(1)=u1(1)-1/R*1/2*u1(1)^2;
    end
    if u1(1)<=-R
        w(1)=-R/2;
    end
    if u1(1)<0 && u1(1)>-R
        w(1)=u1(1)+1/R*1/2*u1(1)^2;
    end
    %% 
    if u1(2)>=R
        w(2)=R/2;
    end
    if u1(2)>0 && u1(2)<R
        w(2)=u1(2)-1/R*1/2*u1(2)^2;
    end
    if u1(2)<=-R
        w(2)=-R/2;
    end
    if u1(2)<0 && u1(2)>-R
        w(2)=u1(2)+1/R*1/2*u1(2)^2;
    end
    
    %% 
    if u1(2)>=R
        w(2)=R/2;
    end
    if u1(2)>0 && u1(2)<R
        w(2)=u1(2)-1/R*1/2*u1(2)^2;
    end
    if u1(2)<=-R
        w(2)=-R/2;
    end
    if u1(2)<0 && u1(2)>-R
        w(2)=u1(2)+1/R*1/2*u1(2)^2;
    end
end