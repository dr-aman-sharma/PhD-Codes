a=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q11.fig')
b=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q22.fig')
c=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q33.fig')
d=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\q44.fig')




H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

H1=findobj(b,'type','line')
x2=get(H1,'XData')
y2=get(H1,'YData')

H1=findobj(c,'type','line')
x3=get(H1,'XData')
y3=get(H1,'YData')

H1=findobj(d,'type','line')
x4=get(H1,'XData')
y4=get(H1,'YData')


dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1x2.txt',x2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1x3.txt',x3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1x4.txt',x4)


dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1y1.txt',y1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1y2.txt',y2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1y3.txt',y3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\100\q1y4.txt',y4)



scatter(x1,y1,'red')
hold on;
plot(x1,y1,'red')

scatter(x2,y2,'blue')
hold on;
plot(x2,y2,'blue')

scatter(x3,y3,'green')
hold on;
plot(x3,y3,'green')

scatter(x4,y4,'cyan')
hold on;
plot(x4,y4,'cyan')

legend('','q1','','q2','','q3','','q4')

ly 0 10




a=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q11.fig')
b=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q22.fig')
c=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q33.fig')
d=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\110planes\q44.fig')




H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

H1=findobj(b,'type','line')
x2=get(H1,'XData')
y2=get(H1,'YData')

H1=findobj(c,'type','line')
x3=get(H1,'XData')
y3=get(H1,'YData')

H1=findobj(d,'type','line')
x4=get(H1,'XData')
y4=get(H1,'YData')


dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1x2.txt',x2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1x3.txt',x3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1x4.txt',x4)


dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1y1.txt',y1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1y2.txt',y2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1y3.txt',y3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\2p8mev\110\q1y4.txt',y4)



scatter(x1,y1,'red')
hold on;
plot(x1,y1,'red')

scatter(x2,y2,'blue')
hold on;
plot(x2,y2,'blue')

scatter(x3,y3,'green')
hold on;
plot(x3,y3,'green')

scatter(x4,y4,'cyan')
hold on;
plot(x4,y4,'cyan')

legend('','q1','','q2','','q3','','q4')

ly 0 10


a=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q11.fig')
b=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q22.fig')
c=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q33.fig')
d=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\q44.fig')




H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

H1=findobj(b,'type','line')
x2=get(H1,'XData')
y2=get(H1,'YData')

H1=findobj(c,'type','line')
x3=get(H1,'XData')
y3=get(H1,'YData')

H1=findobj(d,'type','line')
x4=get(H1,'XData')
y4=get(H1,'YData')



dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1x2.txt',x2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1x3.txt',x3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1x4.txt',x4)


dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1y1.txt',y1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1y2.txt',y2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1y3.txt',y3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\100\q1y4.txt',y4)



scatter(x1,y1,'red')
hold on;
plot(x1,y1,'red')

scatter(x2,y2,'blue')
hold on;
plot(x2,y2,'blue')

scatter(x3,y3,'green')
hold on;
plot(x3,y3,'green')

scatter(x4,y4,'cyan')
hold on;
plot(x4,y4,'cyan')

legend('','q1','','q2','','q3','','q4')

ly 0 10






a=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q11.fig')
b=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q22.fig')
c=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q33.fig')
d=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\110planes\q44.fig')




H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

H1=findobj(b,'type','line')
x2=get(H1,'XData')
y2=get(H1,'YData')

H1=findobj(c,'type','line')
x3=get(H1,'XData')
y3=get(H1,'YData')

H1=findobj(d,'type','line')
x4=get(H1,'XData')
y4=get(H1,'YData')




dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1x2.txt',x2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1x3.txt',x3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1x4.txt',x4)


dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1y1.txt',y1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1y2.txt',y2)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1y3.txt',y3)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energycuts\5mev\110\q1y4.txt',y4)



scatter(x1,y1,'red')
hold on;
plot(x1,y1,'red')

scatter(x2,y2,'blue')
hold on;
plot(x2,y2,'blue')

scatter(x3,y3,'green')
hold on;
plot(x3,y3,'green')

scatter(x4,y4,'cyan')
hold on;
plot(x4,y4,'cyan')

legend('','q1','','q2','','q3','','q4')

ly 0 10





data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

en_d=0.2
en_up=1

symmetrization5mev100co010

