%   Author: Holden Adamec
%   Description: Pulse generator generates a pulse wave which is on half the time
%   Usage: amp is the amplitude of the output pulse
%   phase is the phase shift of the wave (radians)
%   f is the wave frequency (1/s)
%   fs is the sampling frequency (1/s)
%   duration is the total length of the output signal (seconds)
function output = pulse_generator(amp,phase,f,fs,duration)
    samples = fs * duration;
    output = zeros(1, samples); % output should be a 1 dimensional matrix
    for i = 1:samples
        t = i / fs; % increment time by a sampling period each loop
        k = sin(2*pi*f*t - phase); % use a sin wave to check if we should output a signal or a zero 
        if (k > 0)
            output(i) = amp;
        else
            output(i) = 0;
        end
    end
end
