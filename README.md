# ECE-45-Project

Synthesizer created for ECE 45 Final Project

[Link to the writeup](https://docs.google.com/document/d/1Q8SJYe2-iq4O8vgneqVcoOJftZLQSdlxxON483gE5Ms/edit?usp=sharing)

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

## References/Sources

ADSR Generator
Author: Phillip L. De Leon
Source: https://www.mathworks.com/matlabcentral/answers/uploaded_files/223069/ASEE_GSW_2000.pdf

Piano Generator Equations
Author: Inigo Quilez
Source: https://www.youtube.com/watch?v=ogFAHvYatWs&t=254s

## Jo Mama
ECE 45 Final Project Writeup

Things we learned
Fourier Transforms: In class we learned how to take the fourier transform of different functions. In our program, we plot the fourier transform of both the input and output signals so that users can see the functions in both the time domain and the frequency domain.
Types of functions: We learned about sinusoids, pulse functions, and sawtooth waves in class. The synthesizer we made is capable of generating those different types of functions. Each one has a distinct sound profile that allows users to experiment with different sounds.
Pitch: In class we learned that pitch is determined by the frequency of the wave. The song player we made uses this property to play different notes, each note being different only by its frequency.
Sampling: We talked about sampling which is something we had to use in this project. As matlab cannot work with analog signals, we have to approximate signals by sampling them at certain points. The frequency at which we sample the functions is determined by the frequency sampling rate (fs). If fs is too small it causes the signal to sound degraded, and when it is at or lower than the frequency of the wave, we entirely lose the ability to represent the signal.
HOW TO USE 

In our synthesizer, we have various input methods that include:
Sinusoidal generator
Pulse generator
Sawtooth generator
Ability to input a music file from the host computer
Demo songs with notes from piano
Ability to create your own sounds with the same piano notes
For the three signal generators, we have 5 inputs, which are the amplitude, phase, frequency, sampling frequency, and the duration of the signal. The sampling frequency must be at least 1000, something that is hardcoded in Matlab, the amplitude can be whatever you want, but in our testing our laptop speakers could only make the difference noticeable for values between 0 and 1. The frequency is what determines the pitch of the sound, so that’s something you can change pretty much entirely. The phase value can also be changed a lot, but take care to not shift it more than the duration.

For the piano sounds, we have two ways to play. The first involves 3 demo songs that we created, to the theme of Happy Birthday, London Bridge, and The Cruel Angel’s Thesis. In the manual mode, you can add notes in your own order to create your own song. To these options you can either play the sounds the way they are, or apply a preset ADSR envelope to them.

To these input methods, we currently have an ADSR envelope you can apply to them. This envelope takes a few inputs, one being the target gain during the attack phase, and the target during the sustain phase. These inputs are from 0-1. You also have the ability to set the duration of each phase of the envelope. These inputs can be pretty much any number, not needing to be a percentage or decimal, as they’re normalized to each other. 

We’ve included the ability to graph both the input signal and its Fourier transform, as well as the same for the output function so you can graphically compare the effects of the signal manipulations. You can also play and pause the input or output sounds independently of each other.


Applications
ADSR Envelopes: These have the ability to modify and warp sounds for sound editing/mixing purposes. For example, they can be used in order to modify sounds for privacy reasons or for music purposes.
Sinusoids, Pulse, and Sawtooth Waves: The generators for these waves can create sounds that can be used for electronic music and for sound effects. 
Sequencer: The sequencer allows for music creation applications as the user can input notes that are in a certain order in order to generate and create music. They can also modify the type of sound they would like as well when inputting their custom music track in.
Demo Music: Can be used as an audio listening device to listen to preset music and songs that are synthesized as well as the user’s own created music
Import Custom Music: The ability to import music and audio into our program allows for visual interpretation of sounds as well as the ability to modify inputs to the user’s desire..
