%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';


bins=0.1

%en_d=0.5
%en_up=0.7



pro.u=[-1,1,1]*(1/sqrt(3));
pro.v=[1,0,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_2=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');


pro.u=[1,-1,1]*(1/sqrt(3));
pro.v=[0,1,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_3=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');


pro.u=[1,1,-1]*(1/sqrt(3));
pro.v=[0,1,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_4=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');


pro.u=[1,1,1]*(1/sqrt(3));
pro.v=[-1,0,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_1=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');




w100_5=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.npix=w100_1.npix+w100_2.npix+w100_3.npix+w100_4.npix;
w100_5.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix+w100_4.s.*w100_4.npix;
w100_5.e=w100_1.e.*w100_1.npix.^2+w100_2.e.*w100_2.npix.^2+w100_3.e.*w100_3.npix.^2+w100_4.e.*w100_4.npix.^2;




nor=w100_1.npix+w100_2.npix+w100_3.npix+w100_4.npix;
nor(nor == 0) = 1;
w100_5.s=w100_5.s./nor;


nor2=(w100_1.npix+w100_2.npix+w100_3.npix+w100_4.npix).^2;
nor2(nor2 == 0) = 1;
w100_5.e=w100_5.e./nor2;


%%
w100_6=w100_1%cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_6.s=w100_5.s.*w100_5.npix+flipud(w100_5.s).*flipud(w100_5.npix)%+fliplr(w100_4.s).*fliplr(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_6.npix=w100_5.npix+flipud(w100_5.npix)%+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))
w100_6.e=w100_5.e.*w100_5.npix.^2+flipud(w100_5.e).*flipud(w100_5.npix).^2%+fliplr(w100_4.e).*fliplr(w100_4.npix).^2+flipud(fliplr(w100_4.e)).*flipud(fliplr(w100_4.npix)).^2


nor=w100_5.npix+flipud(w100_5.npix)%+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1


nor2=(w100_5.npix+flipud(w100_5.npix)).^2
nor2(nor2==0)=1


w100_6.s=w100_6.s./nor
w100_6.e=w100_6.e./nor2

w100_4=w100_6
