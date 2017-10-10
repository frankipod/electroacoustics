clear

f3 = 40; % cut off freq Hz
Vb = 56.6*1e-3; % backing volume m^3
Par = 0.25; 
c = 345;
Qmc = 5;
alpha = 5;

fc = f3;
Qtc = 1/sqrt(2);
Qtco = 1/sqrt(2);

Qec = Qmc*Qtc/(Qmc- Qtc)
fs = fc/sqrt(alpha+1)
Qes = Qec / sqrt(alpha+1)
Vas = Vb * alpha
Vat = Vas*Vb/(Vas+Vb)

kq = Qtc/Qec
kc = Vat / Vb
kg = 4*pi^2/c^3/Qtc/(f3/fc)^3

kn = kq*kc*kg

n0 = kn*f3^3*Vb
Per = Par/n0

Pemax = Per/10^0.5
Vd = sqrt(Par/0.85/f3^4)
Vd/Vb