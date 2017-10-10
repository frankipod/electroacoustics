function n0 = ref_efficiency(fs,Vas,Qes)

c = 345;

n0 = 4 * pi^2 / c^3 * fs.^3 * Vas / Qes;
