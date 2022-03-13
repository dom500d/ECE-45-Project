%   Author: Holden Adamec
%   Description: Adsr_piano takes an input and runs it through a premade adsr 
%   envelope
%   Usage: input an signal and sampling frequency to return a adsr piano
%   signal
function output = adsr_piano(input_signal, fs)
    duration = size(input_signal, 2) / fs;
    a = adsr_gen(1, 0.3, [0.05,0.263,0.38], fs, duration);
    output = input_signal(:) .* a(:);
end

