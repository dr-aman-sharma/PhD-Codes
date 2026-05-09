%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';


bins=0.1

en_d=0.5
en_up=0.52

A=output2.data.s
B=output2.data.npix

%output2.data.s=flip(A,1)+A
%output2.data.npix=flip(B,1)+B

count=0
for i=1:50
   for j=1:50
       for k=1:50
           for l=1:50
    count=count+1
    output2.data.s(i,j,k,l)=output.data.s(i,j,k,l)
    output2.data.npix(i,j,k,l)=output.data.npix(i,j,k,l)
    disp(count)
           end
       end
   end
end


output2.data.s(1:50,1:50,1:50,2)=output.data.s(1:50,1:50,1:50,2)
output2.data.npix(1:50,1:50,1:50,2)=output.data.npix(1:50,1:50,1:50,2)




pro.u=[-1,-1,-1]*(1/sqrt(3));
pro.v=[-1,0,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';

pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';

output=cut_sqw(data_source, pro,[-2.3,bins,2.3],[-2.3,bins,2.3],[-2.3,bins,2.3],[0,bins,2.3],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');

w100_2=cut(output,[],[],[-0.2,0.2],[0.4,0.6])



pro.u=[1,1,1]*(1/sqrt(3));
pro.v=[-1,0,1]*(1/sqrt(2));
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_1=cut(output2, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot1.sqw');


w3=w100_1+w100_2



w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix%+w100_3.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix%+w100_3.s.*w100_3.npix;
w100_4.e=w100_1.e.*w100_1.npix.^2+w100_2.e.*w100_2.npix.^2%+w100_3.e.*w100_3.npix.^2;


nor=w100_1.npix+w100_2.npix;%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;


nor2=(w100_1.npix+w100_2.npix).^2;%+w100_3.npix).^2;
nor2(nor2 == 0) = 1;
w100_4.e=w100_4.e./nor2;
w100_a=w100_4

%ma=max(w100_a.s)
%w100_a.s=w100_a.s.*(0.4./ma)
%w100_a.e=w100_a.e.*(0.4./ma).^2

%x=linspace(-5,5,size(w100_a.s,1));
%plot(w100_a)
%hold on
%plot(x,w100_a.s)
%lx 0 5

%hold off

%w100_1.s=w100_1.s*(1e+04)/sum(w100_1.s,'all')
%{
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
%pro.type='aaa';
%w100_3p=cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.sqw');
%w100_3p.s=w100_3p.s*(1e+04)/sum(w100_3p.s,'all')

%saveas(gcf,'F:\Aman\5mevplots\test\QQplots\110,001 group\plot5.jpg')



w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w100_1.npix+w100_2.npix+w100_3.npix%+w100_3p.npix;
w100_4.s=w100_1.s.*w100_1.npix+w100_2.s.*w100_2.npix+w100_3.s.*w100_3.npix%+w100_3p.s.*w100_3p.npix;

nor=w100_1.npix+w100_2.npix+w100_3.npix%+w100_3p.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;


w100_5=w100_1%cut_sqw(data_source, pro,[-5,bins,5],[-5,bins,5],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\110,001 group\plot4.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)+fliplr(w100_4.s).*fliplr(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)+fliplr(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor


w100_a=w100_5
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
o=read_sqw(data_source)
data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

output2=read_sqw(data_source)
A=output.s
B=output.npix
C=output.e

A2=A.*B+flip(A,1).*flip(B,1)+flip(A,2).*flip(B,2)+flip(A,3).*flip(B,3)+flip(flip(A,1),2).*flip(flip(B,1),2)+flip(flip(A,2),3).*flip(flip(B,2),3)+flip(flip(A,1),3).*flip(flip(B,1),3)+flip(flip(flip(A,1),2),3).*flip(flip(flip(B,1),2),3)

B2=B+flip(B,1)+flip(B,2)+flip(B,3)+flip(flip(B,1),2)+flip(flip(B,2),3)+flip(flip(B,1),3)+flip(flip(flip(B,1),2),3)

nor=B+flip(B,1)+flip(B,2)+flip(B,3)+flip(flip(B,1),2)+flip(flip(B,2),3)+flip(flip(B,1),3)+flip(flip(flip(B,1),2),3)

nor(nor==0)=1
A2=A2./nor

output.s=A2
output.npix=B2

%}

%{

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
%data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

bins=0.1

en_d=0.4
en_up=0.6



count=0
for i=1:1
   for j=22:28
       for k=22:28
           for l=10:12
    count=count+1
    output2.data.s(1:50,j,k,l)=output.data.s(1:50,j,k,l)
    output2.data.npix(1:50,j,k,l)=output.data.npix(1:50,j,k,l)
    disp(count)
           end
       end
   end
end


pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='rrr';
w100_1=cut_sqw(output2,pro,[-2.9881+0.11953,0.11953,2.9883],[-2.5496+0.10198,0.10198,2.5492 ],[-0.2,0.2],[en_d,en_up],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
%plot(w100_1)
%lz 0 12

%}
