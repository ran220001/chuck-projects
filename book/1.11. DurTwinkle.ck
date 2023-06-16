/* Sine Music using dur variables
17 May 2023 */

SinOsc s => dac;

220.0 => float twinkle;
0.55 :: second => dur onDur;
0.05 :: second => dur offDur;

1 => int onGain;
0 => int offGain;

// Play one note
twinkle => s.freq;
onGain => s.gain;
onDur => now;

offGain => s.gain;
offDur => now;

1.5 *=> twinkle;

// Play other note of 2nd "twinkle"
twinkle => s.freq;
onGain => s.gain;
onDur => now;

offGain => s.gain;
offDur => now;