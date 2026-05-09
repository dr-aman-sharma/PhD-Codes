%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg int full 2p8 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs;; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
%y2=y2.^2
ma=max(y2)
y2=y2.*(1/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\2p8mev\100\x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\2p8mev\100\y1.txt',y1)


%y1=y1-1.635165
y1=y1-2.09475
ma=max(y1)

y1=y1.*(1/ma)



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('integrated(0.2-1mev)','','PFFRG Plot')
legend('integrated(0.2-1mev)')

hold off

xlabel('[100] in A^-1')
ylabel('|S(q)|')
ylabel('|S(q)| normalised to 1')

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison int vs ori roof 100.fig']
name2=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison int vs ori roof 100.jpg']
saveas(gcf,name1)
saveas(gcf,name2)

%%
%{
a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg sqrt norm 2p8 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs*0.63834; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(0.4/ma)

H1=findobj(a,'type','line')
x1=get(H1,'XData')*0.63834
y1=get(H1,'YData')


scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','PFFRG Plot')

hold off

xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison sqrt norm vs ori 100.jpg']
    
saveas(gcf,name1)
%}

%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg int full 2p8 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*sqrt(3);%*(1.1056/0.63834); %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
%y2=y2.^2
ma=max(y2)
y2=y2.*(1/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\2p8mev\111\x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\2p8mev\111\y1.txt',y1)


%y1=y1-1.635165
y1=y1-1.981966
ma=max(y1)

y1=y1.*(1/ma)


scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('integrated(0.2-1mev)','','PFFRG Plot')
legend('integrated(0.2-1mev)')

hold off


xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 1')
ylabel('|S(q)|')


name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison int vs ori 111.fig']
name2=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison int vs ori 111.jpg']   

saveas(gcf,name1)
saveas(gcf,name2)


%%

%{
a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg sqrt norm 2p8 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*(1.1056*1.1056/0.63834); %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(0.4/ma)

H1=findobj(a,'type','line')
x1=get(H1,'XData')*1.1056
y1=get(H1,'YData')



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','PFFRG Plot')

hold off

xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison sqrt norm vs ori 111.jpg']
    
saveas(gcf,name1)

%}







%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg int full 5p0 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
%y2=y2.^2
ma=max(y2)
y2=y2.*(1/ma)

H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\5mev\100\x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\5mev\100\y1.txt',y1)

y1=y1-0.59139
ma=max(y1)

y1=y1.*(1/ma)


scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('integrated(0.5-1mev)','','PFFRG Plot')
legend('integrated(0.5-1mev)')

hold off

xlabel('[100] in A^-1')
ylabel('|S(q)|')
ylabel('|S(q)| normalised to to 1')

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison int vs ori roof 100.fig']
name2=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison int vs ori roof 100.jpg']
    
saveas(gcf,name1)
saveas(gcf,name2)


%%

%{
a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg sqrt norm 5 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs*0.63834; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(0.4/ma)

H1=findobj(a,'type','line')
x1=get(H1,'XData')*0.63834
y1=get(H1,'YData')



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','PFFRG Plot')

hold off

xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison sqrt norm vs ori 100.jpg']
    
saveas(gcf,name1)
%}


%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg int full 5p0 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*sqrt(3);%*(1.1056/0.63834); %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
%y2=y2.^2
ma=max(y2)
y2=y2.*(1/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')

dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\5mev\111\x1.txt',x1)
dlmwrite('F:\Aman\K2Ni2(SO4)3 data2\qcuts\5mev\111\y1.txt',y1)

y1=y1-0.49329
ma=max(y1)

%y1=y1.*(1/ma)


scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('integrated(0.5-1mev)','','PFFRG Plot')
legend('integrated(0.5-1mev)')

hold off

xlabel('[111] in A^-1')
ylabel('|S(q)|')
ylabel('|S(q)| normalised to to 1')


name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison int vs ori roof 111.fig']
name2=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison int vs ori roof 111.jpg']
    
saveas(gcf,name1)
saveas(gcf,name2)

%%


%{

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg sqrt norm 5 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*(1.1056*1.1056/0.63834); %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(0.4/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')*1.1056
y1=get(H1,'YData')



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','PFFRG Plot')

hold off

xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison sqrt norm vs ori 111.jpg']
    
saveas(gcf,name1)

%}
%%

a=openfig('F:\Aman\2p8mevplots\test\Intensityvsenergplots\100planes\big integration window.fig')

b=openfig('F:\Aman\5mevplots\test\Intensityvsenergplots\100planes\big energy window.fig')

H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')


H1=findobj(b,'type','line')
x2=get(H1,'XData')
y2=get(H1,'YData')

plot(x1,y1)
hold on;
plot(x2,y2)



