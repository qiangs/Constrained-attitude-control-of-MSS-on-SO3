function [lamda, fei]=Cal_JW(x,y,z)

tol=1e-10;

fei=asin(z);

if abs(z-1)<tol || abs(z+1)<tol
    
    lamda=100;
    
else
    
    x1=x/sqrt(1-z^2);
    y1=y/sqrt(1-z^2);
    
    if abs(x1-1)<tol
        lamda=0;
    elseif abs(x1+1)<tol
        lamda=pi;
    elseif abs(y1-1)<tol
        lamda=pi/2;
    elseif abs(y1+1)<tol
        lamda=1.5*pi;
    else
        
        temp=acos(abs(x1));
        
        if x1>0 && y1 >0
            lamda=temp;
        elseif x1<0 && y1>0
            lamda=pi-temp;
        elseif x1<0 && y1<0
            lamda=pi+temp;
        else
            lamda=2*pi-temp;
        end
    end
end

fei=fei/pi*180;
lamda=lamda/pi*180;
end

                                    



