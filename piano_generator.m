%   Author: Harrison Kung
%   Description: Creates a piano signal based on inputs
%   Usage: Takes in 3 variables for frequency, sampling frequency, duration
%   Source: https://www.youtube.com/watch?v=ogFAHvYatWs&t=254s (for piano
%   equation)
function output = piano_generator(freq, samfreq, duration)
    % set output array to empty array with total # of samples (duration in
    % seconds multiplied by the sample frequency)
    output = zeros(1, duration * samfreq);
    % iterate through entire array
    for i = 1 : (duration * samfreq)
        % equations below from youtube source
        % set initial piano wave sound
        output(i) = sin(2*pi*freq*duration*samfreq)*duration * samfreq;
        % recursively multiply wave to achieve piano sound
        for j = 2 : 5
            output(i) = output(i) + sin(j * 2 * pi * freq * i/samfreq) * exp(-0.0004 * 2 * pi * freq * i/samfreq) / 2^j;
        end
    end
end
