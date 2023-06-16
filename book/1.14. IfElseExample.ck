// Date: 19 May 2023

// sound chain
SinOsc s => dac;

// set frequency
220.0 => s.freq;
// set volume
0.5 => s.gain;

// chance logical variable
3 => int chance;

if (chance == 1)
{
    // play first "twinkle" note if chance == 1
    1 :: second => now;
}
else
{
    // otherwise, play other, higher twinkle note
    330.0 => s.freq;
    // and play it for a much longer time
    3::second => now;
}

// set and play one note, an octave above "twinkle"
440.0 => s.freq;
1 :: second => now;