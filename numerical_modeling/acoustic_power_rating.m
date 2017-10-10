function Par = acoustic_power_rating(fc,Vd,Qtc)

Xmax = sqrt(Qtc^4/(Qtc^2-0.25));
f3_fc_ratio = half_power_freq(Qtc);

rho0 = 1.225;
c = 345;
% kx = 1/(1+alpha);
% kp = 4*pi^3*rho0/c / Xmax^2 / f3_fc_ratio^4;
kp = 0.85;
Par = kp* (fc*f3_fc_ratio)^4 * Vd^2;
