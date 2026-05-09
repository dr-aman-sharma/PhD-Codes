data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

nums=0

en_d=0.3
en_up=2.2

while nums<50

    q1=2.075*rand(1,1)
    q2=2.075*rand(1,1)

    if 0.3<q1^2+q2^2<1.775^2
        nums=nums+1
        q_vax=q1
        q_vay=q2

        energycuts100

        name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\function finding\random plots\qp',num2str(nums)]
        %plot(w100_5)

        x=linspace(en_d,en_up,size(w100_5.s,1));
        %plot(w100_5)
        %hold on
        plot(x,w100_5.s)
        hold on;
        scatter(x,w100_5.s)
        xlabel('meV')
        ylabel('Intensity')

        hold off
        

        saveas(gcf,name1)


        ma=max(w100_5.s)
        w100_5.s=w100_5.s./ma

        plot(x,w100_5.s)
        hold on;
        scatter(x,w100_5.s)
        xlabel('meV')
        ylabel('Intensity')

        hold off

        name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\function finding\random plots\qpn',num2str(nums)]
        saveas(gcf,name1)

    end
end




data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

nums=0

en_d=0.3
en_up=2.2

while nums<50

    q1=2.0311*rand(1,1)
    q2=2.0311*rand(1,1)

    if 0.3<q1^2+q2^2<1.775^2
        nums=nums+1
        q_vax=q1
        q_vay=q2

        energycuts110
        name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\function finding\random plots\qp',num2str(nums)]
        x=linspace(en_d,en_up,size(w100_5.s,1));
        %plot(w100_5)
        %hold on
        plot(x,w100_5.s)
        hold on;
        scatter(x,w100_5.s)
        xlabel('meV')
        ylabel('Intensity')

        hold off
        

        saveas(gcf,name1)


        ma=max(w100_5.s)
        w100_5.s=w100_5.s./ma

        plot(x,w100_5.s)
        hold on;
        scatter(x,w100_5.s)
        xlabel('meV')
        ylabel('Intensity')

        hold off

        name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\function finding\random plots\qpn',num2str(nums)]
        saveas(gcf,name1)

    end
end
%%

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

nums=0

en_d=0.5
en_up=4

while nums<50

    q1=2.649*rand(1,1)
    q2=2.649*rand(1,1)

    if q1^2+q2^2<2.649^2
        nums=nums+1
        q_vax=q1
        q_vay=q2

        energycuts100

        name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\function finding\random plots\q',num2str(nums)]
        plot(w100_5)
        saveas(gcf,name1)

    end
end




data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

nums=0

en_d=0.5
en_up=4

while nums<50

    q1=2.7533*rand(1,1)
    q2=2.7533*rand(1,1)

    if q1^2+q2^2<2.7533^2
        nums=nums+1
        q_vax=q1
        q_vay=q2

        energycuts110
        name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\function finding\random plots\q',num2str(nums)]
        plot(w100_5)
        saveas(gcf,name1)

    end
end


