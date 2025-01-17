%% given
% -------------------
xy = [0  0; ...
      40 0; ...
      40 30; ...
      0  30]; %in
% -------------------
F = [0      0; ...
     20000  0; ...
     0     -25000; ...
     0      0]; %lb
% -------------------
bound = [0   0; ...
         nan 0; ...
         nan nan; ...
         0   0]; %in
% -------------------
connect = [1 2; ...
           3 2; ...
           1 3; ...
           4 3];
% -------------------
E = 29.5e6; %psi
A = 1.0; %in^2
% -------------------

%% solution
[tbl L Ke K] = Truss(xy, F, bound, connect, E, A);