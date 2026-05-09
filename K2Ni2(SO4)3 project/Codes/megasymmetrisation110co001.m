
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

bins=0.1


pro.u=[1,0,-1];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';

disp('step0')

w100_1=cut_sqw(data_source, pro,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix');%,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');





pro.u=[-1,1,0];
pro.v=[0,0,1];
pro.uoffset=[0,0,0,0];
pro.type='aaa';

disp('step1')
w100_2=cut_sqw(data_source, pro,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix');


pro.u=[0,-1,1];
pro.v=[1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';

disp('step2')
w100_3=cut_sqw(data_source, pro,[-4,bins,4],[-4,bins,4],[-4,bins,4],[,bins,],'-nopix');












%w100_4=cut_sqw(data_source,pro,[-2.5,bins,2.5],[-2.5,bins,2.5],[-2.5,bins,2.5],[en_d,bins,en_up],'-nopix');
N=w100_1.npix+w100_2.npix+w100_3.npix;
M=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix;
O=w100_1.e.*w100_1.npix.^2+w100_2.e.*w100_2.npix.^2+w100_3.e.*w100_3.npix.^2;


nor=w100_1.npix+w100_2.npix+w100_3.npix;
nor(nor == 0) = 1;
M=M./nor;


nor2=(w100_1.npix+w100_2.npix+w100_3.npix).^2;
nor2(nor2 == 0) = 1;
O=O./nor2;



%%






w100_5=w100_1%cut_sqw(data_source,pro,[-2.5,bins,2.5],[-2.5,bins,2.5],[-2.5,bins,2.5],[en_d,bins,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=M
w100_5.npix=N
w100_5.e=O

A=M
B=N
C=O



w100_5.s=A.*B+flip(A,1).*flip(B,1)+flip(A,2).*flip(B,2)+flip(A,3).*flip(B,3)+flip(flip(A,1),2).*flip(flip(B,1),2)+flip(flip(A,2),3).*flip(flip(B,2),3)+flip(flip(A,1),3).*flip(flip(B,1),3)+flip(flip(flip(A,1),2),3).*flip(flip(flip(B,1),2),3)
w100_5.npix=B+flip(B,1)+flip(B,2)+flip(B,3)+flip(flip(B,1),2)+flip(flip(B,2),3)+flip(flip(B,1),3)+flip(flip(flip(B,1),2),3)
w100_5.e=C.*B.^2+flip(C,1).*flip(B,1).^2+flip(C,2).*flip(B,2).^2+flip(C,3).*flip(B,3).^2+flip(flip(C,1),2).*flip(flip(B,1),2).^2+flip(flip(C,2),3).*flip(flip(B,2),3).^2+flip(flip(C,1),3).*flip(flip(B,1),3).^2+flip(flip(flip(C,1),2),3).*flip(flip(flip(B,1),2),3).^2


nor=B+flip(B,1)+flip(B,2)+flip(B,3)+flip(flip(B,1),2)+flip(flip(B,2),3)+flip(flip(B,1),3)+flip(flip(flip(B,1),2),3)
nor(nor==0)=1


nor2=(B+flip(B,1)+flip(B,2)+flip(B,3)+flip(flip(B,1),2)+flip(flip(B,2),3)+flip(flip(B,1),3)+flip(flip(flip(B,1),2),3)).^2
nor2(nor2==0)=1


w100_5.s=w100_5.s./nor
w100_5.e=w100_5.e./nor2

w100_a=w100_5megasymmetrized(100)(010)0p04




%{
pro.u=[0,1,1];
pro.v=[1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,[-0.2,0.2],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot1.sqw');
plot(w100_2)
saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot1.jpg')

pro.u=[0,1,1];
pro.v=[1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,[-0.2,0.2],0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot2.sqw');
plot(w100_2)
saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot2.jpg')

%%
%%
pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,[-0.2,0.2],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot1.sqw');
plot(w100_2)
saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot1.jpg')

%%

pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,[-0.2,0.2],0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot2.sqw');
plot(w100_2)
saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot2.jpg')



%%

pro.u=[0,1,0];
pro.v=[-1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot6.sqw');
plot(w100_2)
saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot6')
lz 0 10

%%

pro.u=[0,1,0];