function R=tran(lamda, fai)
lamda=lamda/180*pi;
fai=fai/180*pi;

R1=[cos(lamda) sin(-lamda) 0;
    sin(lamda) cos(lamda) 0;
    0 0 1];
R2=[1 0 0;
    0 cos(fai) -sin(fai);
    0 sin(fai) cos(fai)];

R=R2*R1;
                                                                                                                                                                                                                                                                                                                                                       