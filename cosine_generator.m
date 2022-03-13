%   Author: Harrison Kung
%   Description: Creates cosine signal based on inputs
%   Usage: Takes in 5 variables for amplitude, phase, frequency, sampling
%   frequency, duration
function output = cosine_generator(amp, phase, freq, samfreq, duration)
    % set output array to empty array with total # of samples (duration in
    % seconds multiplied by the sample frequency)
    output = zeros(1, duration * samfreq);
    % iterate through entire array
    for i = 1 : (duration * samfreq)
        % each element in array is 2 pi frequency i divided by the sample
        % frequency shifted by the phase and multiplied by the amplitude
        output(i) = amp * cos(((2*pi*freq*(i))/(samfreq))-phase);
    end
end