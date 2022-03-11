function output = adsr_gen(attack,sustain,length,fs,duration)
% ADSR_GEN This creates an adsr envelope which we can modulate with an input signal
% 
% Author: Holden Adamec
% Used this as a reference while making my code:
% https://www.mathworks.com/matlabcentral/answers/uploaded_files/223069/ASEE_GSW_2000.pdf
%
% The graph will rise from 0 to the value of attack (attack), decrease to
% sustain (decay), stay constant (sustain), then fall back to 0 (release)
%
%   attack - the value that will be reached by attack
%   sustain - the value of the sustain segment
%   length - a vector containing 3 percentages for the lengths of attack,
%   decay, and sustain respectively. Whatever is left over will be used for
%   release
%   fs - sampling frequency (1/s)
%   duration - the length of the signal (s)
%
% Usage:
% adsr = adsr(attack,sustain,[...],fs,duration);
% out = adsr(:) .* input(:); Modulate with an input signal
samples = fs * duration;
output = zeros(samples, 1); % dimensions should be inverse of the signal

% Attack
start = 1;
stop = start + samples * length(1);
m = attack / (stop - start);
for i = start:stop
    output(i) = m * i;
end

% Decay
start = stop + 1;
stop = start + samples * length(2);
m = (sustain - attack) / (stop - start);
for i = start:stop
    output(i) = attack + m * (i - start);
end

% Sustain
start = stop + 1;
stop = start + samples * length(3);
for i = start:stop
    output(i) = sustain;
end

% Release
start = stop + 1;
stop = samples;
m = -sustain / (stop - start);
for i = start:stop
    output(i) = sustain + m * (i - start);
end

end