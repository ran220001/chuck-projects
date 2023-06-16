// Date: 20 May 2023

// sound chain
TriOsc t => dac;
0.4 => t.gain;

// loop
for (0 => int i; i < 127; i++)
{
    Std.mtof(i) => float Hz; // MIDI to Hertz frequency
    <<< i, Hz >>>; // print out result
    Hz => t.freq; // update frequency
    200::ms => now; // advance time
}