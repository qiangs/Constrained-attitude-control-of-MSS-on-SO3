function  cirxyz = plotCircle(A,ksi,color)
%��ά�ռ仭Բ��AΪ��Բ�ļ�ԭ��ķ�����,ksiΪԲ���Ž�
% color 1 ��ɫ��2��ɫ
    B=A;
    A=cos(ksi)*A;
    
    n=B';%������n
    r=sin(ksi);%Բ�İ뾶Ϊ1
    c=A';%Բ�ĵ�����
    theta=(0:2*pi/100:2*pi)';%theta�Ǵ�0��2*pi
    a=cross(n,[1 0 0]);%n��i��ˣ���ȡa����
    if ~any(a)%���aΪ����������n��j���
        a=cross(n,[0 1 0]);
    end
    b=cross(n,a);%��ȡb����
    a=a/norm(a);%��λ��a����
    b=b/norm(b);%��λ��b����
    
    c1=c(1)*ones(size(theta,1),1);
    c2=c(2)*ones(size(theta,1),1);
    c3=c(3)*ones(size(theta,1),1);
    
    x=c1+r*a(1)*cos(theta)+r*b(1)*sin(theta);%Բ�ϸ����x����
    y=c2+r*a(2)*cos(theta)+r*b(2)*sin(theta);%Բ�ϸ����y����
    z=c3+r*a(3)*cos(theta)+r*b(3)*sin(theta);%Բ�ϸ����z����
    if color==1
        plot3(x,y,z,'r-.','linewidth',2)
    else
        plot3(x,y,z,'g-.','linewidth',2)  
    end
    if color==3
        plot3(x,y,z,'k-','linewidth',2)
    end
    cirxyz =[x,y,z];
end

