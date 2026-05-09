%100 direction


data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

en_d=-0.5
en_up=2.5

q_vax=0.5
q_vay=0.5
energycuts100
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q1',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q1er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=0
q_vay=1.7
energycuts100
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q2',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q2er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=1.65
q_vay=0.1
energycuts100
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q3',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q3er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)


q_vax=1.2
q_vay=1.35
energycuts100
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q4',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q4er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)

%%
%(110) direction


data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

en_d=-0.5
en_up=2.5

q_vax=0.5
q_vay=0.5
energycuts110
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q1',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q1er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=0
q_vay=1.7
energycuts110
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q2',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q2er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)


q_vax=1.65
q_vay=0.1
energycuts110
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q3',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q3er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)


q_vax=1.4
q_vay=1.05
energycuts110
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q4',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q4er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)


%%
%100 direction

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=-0.5
en_up=4

q_vax=0.5
q_vay=0.5
energycuts100
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q1',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q1er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=0
q_vay=1.7
energycuts100
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q2',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q2er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=1.65
q_vay=0.1
energycuts100
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q3',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q3er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)


q_vax=1.2
q_vay=1.35
energycuts100
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q4',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q4er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)

%%
%(110) direction


data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=-0.5
en_up=4

q_vax=0.5
q_vay=0.5
energycuts110
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q1',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q1er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=0
q_vay=1.7
energycuts110
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q2',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q2er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



q_vax=1.65
q_vay=0.1
energycuts110
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q3',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q3er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)


q_vax=1.4
q_vay=1.05
energycuts110
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q4',num2str(q_vax),'to',num2str(q_vay),'.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q4er',num2str(q_vax),'to',num2str(q_vay),'.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)



%%

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

en_d=-0.5
en_up=2.5

q_vax=1.65
q_vay=0.0
energycuts100
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q3.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q3er.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q3x3.txt',x)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q3y3.txt',w100_5.s)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\qer3x3.txt',x)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\qer3y3.txt',w100_5.e)



data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

en_d=-0.5
en_up=2.5

q_vax=1.65
q_vay=0.0
energycuts110
name1=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q3.fig']
name2=['F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q3er.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q3x3.txt',x)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q3y3.txt',w100_5.s)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\qer3x3.txt',x)
dlmwrite('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\qer3y3.txt',w100_5.e)



data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=-0.5
en_up=4
    
q_vax=1.65
q_vay=0.0
energycuts100
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q3.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q3er.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q3x3.txt',x)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q3y3.txt',w100_5.s)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\qer3x3.txt',x)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\qer3y3.txt',w100_5.e)




data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=-0.5
en_up=4

q_vax=1.65
q_vay=0.0
energycuts110
name1=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q3.fig']
name2=['F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q3er.fig']
x=linspace(en_d,en_up,size(w100_5.s,1));
plot(w100_5)
hold on
plot(x,w100_5.s)
hold off
saveas(gcf,name1)
plot(x,w100_5.e)
hold off;
saveas(gcf,name2)

dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q3x3.txt',x)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q3y3.txt',w100_5.s)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\qer3x3.txt',x)
dlmwrite('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\qer3y3.txt',w100_5.e)