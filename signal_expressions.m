a = 1 / 0.25;
f = 10;         % Frequency in Hz
omega = 2 * pi * f;
t = 0:0.002:1;
y = exp(-a * t) .* sin(omega * t);
plot(t, y);
xlabel('Time (s)');
ylabel('y');
title('Evaluation of y = e^{-at}sin(\omega t)');
grid on;

tau = 1/a;
peak_1tau = interp1(t, y, 1*tau);
peak_4tau = interp1(t, y, 4*tau);
% Display the results
disp('Peak value at t = 1tau:');
disp(peak_1tau);

disp('Peak value at t = 4tau:');
disp(peak_4tau);