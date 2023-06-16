// Date: 20 May 2023

// sound chain
TriOsc t => dac;
0.4 => t.gain;

0 => int i;

// loop
while (i < 127)
{
    Std.mtof(i) => float Hz; // MIDI to Hertz frequency
    <<< i, Hz >>>; // print out result
    Hz => t.freq; // update frequency
    200::ms => now; // advance time
    i++;
}