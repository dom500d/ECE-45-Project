% Author: Harrison Kung
% Usage: Takes in 5 variables for amplitude, phase, frequency, sampling
%        frequency, duration
function output = sawtooth_generator(amp, phase, freq, samfreq, duration)
    % set output array to empty array with total # of samples (duration in
    % seconds multiplied by the sample frequency)
    output = zeros(1, duration * samfreq);
    % iterate through entire array
    for i = 1 : (duration * samfreq)
        % to get sawtooth find modulo of total samples to 1, multiplying
        % by amplitude
        output(i) = amp*mod((freq*(i)/(samfreq))-phase, 1);
    end
end
