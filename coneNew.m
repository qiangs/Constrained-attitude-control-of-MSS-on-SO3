function  coneNew(B,theta,c)
% 将绕Z轴为旋转中心的张角为theta的圆锥转动到以B 为旋转中心的新位置。 
% B 列向量 ，theta deg

    z=[0,0,1]';
    vZB = cross(z,B);
    vZB = vZB/norm(vZB);
    cosalpha=dot(z,B)/norm(z,2)/norm(B,2);
    alpha = acos(cosalpha);
    r = sin(deg2rad(theta));
    h = cos(deg2rad(theta));
    m = h/r;
    [R,A] = meshgrid(linspace(0,r,21),linspace(0,2*pi,41));
    X = R .* cos(A);
    Y = R .* sin(A);
    Z = m*R;

    % Cone around the z-axis, point at the origin
    [a,b] = size(X);
    VrotX = zeros(a,b);
    VrotY = zeros(a,b);
    VrotZ = zeros(a,b);
    
    for i =1:a
        for j=1:b
            P = pivoting([X(i,j),Y(i,j),Z(i,j)],vZB',alpha);
            VrotX(i,j) = P(1);
            VrotY(i,j) = P(2);
            VrotZ(i,j) = P(3);
        end
    end
    mesh(VrotX,VrotY,VrotZ)
    [M,N]=size(VrotX);
    col=ones(M,N,3);
%     col(:,:,1)=col1(1);
%     col(:,:,2)=col1(2); %蓝色
%     col(:,:,2)=col1(3);
%     if theta>48||theta<10
%      surf(VrotX,VrotY,VrotZ,col,'linestyle','none')
%      else
    surf(VrotX,VrotY,VrotZ,'linestyle','none')
%     if c==1
%     colorbar
%        colormap(GnBu) 
%     end
%     if c==2
%         colormap(Greens) 
%     end
%      end
%     hold on
    axis equal
end