function X = Xs(s,T,Q)

X = 1 ./(s.^2 .* T.^2 + s .* T ./ Q + 1);