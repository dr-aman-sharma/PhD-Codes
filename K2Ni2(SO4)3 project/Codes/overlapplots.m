%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg norm 2p8 100.fig')

b=openfig('F:\Aman\2p8mevplots\test\Intensity plots\100\energy0.2to0.3correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*0.63835
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*0.63835
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/E','','Energy:0.2-0.3meV')

hold off

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison norm vs en 100.jpg']

xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

saveas(gcf,name1)

%%


a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg sqrt norm 2p8 100.fig')

b=openfig('F:\Aman\2p8mevplots\test\Intensity plots\100\energy0.2to0.3correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*0.63835
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*0.63835
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','Energy:0.2-0.3meV')

hold off

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison sqrt norm vs en 100.jpg']
    

xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

saveas(gcf,name1)


%%

a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg norm 2p8 111.fig')

b=openfig('F:\Aman\2p8mevplots\test\Intensity plots\111\energy0.2to0.3correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*1.1056
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*1.1056
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised by 1/E','','Energy:0.2-0.3meV')

hold off

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison norm vs en 111.jpg']


xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')


saveas(gcf,name1)


%%


a=openfig('F:\Aman\2p8mevplots\test\normalised int vs ene plots\enrg sqrt norm 2p8 111.fig')

b=openfig('F:\Aman\2p8mevplots\test\Intensity plots\111\energy0.2to0.3correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*1.1056
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*1.1056
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','Energy:0.2-0.3meV')

hold off

name1=['F:\Aman\2p8mevplots\test\normalised int vs ene plots\comparison sqrt norm vs en 111.jpg']



xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

saveas(gcf,name1)










%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg norm 5 100.fig')

b=openfig('F:\Aman\5mevplots\test\Intensity plots\100\energy0.5to0.6correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*0.63835
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*0.63835
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised by 1/E','','Energy:0.5-0.6meV')

hold off

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison norm vs en 100.jpg']
    


xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

saveas(gcf,name1)


%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg sqrt norm 5 100.fig')

b=openfig('F:\Aman\5mevplots\test\Intensity plots\100\energy0.5to0.6correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*0.63835
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*0.63835
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','Energy:0.5-0.6meV')

hold off

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison sqrt norm vs en 100.jpg']
    


xlabel('[100] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

saveas(gcf,name1)


%%

a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg norm 5 111.fig')

b=openfig('F:\Aman\5mevplots\test\Intensity plots\111\energy0.5to0.6correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*1.1056
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*1.1056
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised by 1/E','','Energy:0.5-0.6meV')

hold off

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison norm vs en 111.jpg']
    


xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')

saveas(gcf,name1)

%%


a=openfig('F:\Aman\5mevplots\test\normalised int vs ene plots\enrg sqrt norm 5 111.fig')

b=openfig('F:\Aman\5mevplots\test\Intensity plots\111\energy0.5to0.6correct.fig')


H1=findobj(a,'type','line')
x1=get(H1,'XData')*1.1056
y1=get(H1,'YData')

H2=findobj(b,'type','line')
x2=get(H2,'XData')*1.1056
y2=get(H2,'YData')

scatter(x1,y1,'blue')
hold on
plot(x1,y1,'blue')

%hold on





scatter(x2,y2,'red')
plot(x2,y2,'red')

lx 0 5

legend('Normalised with 1/sqrt(E)','','Energy:0.5-0.6meV')

hold off

name1=['F:\Aman\5mevplots\test\normalised int vs ene plots\comparison sqrt norm vs en 111.jpg']
    


xlabel('[111] in A^-1')
ylabel('|S(q)| normalised to to 0.4')


saveas(gcf,name1)


%%




