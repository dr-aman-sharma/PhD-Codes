%Intensity cuts along a Q

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

bins=0.1

pro.u=[0.5,-0.5,-1];
pro.v=[1,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,bins,bins,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot1.sqw');
plot(w100_2)
lz 0 12
%%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot1.jpg')


%%
pro.u=[-1,0.5,-0.5];
pro.v=[0,1,1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,bins,bins,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot2.sqw');
plot(w100_2)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot2.jpg')

%%

pro.u=[0.5,0.5,-1];
pro.v=[-1,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,bins,bins,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot3.sqw');
plot(w100_2)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot3.jpg')


pro.u=[-0.5,-1,0.5];
pro.v=[1,0,1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,bins,bins,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot4.sqw');
plot(w100_2)
lz 0 12
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\plot4.jpg')

%{

pro.u=[1,1,0];
pro.v=[0.5,-0.5,-1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,[-0.2,0.2],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,1-12 group\line cuts\plot1.sqw');
plot(w100_2)

ly 0 25

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\line cuts\plot1.jpg')

pro.u=[1,1,0];
pro.v=[0.5,-0.5,-1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,[-0.5,0.5],0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,1-12 group\line cuts\plot2.sqw');
plot(w100_2)

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\line cuts\plot2.jpg')



pro.u=[0,1,1];
pro.v=[1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,[-0.2,0.2],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot1.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot1.jpg')

pro.u=[0,1,1];
pro.v=[1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,[-0.2,0.2],0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot2.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\line cuts\plot2.jpg')

%%

%%
pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,[-0.2,0.2],[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot1.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot1.jpg')

%%

pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,[-0.2,0.2],0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot2.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\100,010 group\line cuts\plot2.jpg')



%%

pro.u=[0,1,0];
pro.v=[-1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot6.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot6')
lz 0 10

%%

pro.u=[0,1,0];
pro.v=[0,0,-1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot7.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot7')
lz 0 10 

%%

pro.u=[0,0,1];
pro.v=[-1,0,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot8.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot8')
lz 0 10 

%%

pro.u=[0,0,1];
pro.v=[0,-1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot9.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot9')
lz 0 10 

%%

pro.u=[-1,0,0];
pro.v=[0,-1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot10.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot10')
lz 0 10 

%%

pro.u=[-1,0,0];
pro.v=[0,0,-1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot11.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot11')
lz 0 10 

%%

pro.u=[0,-1,0];
pro.v=[0,0,-1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.5,0.7],'-nopix','F:\Aman\5mevplots\test\QQplots\plot12.sqw');
plot(w100_2)
%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\plot12')
lz 0 10 

%}