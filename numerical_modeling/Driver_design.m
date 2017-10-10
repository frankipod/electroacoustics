clear

%% 
fs = 16.3;
Qes = 0.336;
Vas = 283e-3;
Vd = 340e-6;
Pemax = 22.5;
rho0 = 1.225;
c = 345;
r = 0.12;

Sd = pi*r.^2
xmax = Vd/Sd

Sd^2

Cms = Vas/rho0/c^2/Sd^2
Mms = 1/Cms/(2*pi*fs)^2
Mmd = Mms - (pi*r^3+0.65*pi*rho0*r^3)
mag_damp = 2*pi*fs*Mms/Qes

Re = 6.5;
Bl = sqrt(mag_damp*Re)