%   Author: Harrison Kung
%   Description: output_sequence can output demo music and inputted music using
%   custom input, sequences multiple notes at a time
%   Usage: Mode 1 for Demo Mode -> Input: (1, 2, 3) for different preset songs
%   Mode 2 for Manual Input Mode -> Input: 1D array in format below to play
%   Type (Same for Both Modes): 1 for piano_generator, 2 for adsr_piano
%   Data Format: 2D array with 1-8 representing C,D,...,C in notes, use 0
%   to play no sound, outputs all notes played sequentially, 
function output = output_sequence(mode, input, type)
    % notes are c,d,e,f,g,a,b,c from 1-8 in array
    notes = [20, 22.5, 25, 27, 30, 34, 38, 40];
    % key value frequencies shown below:
    %c1 = 20;
    %d1 = 22.5;
    %e1 = 25;
    %f1 = 27;
    %g1 = 30;
    %a2 = 34;
    %b2 = 38;
    %c2 = 40;
    adsr_notes = [130.8, 146.8, 164.8, 174.6, 195.9, 220, 246.9, 261.6];
    if (mode == 1) % demo music, set premade songs
        if (input == 1)
            % london bridge
            song = [5,6,5,4,3,4,5,0,2,3,4,0,3,4,5,0,5,6,5,4,3,4,5,0,2,0,5,0,3,1,0,0];
        end
        if (input == 2)
            % happy birthday
            song = [1,1,2,1,4,3,0,1,1,2,1,5,4,0,1,1,8,6,4,3,2,7,7,6,4,5,4];
        end
        if (input == 3)
            % special song
            song = [1,0,3,0,4,3,4,4,4,7,6,5,4,5,0,5,7,8,5,4,7,7,5,7,1,8,0,1];
        end
    end
    if (mode == 2)
        song = input;
    end
    output = zeros(1, 10000);
        if (song(1) ~= 0) 
            frequency = notes(song(1)); 
            if (type == 1)
                temp = piano_generator(frequency, 1000, 10);
                for j = 1: length(temp)
                    output(1, j) = temp(j);
                end
            end
            
            if (type == 2)
                signal = sine_generator(1,0,adsr_notes(song(1)),1000,10);
                temp = adsr_piano(signal, 1000);
                output(1) = temp(:);
                for j = 1: length(temp)
                    output(1, j) = temp(j);
                end
            end
        end
    end

