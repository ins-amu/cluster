% Brownian path example for compiled MATLAB
function mymain(n, sig)

% use only one core
maxNumCompThreads(1);

% ensure same seed across jobs
rand('seed', 42);

% n and sig are from command line and thus strings, convert to float
n = str2num(n);
sig = str2num(sig);

% run path
x = 0.0;
for i=1:n
	x = x + sig * randn();
end

% print result
fprintf('%f\n', x);
