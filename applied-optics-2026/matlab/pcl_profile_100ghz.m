% Analytical 100 GHz single-sided plano-convex lens surface.
% Adapted from the author's PCL profile notebook for a standalone example.
% Distances are in mm. This computes geometry only; it does not simulate fields.

clearvars;

rg = 11.9;       % incident Gaussian beam radius
rft = 400;       % desired flat-top radius at the output plane
d = 3000;        % lens-to-output-plane distance
Dl = 100;        % lens diameter
n = 1.45;        % lens refractive index
L = 52;          % source phase-center-to-lens distance
alpha_opt = 0.79;% optimization factor used in the 100 GHz study

% The edge ray intersects the aperture at r = Dl/2.
edge_equation = @(theta) (n-1)*L*sin(theta) ...
    - (Dl/2)*(n*cos(theta)-1);
theta_edge = fzero(edge_equation, [0, pi/2]);
theta = linspace(0, theta_edge, 801);

% Collimating surface from Fermat's principle.
R = (n-1)*L ./ (n*cos(theta)-1);
r = R .* sin(theta);
h_collimator = R .* cos(theta) - L;

% Beam-shaping surface from the geometrical-optics intensity mapping.
normalizer = sqrt(1-exp(-2*(Dl/(2*rg))^2));
f = @(rho) (rft/((n-1)*d*normalizer)) ...
    .* sqrt(1-exp(-2*(rho/rg).^2)) + rho/((n-1)*d);
h_shaper = arrayfun(@(radius) integral(f, 0, radius), r);

h_pcl = h_collimator + alpha_opt*h_shaper;
radius_full = [-fliplr(r(2:end)), r];
height_full = [fliplr(h_pcl(2:end)), h_pcl];

figure('Color','w');
plot(radius_full, height_full, 'k', 'LineWidth', 2);
hold on;
plot(radius_full, h_pcl(end)*ones(size(radius_full)), 'k--', ...
    'LineWidth', 1);
grid on;
xlabel('Radial position (mm)');
ylabel('Surface height (mm)');
title('100 GHz single-sided plano-convex lens profile');
xlim([-Dl/2, Dl/2]);
legend('Curved surface', 'Flat reference side', 'Location', 'best');
