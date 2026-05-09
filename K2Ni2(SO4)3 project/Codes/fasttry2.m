%%5meV

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

max_E=5

runno=[0.0:pi/4:5*pi]

for i=[2,4]

    tht=runno(i)
    

    

    if i==1||i==3
        Energization5mev100co010
        name1=['F:\Aman\5mevplots\test\energy plots\100,010 group\energy',num2str(tht),'correct.fig']
        plot(w100_a)
        saveas(gcf,name1)
    end
    if i==2
        Energization5mev100co010
        w1=w100_a
    end
    if i==4
        Energization5mev100co010
        w2=w100_a

    end

    %name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)

    end




w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w1.npix+w2.npix%+w100_3.npix;
w100_4.s=w1.s.*w1.npix+w2.s.*w2.npix%+w100_3.s.*w100_3.npix;

nor=w1.npix+w2.npix%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_5=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5

name1=['F:\Aman\5mevplots\test\energy plots\100,010 group\energy piby4 correct.fig']
plot(w100_a)
saveas(gcf,name1)




%%
for i=[2,4]

    tht=runno(i)
    

    

    if i==1||i==3
        Energization110co001
        name1=['F:\Aman\5mevplots\test\energy plots\110,001 group\energy',num2str(tht),'correct.fig']
        plot(w100_a)
        saveas(gcf,name1)
    end
    if i==2
        Energization110co001
        w1=w100_a
    end
    if i==4
        Energization110co001
        w2=w100_a

    end

    %name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)

    end




w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w1.npix+w2.npix%+w100_3.npix;
w100_4.s=w1.s.*w1.npix+w2.s.*w2.npix%+w100_3.s.*w100_3.npix;

nor=w1.npix+w2.npix%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_5=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5

name1=['F:\Aman\5mevplots\test\energy plots\110,001 group\energy piby4 correct.fig']
plot(w100_a)
saveas(gcf,name1)





%%
Energization110co1mi1mi2

name1=['F:\Aman\5mevplots\test\energy plots\110,1-12 group\anglecorrect.fig']
plot(w100_a)
saveas(gcf,name1)

%name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

%plot(w100_b)
%saveas(gcf,name2)
%}





%% 2.8meV

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

max_E=3


for i=1:4

    tht=runno(i)
    

    

    if i==1||i==3
        Energization5mev100co010
        name1=['F:\Aman\2p8mevplots\test\energy plots\100,010 group\energy',num2str(tht),'correct.fig']
        plot(w100_a)
        saveas(gcf,name1)
    end
    if i==2
        Energization5mev100co010
        w1=w100_a
    end
    if i==4
        Energization5mev100co010
        w2=w100_a

    end

    %name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)

end




w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w1.npix+w2.npix%+w100_3.npix;
w100_4.s=w1.s.*w1.npix+w2.s.*w2.npix%+w100_3.s.*w100_3.npix;

nor=w1.npix+w2.npix%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_5=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5

name1=['F:\Aman\2p8mevplots\test\energy plots\100,010 group\energy piby4 correct.fig']
plot(w100_a)
saveas(gcf,name1)

%%

for i=[2,4]

    tht=runno(i)
    

    

    if i==1||i==3
        Energization110co001
        name1=['F:\Aman\2p8mevplots\test\energy plots\110,001 group\energy',num2str(tht),'correct.fig']
        plot(w100_a)
        saveas(gcf,name1)
    end
    if i==2
        Energization110co001
        w1=w100_a
    end
    if i==4
        Energization110co001
        w2=w100_a

    end

    %name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)

    end




w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w1.npix+w2.npix%+w100_3.npix;
w100_4.s=w1.s.*w1.npix+w2.s.*w2.npix%+w100_3.s.*w100_3.npix;

nor=w1.npix+w2.npix%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_5=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5

name1=['F:\Aman\2p8mevplots\test\energy plots\110,001 group\energy piby4 correct.fig']
plot(w100_a)
saveas(gcf,name1)


%%

Energization110co1mi1mi2

name1=['F:\Aman\2p8mevplots\test\energy plots\110,1-12 group\anglecorrect.fig']
plot(w100_a)
saveas(gcf,name1)

%name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

%plot(w100_b)
%saveas(gcf,name2)



%% 11.7meV

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_11p7meV_large.sqw';

max_E=12



for i=1:4

    tht=runno(i)
    

    Energization5mev100co010

    if i==1||i==3
        name1=['F:\Aman\11p7mevplots\test\energy plots\100,010 group\energy',num2str(tht),'correct.fig']
        plot(w100_a)
        saveas(gcf,name1)
    end
    if i==2
        w1=w100_a
    end
    if i==4
        w2=w100_a

    end

    %name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)

    end




w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w1.npix+w2.npix%+w100_3.npix;
w100_4.s=w1.s.*w1.npix+w2.s.*w2.npix%+w100_3.s.*w100_3.npix;

nor=w1.npix+w2.npix%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_5=w1%cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5

name1=['F:\Aman\11p7mevplots\test\energy plots\100,010 group\energy piby4 correct.fig']
plot(w100_a)
saveas(gcf,name1)



for i=[2,4]

    tht=runno(i)
    

    Energization110co001

    if i==1||i==3
        name1=['F:\Aman\11p7mevplots\test\energy plots\110,001 group\energy',num2str(tht),'correct.fig']
        plot(w100_a)
        saveas(gcf,name1)
    end
    if i==2
        w1=w100_a
    end
    if i==4
        w2=w100_a

    end

    %name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

    %plot(w100_b)
    %saveas(gcf,name2)

    end




w100_4=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_4.npix=w1.npix+w2.npix%+w100_3.npix;
w100_4.s=w1.s.*w1.npix+w2.s.*w2.npix%+w100_3.s.*w100_3.npix;

nor=w1.npix+w2.npix%+w100_3.npix;
nor(nor == 0) = 1;
w100_4.s=w100_4.s./nor;

w100_5=cut_sqw(data_source,pro,[-5,bins,5],[-0.2,0.2],[-0.2,0.2],[-1,bins,max_E],'-nopix','F:\Aman\5mevplots\test\QQplots\100,010 group\plot1.sqw');
w100_5.s=w100_4.s.*w100_4.npix+flipud(w100_4.s).*flipud(w100_4.npix)%+flipud(w100_4.s).*flipud(w100_4.npix)+flipud(fliplr(w100_4.s)).*flipud(fliplr(w100_4.npix))
w100_5.npix=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))

nor=w100_4.npix+flipud(w100_4.npix)%+flipud(w100_4.npix)+flipud(fliplr(w100_4.npix))
nor(nor==0)=1

w100_5.s=w100_5.s./nor

w100_a=w100_5

name1=['F:\Aman\11p7mevplots\test\energy plots\110,001 group\energy piby4 correct.fig']
plot(w100_a)
saveas(gcf,name1)


Energization110co1mi1mi2

name1=['F:\Aman\11p7mevplots\test\energy plots\110,1-12 group\anglecorrect.fig']
plot(w100_a)
saveas(gcf,name1)

%name2=['F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy',num2str(en_d),'to',num2str(en_up),'.fig']

%plot(w100_b)
%saveas(gcf,name2)