save(w100_a,'F:\Aman\2p8mevplots\test\qqplots\100,010 group\qmap.sqw')

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=0.5
en_up=1

symmetrization5mev100co010

save(w100_a,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\100\qmap.sqw')









data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';

en_d=0.2
en_up=1

symmetrization110co001

save(w100_a,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\110\qmap.sqw')

data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=0.5
en_up=1

symmetrization110co001

save(w100_a,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\110\qmap.sqw')








o.s=0
o.npix=0


for i=1:8

    data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_2p8meV_large.sqw';
    

    en_d=0.1+0.1*i
    en_up=0.2+0.1*i

    symmetrization110co1mi1mi2
    

    o1=w100_a

    o.s=o.s+o1.s.*0.1
    o.npix=o.npix+o1.npix
    

    

end


o1.s=o.s./(0.8)
o1.npix=o.npix

lx -3 3
ly -3 3
lz 0 8

plot(o1)

saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\data111',o1.s)
save(o1,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\qmap.sqw')













data_source='H:\\LET K2Ni2(SO4)3\\sqw_files\\final_sqwKNISO_2K_5p0meV_large_powder.sqw';

en_d=0.5
en_up=0.6

symmetrization110co1mi1mi2
o1=w100_a
save(w100_a,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy0.5to0.6.sqw')


en_d=0.6
en_up=0.7

symmetrization110co1mi1mi2
o2=w100_a
save(w100_a,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy0.6to0.7.sqw')

en_d=0.7
en_up=0.8
o3=w100_a
symmetrization110co1mi1mi2

save(w100_a,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy0.7to0.8.sqw')

en_d=0.8
en_up=0.9
o4=w100_a
symmetrization110co1mi1mi2

save(w100_a,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy0.8to0.9.sqw')

en_d=0.9
en_up=1.0
o5=w100_a
symmetrization110co1mi1mi2

save(w100_a,'F:\Aman\5mevplots\test\QQplots\110,1-12 group\energy0.9to1.0.sqw')



p1.s=(o1.s.*0.1+o2.s.*0.1+o3.s.*0.1+o4.s.*0.1+o5.s.*0.1).*(1/0.5)
p1.npix=(o1.npix+o2.npix+o3.npix+o4.npix+o5.npix)



w100_a.s=p1.s
w100_a.npix=p1.npix


plot(w100_a)

lx -6 6
ly -6 6
lz 0 8

saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\data111',w100_a.s)
save(w100_a,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\qmap.sqw')


































a=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\energymap\2p8mev\100\energy0correct.sqw')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energymap\2p8mev\100\data100.txt',a.s)

b=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\energymap\5mev\100\energy0correct.sqw')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energymap\5mev\100\data100.txt',b.s)






a=read_dnd('F:\Aman\2p8mevplots\test\energy plots\110,001 group\energy0correct.sqw')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energymap\2p8mev\110\data110.txt',a.s)

b=read_dnd('F:\Aman\5mevplots\test\energy plots\110,001 group\energy0correct.sqw')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energymap\5mev\110\data110.txt',b.s)



a=read_dnd('F:\Aman\2p8mevplots\test\energy plots\111\energy0correct.sqw')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energymap\2p8mev\111\data111.txt',a.s)

b=read_dnd('F:\Aman\5mevplots\test\energy plots\111\energy0correct.sqw')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\energymap\5mev\111\data111.txt',b.s)








o=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\100\qmap.sqw')
plot(o)
lx -3 3
ly -3 3

lz 0 8
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\100\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\100\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\100\data100.txt',o.s)

o=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\110\qmap.sqw')
plot(o)
lx -3 3
ly -3 3
lz 0 8
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\110\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\110\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\110\data110',o.s)

o=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\qmap.sqw')
plot(o)
lx -3 3
ly -3 3
lz 0 8
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\2p8mev\111\data111',o.s)









o=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\100\qmap.sqw')
plot(o)
lx -4 4
ly -4 4
lz 0 8
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\100\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\100\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\100\data100',o.s)

o=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\110\qmap.sqw')
plot(o)
lx -4 4
ly -4 4
lz 0 8
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\110\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\110\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\110\data110',o.s)


o=read_dnd('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\qmap.sqw')
plot(o)
lx -4 4
ly -4 4
lz 0 8
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\qmap.fig')
saveas(gcf,'F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\qmap.jpeg')
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\q-map\5mev\111\data111',o.s)












