%Intensity cuts along a Q

%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

bins=0.1
tht=0

max_E=2.5

pro.u=[1,0,0];
pro.v=[0,1,0];


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v


pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_1=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
plot(w100_1)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.jpg')


%%
pro.u=[0,0,1];
pro.v=[1,0,0];


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v



pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_2=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot2.sqw');
plot(w100_2)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\plot2.jpg')

%%

pro.u=[0,1,0];
pro.v=[0,0,1];


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v



pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_3=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot3.sqw');
plot(w100_3)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\plot3.jpg')

%%
%{
w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix;
w100_4.s=w100_1.s+w100_2.s+w100_3.s;
w100_1.npix(w100_1.npix~= 0) = 1;
w100_2.npix(w100_2.npix~= 0) = 1;
w100_3.npix(w100_3.npix~= 0) = 1;
nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;
%}

%%

w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

%%






w100_5=w100_1%cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5















%%

%Intensity cuts along a Q

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

bins=0.1
tht=0

max_E=4

pro.u=[1,0,0];
pro.v=[0,1,0];


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v


pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_1=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
plot(w100_1)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.jpg')


%%
pro.u=[0,0,1];
pro.v=[1,0,0];


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v



pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_2=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot2.sqw');
plot(w100_2)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\plot2.jpg')

%%

pro.u=[0,1,0];
pro.v=[0,0,1];


pro1.u=pro.u*cos(tht)+pro.v*sin(tht)
pro1.v=pro.u*(-sin(tht))+pro.v*cos(tht)

pro.u=pro1.u
pro.v=pro1.v



pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_3=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot3.sqw');
plot(w100_3)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\plot3.jpg')

%%
%{
w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix;
w100_4.s=w100_1.s+w100_2.s+w100_3.s;
w100_1.npix(w100_1.npix~= 0) = 1;
w100_2.npix(w100_2.npix~= 0) = 1;
w100_3.npix(w100_3.npix~= 0) = 1;
nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;
%}

%%

w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

%%






w100_5=w100_1%cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_b=w100_5







%{
fold1=symmetrise_sqw(w100_2,[1,0,0],[0,1,-1],[0,0,0])
clearvars w100_2
fold2=symmetrise_sqw(fold1,[0,1,1],[0,1,-1],[0,0,0])
clearvars fold1
fold3=symmetrise_sqw(fold2,[0,1,-1],[0,1,1],[0,0,0])
comb1=combine_sqw(fold2,fold3)
clearvars fold2
fold4=symmetrise_sqw(fold3,[0,1,-1],[1,0,0],[0,0,0])
comb2=combine_sqw(comb1,fold4)
clearvars fold3
clearvars comb1
fold5=symmetrise_sqw(fold4,[0,1,1],[0,1,-1],[0,0,0])
clearvars fold4
comb3=combine_sqw(comb2,fold5)
clearvars comb2
%}

%{
%plot first data 
ax1 = axes; 
im = imagesc(ax1,imread('F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.jpg')); 
im.AlphaData = 0.5; % change this value to change the background image transparency 
axis square; 
hold all; 
%plot second data 
ax2 = axes; 
im1 = imagesc(ax2,imread('F:\Aman\5mevplots\test\QQplots\100,010 group\plot2.jpg')); 
im1.AlphaData = 0.5; % change this value to change the foreground image transparency 
axis square; 
%link axes 
linkaxes([ax1,ax2]) 
%%Hide the top axes 
ax2.Visible = 'off'; 
ax2.XTick = []; 
ax2.YTick = []; 
%add differenct colormap to different data if you wish 
colormap(ax1,'summer') 
colormap(ax2,'winter') 
%set the axes and colorbar position 
set([ax1,ax2],'Position',[.17 .11 .685 .815]); 
cb1 = colorbar(ax1,'Position',[.05 .11 .0675 .815]); 
cb2 = colorbar(ax2,'Position',[.88 .11 .0675 .815]); 
%}