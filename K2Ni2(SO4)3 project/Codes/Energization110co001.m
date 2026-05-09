data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

max_E=4
bins=0.1

tht=0

pro.u=[1,0,1]*sqrt(1/2);
pro.v=[0,-1,0];

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v

pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_1=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');
%w100_1.s=w100_1.s*(1e+04)/sum(w100_1.s,'all')

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.jpg')
%%
pro.u=[-1,-1,0]*sqrt(1/2);
pro.v=[0,0,-1];

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v


pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_2=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot3.sqw');
%w100_2.s=w100_2.s*(1e+04)/sum(w100_2.s,'all')
%%
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot3.jpg')




%%
pro.u=[0,-1,-1]*sqrt(1/2);
pro.v=[-1,0,0];

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v

pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_3=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.sqw');
%w100_3.s=w100_3.s*(1e+04)/sum(w100_3.s,'all')
%%
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.jpg')


pro.u=[0,1,1]*sqrt(1/2);
pro.v=[-1,0,0];

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v


pro.uoffset=[0,0,0,0];
pro.type='aaa';
%w100_3p=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,6],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.sqw');
%w100_3p.s=w100_3p.s*(1e+04)/sum(w100_3p.s,'all')

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.jpg')



w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix%+w100_3p.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix%+w100_3p.s.*w100_3p.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix%+w100_3p.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;


w100_5=w100_1%cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot4.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+fliplr(w100_4.s).*fliplr(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor


w100_a=w100_5





















%{

%%



%Intensity cuts along a Q
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

bins=0.1



%%


pro.u=[0.5,-0.5,-1];
pro.v=[1,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_4=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot1.sqw');



tht=0

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_1=cut(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_2=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_3=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_4p=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_5=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_6=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');



w100_7=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_7.npix=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
w100_7.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
w100_7.s=w100_7.s./nor;

%%

pro.u=[-1,0.5,-0.5];
pro.v=[0,1,1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_4=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot2.sqw');



tht=0

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_1=cut(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_2=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_3=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_4p=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_5=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_6=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');



w100_8=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_8.npix=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
w100_8.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
w100_8.s=w100_8.s./nor;


%%

pro.u=[0.5,0.5,-1];
pro.v=[-1,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_4=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot1.sqw');



tht=0

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_1=cut(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_2=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_3=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_4p=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_5=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_6=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');



w100_9=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_9.npix=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
w100_9.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
w100_9.s=w100_9.s./nor;


%%

w100_1=w100_7
w100_2=w100_8
w100_3=w100_9


w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_b=w100_4
%}
