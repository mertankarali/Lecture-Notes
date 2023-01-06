close
clear
rng('default')
T = 1;
N = 90;

I2 = eye(2);
Z2 = zeros(2);
y  =  zeros(2,N/T);

H = [1 0 0 0;0 1 0 0];
Q = diag([100,100,10,10,0]);
R = 500*1*diag([100,100]);

w = mvnrnd(zeros(1,5),Q,N/T)';
v = mvnrnd(zeros(1,2),R,N/T)';

Acv = [I2 T*I2; Z2 I2];
Act = @(omega) [I2 [sin(omega*T)/omega -(1-cos(omega*T))/omega;...
                -(1-cos(omega*T))/omega sin(omega*T)/omega]; Z2 ...
                [cos(omega*T) -sin(omega*T); ...
                sin(omega*T) cos(omega*T)]];




% Generate trajectory
xt = [1000 1000 100 100]';
xt(:,1) = xt + w(1:4,1);
y(:,1) = H*xt(:,1) + v(:,1);
plot(y(1,1),y(2,1),'.','Color',[0.8500 0.3250 0.0980])
pause(0.1)
hold on
grid on
xlim([0 12000])
ylim([1000 13000])
for i = 2:25
    xt(:,i) = Acv*xt(:,i-1)+w(1:4,i);
    y(:,i) = H*xt(:,i) + v(:,i);
    
    plot(y(1,i),y(2,i),'.','Color',[0.8500 0.3250 0.0980])
    pause(0.1)
end
omega = 2*(1-0.5)*pi/75;
for i = 26:50
    xt(:,i) = Act(omega)*xt(:,i-1)+w(1:4,i);
    y(:,i) = H*xt(:,i) + v(:,i);
    
    plot(y(1,i),y(2,i),'.','Color',[0.8500 0.3250 0.0980])
    pause(0.1)
end
for i = 51:N
    xt(:,i) = Acv*xt(:,i-1)+w(1:4,i);
    y(:,i) = H*xt(:,i) + v(:,i);
    
    plot(y(1,i),y(2,i),'.','Color',[0.8500 0.3250 0.0980])
    pause(0.1)
end
plot(xt(1,:),xt(2,:),'-','Color',[0 0.4470 0.7410])
hold on
grid on


hold on

%% Kalman Filter


Q_filter = diag([100,100,10,10]);
R_filter = 500*1*diag([100,100]);

predx = zeros(4,N);
predP = zeros(4,4,N);
hatx = zeros(4,N);
P = zeros(4,4,N);

x0 = [1000 1000 100 100]';
P0 = eye(4);
for k = 1:N
    % Prediction Update
    if k == 1
        predx(:,k) = Acv*x0;
        predP(:,:,k) = Acv * P0*Acv' + Q_filter;
    else
        predx(:,k) = Acv*hatx(:,k-1);
        predP(:,:,k) = Acv * P(:,:,k-1)*Acv' + Q_filter;
    end
    
    % Measurement Update
    S = H*predP(:,:,k)*H'+R_filter;
    K = predP(:,:,k)*H'*inv(S);
    hatx(:,k) = predx(:,k)+K*(y(:,k)-H*predx(:,k));
    P(:,:,k) = predP(:,:,k)-K*H*predP(:,:,k);
    
    plot(hatx(1,:),hatx(2,:),'.','Color',[0.9290 0.6940 0.1250])
    pause(0.1)
end
