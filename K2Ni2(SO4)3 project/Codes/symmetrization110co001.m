data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';


bins=0.06

en_d=0.0
en_up=0.1


pro.u=[1,0,1];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_1=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');
%w100_1.s=w100_1.s*(1e+04)/sum(w100_1.s,'all')

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.jpg')
%%
pro.u=[-1,-1,0];
pro.v=[0,0,-1];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_2=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot3.sqw');
%w100_2.s=w100_2.s*(1e+04)/sum(w100_2.s,'all')
%%
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot3.jpg')

%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';


%%
pro.u=[0,-1,-1];
pro.v=[-1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_3=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.sqw');
%w100_3.s=w100_3.s*(1e+04)/sum(w100_3.s,'all')
%%
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.jpg')


%pro.u=[0,1,1];
%pro.v=[-1,0,0];
%pro.uoffset=[0,0,0,0];
%pro.type='rrr';
%w100_3p=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.sqw');
%w100_3p.s=w100_3p.s*(1e+04)/sum(w100_3p.s,'all')

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.jpg')



w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix%+w100_3p.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix%+w100_3p.s.*w100_3p.npix;
w100_4.e=w100_1.e.*w100_1.npix.^2+w100_2.e.*w100_2.npix.^2+w100_3.e.*w100_3.npix.^2




nor=w100_1.npix+w100_2.npix+w100_3.npix%+w100_3p.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

nor2=(w100_1.npix+w100_2.npix+w100_3.npix).^2%+w100_3p.npix;
nor2(nor2 == 0) = 1;
w100_4.e=w100_4.e./nor2;



w100_5=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot4.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)+fliplr(w100_4.s).*fliplr(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))


w100_5.e=w100_4.e.*w100_4.npix.^2+flipud(w100_4.e).*flipud(w100_4.npix).^2+fliplr(w100_4.e).*fliplr(w100_4.npix).^2+flipud(fliplr(w100_4.e)).*flipud(fliplr(w100_4.npix)).^2


nor=w100_4.npix+flipud(w100_4.npix)+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

nor2=(w100_4.npix+flipud(w100_4.npix)+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))).^2
nor2(nor2==0)=1


w100_5.s=w100_5.s./nor
w100_5.e=w100_5.e./nor2


w100_a=w100_5














tht=-pi/4

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)
pro.u=pro1.u
pro.v=pro1.v


%w100_b=cut(w100_5,pro, [-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\110,001 group\plot4.sqw');







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

w100_1=cut(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_2=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_3=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_4p=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_5=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_6=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');



w100_7=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
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

w100_1=cut(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_2=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_3=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_4p=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_5=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_6=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');



w100_8=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
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

w100_1=cut(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_2=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=2*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_3=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=3*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_4p=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=4*pi/3


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_5=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');


tht=5*pi/3

pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

w100_6=cut_sqw(w100_4,pro1,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');



w100_9=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_9.npix=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
w100_9.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4p.s.*w100_4p.npix+w100_5.s.*w100_5.npix+w100_6.s.*w100_6.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4p.npix+w100_5.npix+w100_6.npix;
nor(nor == 0) = 1;
w100_9.s=w100_9.s./nor;


%%

w100_1=w100_7
w100_2=w100_8
w100_3=w100_9


w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_b=w100_4
%}


%x=linspace(-5,5,size(w100_a.s,2))
%y=sum(w100_a.s(size(w100_a.s,1)/2-10:size(w100_a.s,1)/2+10,:),1)
%plot(x,y)
%plot(x(size(x,2)/2:size(x,2)),y(size(y,2)/2:size(y,2))./200)
%x = linspace(-5,5,size(w100_a.s,2))
%y = sum(w100_a.s(size(w100_a.s,2)/2-2:size(w100_a.s,2)/2+2,:),1)/5;
%err = sum(w100_a.e(size(w100_a.e,1)/2-2:size(w100_a.e,1)/2+2,:),1)/25;
%err=sqrt(err)
%errorbar(x,y,err,'-s','MarkerSize',1,'MarkerEdgeColor','red','MarkerFaceColor','red')


%{

x=linspace(-sqrt(50),sqrt(50),size(diag(w100_a.s),1))
y1=diag(w100_a.s)
y2=[0;diag(w100_a.s,1)]
y3=[0;diag(w100_a.s,2);0]
y_2=[0;diag(w100_a.s,-1)]
y_3=[0;diag(w100_a.s,-2);0]

err1=diag(w100_a.e)
err2=[0;diag(w100_a.e,1)]
err3=[0;diag(w100_a.e,2);0]
err_2=[0;diag(w100_a.e,-1)]
err_3=[0;diag(w100_a.e,-2);0]

y=(y1+y2+y3+y_2+y_3)/5
err=(err1+err2+err3+err_2+err_3)/25
err=sqrt(err)

errorbar(x,y,err,'-s','MarkerSize',1,'MarkerEdgeColor','red','MarkerFaceColor','red')
%plot(x,y)
%}
