%Intensity cuts along a Q

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

pro.u=[1,0,0];
pro.v=[0,1,1];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_2=cut_sqw(data_source, pro,0.05,[-0.2,0.2],[-0.2,0.2],[1.4,1.6],'-nopix','F:\Aman\11p7mevplots\test\QQplots.sqw');
plot(w100_2)
saveas(gcf,'F:\Aman\11p7mevplots\test\QQplots')