// Date: 19 May 2023

// connect two oscillators to the dac
SinOsc s => dac;
SinOsc s2 => dac;

// set their frequencies and gains
220 => s.freq;
1030 => s2.freq;
0.5 => s.gain;
0.5 => s2.gain;

second => now;