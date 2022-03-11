function output = adsr_piano(input_signal, fs)
%ADSR_PIANO This function takes an input and runs it through a premade adsr envelope
%
% Author: Holden Adamec
%
% FYI this sounds nothing like a piano, but like I dunno what else to call it
duration = size(input_signal, 2) / fs;
a = adsr_gen(1, 0.3, [0.05,0.263,0.38], fs, duration);
output = input_signal(:) .* a(:);
end

