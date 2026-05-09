%Intensity cuts along a Q
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

bins=0.4






%%


pro.u=[-0.5,-1,0.5]*(1/sqrt(1.5));
pro.v=[1,0,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';

disp('stepa')

w100_4=cut_sqw(data_source, pro,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot2.sqw');


tht=0

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepa0')
w100_1=cut(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepa1')
w100_2=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepa2')
w100_3=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepa3')
w100_4p=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepa4')
w100_5=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepa5')
w100_6=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');




N=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
M=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;
O=w100_1.e.*w100_1.npix^2+w100_2.e.*w100_2.npix^2+w100_3.e.*w100_3.npix^2+w100_4p.e.*w100_4p.npix^2+w100_5.e.*w100_5.npix^2+w100_6.e.*w100_6.npix^2;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
M=M./nor;

nor2=(w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix)^2;
nor2(nor2 == 0) = 1;
O=O./nor2;
w100_7=w100_1

w100_7.s=M
w100_7.npix=N
w100_7.e=O

%%

pro.u=[0.5,-0.5,-1]*(1/sqrt(1.5));
pro.v=[1,1,0]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';

disp('stepb')
w100_4=cut_sqw(data_source, pro,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot2.sqw');



tht=0

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepb0')
w100_1=cut(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepb1')
w100_2=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepb2')
w100_3=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepb3')
w100_4p=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)


disp('stepb4')
w100_5=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)


disp('stepb5')
w100_6=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');




N=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
M=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;
O=w100_1.e.*w100_1.npix^2+w100_2.e.*w100_2.npix^2+w100_3.e.*w100_3.npix^2+w100_4p.e.*w100_4p.npix^2+w100_5.e.*w100_5.npix^2+w100_6.e.*w100_6.npix^2;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
M=M./nor;

nor2=(w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix)^2;
nor2(nor2 == 0) = 1;
O=O./nor2;
w100_8=w100_1

w100_8.s=M
w100_8.npix=N
w100_8.e=O



%%

pro.u=[-1,0.5,-0.5]*(1/sqrt(1.5));
pro.v=[0,1,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';

disp('stepc')
w100_4=cut_sqw(data_source, pro,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot1.sqw');



tht=0

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepc0')
w100_1=cut(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepc1')
w100_2=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepc2')
w100_3=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepc3')
w100_4p=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepc4')
w100_5=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

disp('stepc5')
w100_6=cut_sqw(w100_4,pro1,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');




N=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
M=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;
O=w100_1.e.*w100_1.npix^2+w100_2.e.*w100_2.npix^2+w100_3.e.*w100_3.npix^2+w100_4p.e.*w100_4p.npix^2+w100_5.e.*w100_5.npix^2+w100_6.e.*w100_6.npix^2;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
M=M./nor;

nor2=(w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix)^2;
nor2(nor2 == 0) = 1;
O=O./nor2;

w100_9=w100_1

w100_9.s=M
w100_9.npix=N
w100_9.e=O



%%

w100_1=w100_7
w100_2=w100_8
w100_3=w100_9



N=w100_1.npix+w100_2.npix+w100_3.npix;
M=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix;
O=w100_1.s.*w100_1.npix^2+w100_2.s.*w100_2.npix^2+w100_3.s.*w100_3.npix^2;



nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
M=M./nor;


nor2=(w100_1.npix+w100_2.npix+w100_3.npix)^2;
nor2(nor2 == 0) = 1;
O=O./nor2;

w100_4=w100_1
w100_4.s=M
w100_4.npix=N
w100_4.e=O


w100_a=w100_4
