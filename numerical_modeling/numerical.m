

clear

%%


f_s = 500;
om_s = 2*pi*f_s;

ff = linspace(f_s/4,f_s*8,100);
om = 2*pi*ff;
T_s = 1/om_s;
Q = [1/2 1/sqrt(2) 1 sqrt(2) 2];
G = zeros(length(om),length(Q));
X = zeros(length(om),length(Q));
Zvs = zeros(length(om),length(Q));
R_E = 1;
R_EC = 2;
figure; hold on;
for ii = 1:length(Q)
    G(:,ii) = Gs(1i*om,T_s,Q(ii));
    X(:,ii) = Xs(1i*om,T_s,Q(ii));
    Zvs(:,ii) = R_E + R_EC * BP(1i*om,T_s,Q(ii));
end
subplot(3,1,1); hold on; box on; grid on;
plot(om/om_s,db(abs(G)))
plot([1 1],[-15 7],'--r')
ylim([-15 7]) 
legend(num2str(round(Q',1)),'location','best')
subplot(3,1,2); hold on; box on; grid on;
plot(om/om_s,db(abs(X)))
plot([1 1],[-15 7],'--r')
ylim([-15 7])
xlim([0 8])
subplot(3,1,3); hold on; box on; grid on;
plot(om/om_s,(abs(Zvs)))
plot([1 1],[0 R_E + R_EC],'--r')
ylim([0 R_E + R_EC])