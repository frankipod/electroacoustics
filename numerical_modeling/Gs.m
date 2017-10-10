function G = Gs(s,T,Q)

G = s.^2 .* T.^2 ./(s.^2 .* T.^2 + s .* T ./ Q + 1);