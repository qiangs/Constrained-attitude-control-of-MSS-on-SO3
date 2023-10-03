function w  = fcn(u1,R)
    % 直接饱和

    w=zeros(3,1);
    if u1(1)>=R
        w(1)=R;
    end
    if u1(1)>0 && u1(1)<R
        w(1)=u1(1);
    end
    if u1(1)<=-R
        w(1)=-R;
    end
    if u1(1)<0 && u1(1)>-R
        w(1)=u1(1);
    end
    %% 
    if u1(2)>=R
        w(2)=R;
    end
    if u1(2)>0 && u1(2)<R
        w(2)=u1(2);
    end
    if u1(2)<=-R
        w(2)=-R;
    end
    if u1(2)<0 && u1(2)>-R
        w(2)=u1(2);
    end
    
    %% 
    if u1(3)>=R
        w(3)=R;
    end
    if u1(3)>0 && u1(3)<R
        w(3)=u1(3);
    end
    if u1(3)<=-R
        w(3)=-R;
    end
    if u1(3)<0 && u1(3)>-R
        w(3)=u1(3);
    end
end