% Title: Propulsion Data Smoother
% Author: James Emerson Parkus
% Date: 11/23/17
% Purpose: Takes the data from the propulsion test and smooths it. Just
% makes it easier to work with over all. 

%% Smoothing
thrust = thrust';
time = time';

thrust = thrust/20;
thrust = smooth(thrust);
time(1) = 1;


%% Plotting

plottitle = 'Thrust vs. Time: Mach 2 0.16RT';

plot(time,thrust);
title(plottitle);
xlabel('Time [s]');
ylabel('Thrust [N]');

max_thrust = max(thrust)