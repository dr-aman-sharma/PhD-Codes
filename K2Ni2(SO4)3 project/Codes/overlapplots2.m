%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg norm 2p8 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs;; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(1/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/E','','PFFRG Plot')

hold off

xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to 1')

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison norm vs ori 100.fig']
    
saveas(gcf,name1)

%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg sqrt norm 2p8 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(1/ma)

H1=findobj(a,'type','line')
x1=get(H1,'XData')
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
ylabel('|S(q)| normalised to to 1')

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison sqrt norm vs ori 100.jpg']
    
saveas(gcf,name1)


%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg norm 2p8 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*sqrt(3); %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(1/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/E','','PFFRG Plot')

hold off


xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to 1')


name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison norm vs ori 111.fig']
    

saveas(gcf,name1)



%%


a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg sqrt norm 2p8 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*(1.1056/0.63834); %: get the excel column, Header1 (header name)
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









%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg norm 5 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs; %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')
ma=max(y2)
y2=y2.*(1/ma)



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/E','','PFFRG Plot')

hold off

xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 1')

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison norm vs ori 100.fig']
    
saveas(gcf,name1)


%%


a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg sqrt norm 5 100.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\100data.xlsx');
x2 = rawTable.xs; %: get the excel column, Header1 (header name)
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



%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg norm 5 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*sqrt(3); %: get the excel column, Header1 (header name)
y2 = rawTable.ys; %: get the excel column, Header2 (header name)
ma=max(y2)
y2=y2.*(1/ma)


H1=findobj(a,'type','line')
x1=get(H1,'XData')
y1=get(H1,'YData')



scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/E','','PFFRG Plot')

hold off

xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')


name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison norm vs ori 111.fig']
    
saveas(gcf,name1)

%%




a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg sqrt norm 5 111.fig')

rawTable = readtable('C:\Users\10LQMPC10\Documents\111data.xlsx');
x2 = rawTable.xs*(1.1056/0.63834); %: get the excel column, Header1 (header name)
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


%%




