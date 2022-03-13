# ECE-45-Project

Synthesizer created for ECE 45 Final Project

[Link to the writeup](https://docs.google.com/document/d/1Q8SJYe2-iq4O8vgneqVcoOJftZLQSdlxxON483gE5Ms/edit?usp=sharing)

![Project Gui](https://github.com/dom500d/ECE-45-Project/blob/c2678186926acf2eea4fbfdfd02d6feb87a55590/joe%20chill.PNG)

## Contributors

### Dominic Orlando:
>app1.mlapp
### Holden Adamec:
>convolution, adsr_gen, adsr_piano, pulse_generator
### Harrison Kung:
>sine_generator, play_sequence, piano_generator

## Features

- Generate sinusoids, pulse, sawtooth waves
- ADSR envelope for amplitude modulation
- Note sequencer to play notes in a sequence 
- Play preset demo song sequences
- Import custom note sequences
- Import custom sound files
- Plots input wave and fourier transform of input/output
- Displaying graph and outputting sounds of input/output

## Usage
For the three signal generators, we have 5 inputs, which are the amplitude, phase, frequency, sampling frequency,
and the duration of the signal. The sampling frequency must be at least 1000, something that is hardcoded in Matlab, 
the amplitude can be whatever you want, but in our testing our laptop speakers could only make the difference noticeable 
for values between 0 and 1. The frequency is what determines the pitch of the sound, so that’s something you can change 
pretty much entirely. The phase value can also be changed a lot, but take care to not shift it more than the duration.

For the piano sounds, we have two ways to play. The first involves 3 demo songs that we created, to the theme of 
Happy Birthday, London Bridge, and The Cruel Angel’s Thesis. In the manual mode, you can add notes in your own 
order to create your own song. To these options you can either play the sounds the way they are, or apply a preset
ADSR envelope to them.

To these input methods, we currently have an ADSR envelope you can apply to them. This envelope takes a few inputs, 
one being the target gain during the attack phase, and the target during the sustain phase. These inputs are from 0-1. 
You also have the ability to set the duration of each phase of the envelope. These inputs can be pretty much any 
number, not needing to be a percentage or decimal, as they’re normalized to each other. 

We’ve included the ability to graph both the input signal and its Fourier transform, as well as the same for the 
output function so you can graphically compare the effects of the signal manipulations. You can also play and 
pause the input or output sounds independently of each other.

## References/Sources

ADSR Generator
Author: Phillip L. De Leon
Source: https://www.mathworks.com/matlabcentral/answers/uploaded_files/223069/ASEE_GSW_2000.pdf

Piano Generator Equations
Author: Inigo Quilez
Source: https://www.youtube.com/watch?v=ogFAHvYatWs&t=254s
