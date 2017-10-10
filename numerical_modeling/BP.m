function  B = BP(s,T,Q)

B = (s.*T./Q) ./(s.^2 .* T.^2 + s .* T ./ Q + 1);