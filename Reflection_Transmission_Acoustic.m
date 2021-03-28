% Computes R&T coefficents for acoustic medium

alfa1=1.9;
alfa2=4.49;
rho1=2.9;
rho2=3.38;
tetai=linspace(0.0,pi/2,100);
tec=asin(alfa1/alfa2);
rat=(alfa2/alfa1)^2;
tetac=[tec tec];
rec=[1.0 0.0];
tetar=asin(sin(tetai)*alfa2/alfa1);
den=alfa2./cos(tetar)+alfa1./cos(tetai);
rc = (alfa2./cos(tetar)-alfa1./cos(tetai))./den;
tc = ( (2*alfa2./cos(tetar))./den );
%tc=1+rc;
rcabs=abs(rc);
tcabs=abs(tc);
rcphs=atan2(imag(rc),real(rc));
tcphs=atan2(imag(tc),real(tc));
fig=figure;
title('Reflection-Transmision Coefficients for Incident P wave','FontSize',9,'Color','r')
subplot(2,2,1),plot(tetac*180/pi,rec,'g-','LineWidth',2.5)
hold on
subplot(2,2,1),plot(tetai*180/pi,rcabs,'r-','LineWidth',1.5)
grid on
ylabel('Reflection coefficient','FontSize',8)
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');
axis([0 max(tetai)*180/pi 0.0 1.1]);
subplot(2,2,3),plot(tetai*180/pi,tcabs,'r-','LineWidth',1.5)
ylabel('Transmission coefficient','FontSize',8)
xlabel('Incidence Angle (Degree)','FontSize',8)
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');
axis([0 max(tetai)*180/pi 0.0 2.0]);
grid on
subplot(2,2,2),plot(tetai*180/pi,rcphs*180/pi,'r-','LineWidth',1.5)
grid on
ylabel('Phase Delay','FontSize',8)
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');
axis([0 max(tetai)*180/pi -180 10]);
subplot(2,2,4),plot(tetai*180/pi,tcphs*180/pi,'r-','LineWidth',1.5)
ylabel('Phase Delay','FontSize',8)
xlabel('Incidence Angle (Degree)','FontSize',8)
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');
axis([0 max(tetai)*180/pi -180.0 10.0]);
grid on
