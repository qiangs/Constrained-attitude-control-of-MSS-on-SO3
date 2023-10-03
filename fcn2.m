function w  = fcn2(u1,R)
    % 密度函数 为 2/R
    w=zeros(3,1);
    if u1(1)>=R
        w(1)=R;
    end
    if u1(1)>0 && u1(1)<R
        w(1)=2*u1(1)-1/R*u1(1)^2;
    end
    if u1(1)<=-R
        w(1)=-R;
    end
    if u1(1)<0 && u1(1)>-R
        w(1)=2*u1(1)+1/R*u1(1)^2;
    end
    %% 
    if u1(2)>=R
        w(2)=R;
    end
    if u1(2)>0 && u1(2)<R
        w(2)=2*u1(2)-1/R*u1(2)^2;
    end
    if u1(2)<=-R
        w(2)=-R;
    end
    if u1(2)<0 && u1(2)>-R
        w(2)=2*u1(2)+1/R*u1(2)^2;
    end
    
    %% 
    if u1(3)>=R
        w(3)=R;
    end
    if u1(3)>0 && u1(3)<R
        w(3)=2*u1(3)-1/R*u1(3)^2;
    end
    if u1(3)<=-R
        w(3)=-R;
    end
    if u1(3)<0 && u1(3)>-R
        w(3)=2*u1(3)+1/R*u1(3)^2;
    end
end