// Date: 19 May 2023

// sound chain
SinOsc s => dac;

// set frequency
220.0 => s.freq;
// set volume
0.6 => s.gain;

// chance logical variable
1 => int chance;

if (chance == 1)
{
    // sound will play only if chance == 1
    1 :: second => now;
}

// set new frequency
330.0 => s.freq;
1 :: second  => now;