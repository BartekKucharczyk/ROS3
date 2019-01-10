L = 5;
v1 = 2;
v2 = 1;
teta = 0;

x = 0;
y = 0;

for i = 0:0.1:1
	hold on
	% Aktualna pozycja robota
	plot(x,y,'o');
	% Lewa os silnika 
	x1 = x - L/2 * cos((pi/2)-teta);
	y1 = y + L/2 * sin((pi/2)-teta);
	% Prawa os silnika
	x2 = x + L/2 * cos((pi/2)-teta);
	y2 = y - L/2 * sin((pi/2)-teta);
	% Wskazanie orientacji robota
	x3 = x + 1 * cos(teta);
	y3 = y + 1 * sin(teta);
	% Wyswietlenie
	plot([x1,x2],[y1,y2],'r-')
	plot([x,x3],[y,y3],'r-')
	plot(x3,y3,'ro');
	axis equal
	% Obliczenia kinematyki
	Vx1 = (v1+v2) * cos(teta) / 2;
	Vy1 = (v1+v2) * sin(teta) / 2;
	Omega1 = (v1-v2)/L;
	x = x + Vx1;
	y = y + Vy1;
	teta = teta + Omega1;
end