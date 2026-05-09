data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
pro.u=[1,-1,0];
pro.v=[1,1,-2];
pro.uoffset=[0,0,0,0];
pro.type='rrr';

w100_2=cut_sqw(data_source, pro,0.05,0.05,[-0.2,0.2],[0.225,2.225],'-nopix','F:\\Aman\\QQplots\\energy2p8projbrange0.225-2.225');
%slice2=cut_sqw(data_source, pro, 0.02, 0.2, [-5,5], 0.05);

%plot(w100_2);

%w2=cut_sqw(w100_2,[-0.2,0.2],[-0.2,0.2],[]);





plot(w100_2);

