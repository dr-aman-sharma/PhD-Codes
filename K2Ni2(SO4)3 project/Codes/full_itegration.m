data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

bins=0.1
pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';


en_d=0.2
en_up=1

line100

%w100_5.s=w100_5.s-2.901195
%ma=max(w100_5.s)

%w100_5.s=w100_5.s.*(1/ma)
%w100_5.e=w100_5.e.*(1/ma)^2

x=linspace(-5,5,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
lx 0 5

hold off


name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg int full 2p8 100.fig']

saveas(gcf,name1)




%{
bins=0.1
pro.u=[-1,-1,-1];
pro.v=[-1,0,1];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
%}

en_d=0.2
en_up=1


line111new

%w100_4.s=w100_4.s-2.74379
%ma=max(w100_4.s)

%w100_4.s=w100_4.s.*(1/ma)
%w100_4.e=w100_4.e.*(1/ma)^2

x=linspace(-5,5,size(w100_4.s,1));
plot(w100_4)
hold on
plot(x,w100_4.s)
lx 0 5

hold off

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg int full 2p8 111.fig']
    
saveas(gcf,name1)




en_d=0.2
en_up=1


line110

%w100_4.s=w100_4.s-2.74379
%ma=max(w100_4.s)

%w100_4.s=w100_4.s.*(1/ma)
%w100_4.e=w100_4.e.*(1/ma)^2

x=linspace(-5,5,size(w100_a.s,1));
plot(w100_a)
hold on
plot(x,w100_a.s)
lx 0 5

hold off

name1=['F:\Aman\K2Ni2(SO4)3 data2\qcuts\2p8mev\110\2p8 110.fig']


name1=['F:\Aman\K2Ni2(SO4)3 data2\qcuts\2p8mev\110\2p8 110.fig']
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\x1.txt',x)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\y1.txt',w100_a.s)

    
saveas(gcf,name1)



%%












%%

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';
bins=0.1
pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';


en_d=0.5
en_up=1

line100

%w100_5.s=w100_5.s-4.55625
%ma=max(w100_5.s)

%w100_5.s=w100_5.s.*(1/ma)
%w100_5.e=w100_5.e.*(1/ma)^2

x=linspace(-5,5,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
lx 0 5

hold off


name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\enrg int full 5p0 100.fig']
    
saveas(gcf,name1)




bins=0.1
pro.u=[-1,-1,-1];
pro.v=[-1,0,1];
pro.uoffset=[0,0,0,0];
pro.type='aaa';


en_d=0.5
en_up=1

line111new

%w100_4.s=w100_4.s-4.22474
%ma=max(w100_4.s)

%w100_4.s=w100_4.s.*(1/ma)
%w100_4.e=w100_4.e.*(1/ma)^2

x=linspace(-5,5,size(w100_4.s,1));
plot(w100_4)
hold on
plot(x,w100_4.s)
lx 0 5

hold off

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\enrg int full 5p0 111.fig']
    
saveas(gcf,name1)


en_d=0.5
en_up=1


line110

%w100_4.s=w100_4.s-2.74379
%ma=max(w100_4.s)

%w100_4.s=w100_4.s.*(1/ma)
%w100_4.e=w100_4.e.*(1/ma)^2

x=linspace(-5,5,size(w100_a.s,1));
plot(w100_a)
hold on
plot(x,w100_a.s)
lx 0 5

hold off

name1=['F:\Aman\K2Ni2(SO4)3 data2\qcuts\5mev\110\5mev 110.fig']
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\x1.txt',x)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\y1.txt',w100_a.s)
    
saveas(gcf,name1)


