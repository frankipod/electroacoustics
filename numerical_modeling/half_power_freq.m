function f3_fc_ratio = half_power_freq(Qtc)

f3_fc_ratio = sqrt((1 / Qtc^2-2+sqrt((1/Qtc^2 -2)^2 + 4))/2);