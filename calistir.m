turnuva1=calistir_turnuva();
turnuva2=calistir_turnuva();
turnuva3=calistir_turnuva();
hold on
plot(turnuva1,'LineWidth',2);
plot(turnuva2,'y--','LineWidth',2);
plot(turnuva3,'r:','LineWidth',2);

title('2-D Line Plot')
xlabel('iterasyon')
ylabel('gordügü ev')
ylim([0 20])
