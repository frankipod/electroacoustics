clear

fs = 19;
Qms = 3.7;
Qes = 0.35;
Vas = 540e-3; % 540 dm^3 
r = 0.12;
xmax = 6e-3;
%% calculation
Qts = Qms*Qes /(Qms+Qes)
n0 = ref_efficiency(fs,Vas,Qes)

alpha = 4;
Qtco = Qts * sqrt(alpha+1)
fc = fs * sqrt(alpha+1)
Vab = Vas / alpha 
Sd = r.^2 * pi
Vd = Sd* xmax

Par = acoustic_power_rating(fc,Vd,Qtco)