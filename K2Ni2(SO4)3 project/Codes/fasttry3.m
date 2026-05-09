data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

runno=[0.2:0.1:2.8]

bins=0.1
pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_n=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[0.2,0.3],'-nopix','F:\Aman\2p8mevplots\test\QQplots\100,010 group\plot1.sqw');

w100_n.s=0
w100_n.e=0
w100_n.npix=0

for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    line100

    name1=['F:\Aman\2p8mevplots\test\Intensity plots\100\energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    saveas(gcf,name1)

    normaliser=(en_d+en_up)/2
    %normaliser=sqrt(normaliser)

    w100_n.s=w100_n.s+w100_5.s./(normaliser)
    w100_n.e=w100_n.e+w100_5.e./(normaliser)^2
    w100_n.npix=w100_n.npix+w100_5.npix

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end


ma=max(w100_n.s)
w100_n.s=w100_n.s.*(1./ma)
w100_n.e=w100_n.e.*(1./ma).^2

x=linspace(-5,5,size(w100_n.s,1));
plot(w100_n)
hold on
plot(x,w100_n.s)
lx 0 5

hold off


name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg norm 2p8 100.fig']
    
saveas(gcf,name1)






bins=0.1
pro.u=[-1,-1,-1];
pro.v=[-1,0,1];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_n2=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[0.2,0.3],'-nopix','F:\Aman\2p8mevplots\test\QQplots\110,001 group\plot1.sqw');

w100_n2.s=0
w100_n2.e=0
w100_n2.npix=0

for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    line111

    name1=['F:\Aman\2p8mevplots\test\Intensity plots\111\energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    saveas(gcf,name1)

    normaliser=(en_d+en_up)/2
    %normaliser=sqrt(normaliser)

    w100_n2.s=w100_n2.s+w100_4.s./(normaliser)
    w100_n2.e=w100_n2.e+w100_4.e./(normaliser)^2
    w100_n2.npix=w100_n2.npix+w100_4.npix

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end


ma=max(w100_n2.s)
w100_n2.s=w100_n2.s.*(1./ma)
w100_n2.e=w100_n2.e.*(1./ma).^2

x=linspace(-5,5,size(w100_n2.s,1));
plot(w100_n2)
hold on
plot(x,w100_n2.s)
lx 0 5

hold off

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg norm 2p8 111.fig']
    
saveas(gcf,name1)







%%

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

runno=[0.5:0.1:3.4]

bins=0.1
pro.u=[1,0,0];
pro.v=[0,1,0];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_n=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[0.2,0.3],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');

w100_n.s=0
w100_n.e=0
w100_n.npix=0



for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    line100

    name1=['F:\Aman\5mevplots\test\Intensity plots\100\energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    saveas(gcf,name1)

    name2=['F:\Aman\5mevplots\test\Intensity plots\100\energy',num2str(en_d),'to',num2str(en_up),'correct.jpg']

    saveas(gcf,name2)

    normaliser=(en_d+en_up)/2
    %normaliser=sqrt(normaliser)

    w100_n.s=w100_n.s+w100_5.s./(normaliser)
    w100_n.e=w100_n.e+w100_5.e./(normaliser)^2
    w100_n.npix=w100_n.npix+w100_5.npix

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end


ma=max(w100_n.s)
w100_n.s=w100_n.s.*(1./ma)
w100_n.e=w100_n.e.*(1./ma).^2

x=linspace(-5,5,size(w100_n.s,1));
plot(w100_n)
hold on
plot(x,w100_n.s)
lx 0 5

hold off


name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\enrg norm 5p0 100.fig']
    
saveas(gcf,name1)



bins=0.1
pro.u=[-1,-1,-1];
pro.v=[-1,0,1];
pro.uoffset=[0,0,0,0];
pro.type='aaa';
w100_n2=cut_sqw(data_source, pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[0.2,0.3],'-nopix','F:\Aman\2p8mevplots\test\QQplots\110,001 group\plot1.sqw');

w100_n2.s=0
w100_n2.e=0
w100_n2.npix=0



for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    line111

    name1=['F:\Aman\5mevplots\test\Intensity plots\111\energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    saveas(gcf,name1)

    name2=['F:\Aman\5mevplots\test\Intensity plots\111\energy',num2str(en_d),'to',num2str(en_up),'correct.jpg']

    saveas(gcf,name2)


    normaliser=(en_d+en_up)/2
    %normaliser=sqrt(normaliser)

    w100_n2.s=w100_n2.s+w100_4.s./(normaliser)
    w100_n2.e=w100_n2.e+w100_4.e./(normaliser)^2
    w100_n2.npix=w100_n2.npix+w100_4.npix

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end

ma=max(w100_n2.s)
w100_n2.s=w100_n2.s.*(1./ma)
w100_n2.e=w100_n2.e.*(1./ma).^2

x=linspace(-5,5,size(w100_n2.s,1));
plot(w100_n2)
hold on
plot(x,w100_n2.s)
lx 0 5

hold off

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\enrg norm 5p0 111.fig']
    
saveas(gcf,name1)


%%

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

runno=[0.0:0.2:3.4]

for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    line100

    name1=['F:\Aman\11p7mevplots\test\Intensity plots\100\energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    saveas(gcf,name1)

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end

for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    line111

    name1=['F:\Aman\11p7mevplots\test\Intensity plots\111\energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    saveas(gcf,name1)

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end









runno=[0.0:0.2:3.4]

for i=1:16

    en_d=runno(i)
    en_up=runno(i+1)

    

    name1=['F:/Aman/11p7mevplots/test/Intensity plots/111/energy',num2str(en_d),'to',num2str(en_up),'correct.fig']
    
    openfig(name1)
 
    name2=['F:\Aman\11p7mevplots\test\Intensity plots\111\energy',num2str(en_d),'to',num2str(en_up),'correct.jpg']

    saveas(gcf,name2)

    %name2=['F:\Aman\2p8mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)


end

