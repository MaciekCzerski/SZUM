R=0.5;
L=5;
U=[3;0];
% warto�ci pocz�tkowe zmiennych konfiguracyjnych
x=0;
y=0;
theta=0;
% zale�no�� d�ugo�ci cz�ci robota 
% do pr�dko�ci obrotowej k�
Vr=[R/(2*L) -R/(2*L); R/2 R/2];

Xr=Vr*U;
W=Xr(1);
V=Xr(2);

for i=1:1:100
    % wektor predkosci konfiguracyjnych
    q=[V*cos(theta);V*sin(theta);W];
    % aktualizacja warto�ci
    x=x+q(1);
    y=y+q(2);
    theta=theta+q(3);
    
   % dlugo�ci od �rodka robota do �rodka ko�a
    xR=x+(L*cos(theta+pi/2));
    yR=y+(L*sin(theta+pi/2));
        
    xL=x+(L*cos(theta-pi/2));
    yL=y+(L*sin(theta-pi/2));
    %ograniczenie przestrzeni rysowania
    xlim([-50 50])
    ylim([-50 50])
    plot(x,y,'o',[x xR],[y yR],'-',[x xL],[y yL],'-')
    grid on
    drawnow
    hold on    
end
