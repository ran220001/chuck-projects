/* Sine Twinkle Music with float variables
17 May 2023 */

SinOsc s => dac;

220.0 => float twinkle;
1.6818 * twinkle => float little;

1 => int onGain;
0 => int offGain;

// Play one note
twinkle => s.freq;
onGain => s.gain;
0.3 :: second => now;
offGain => s.gain;
0.3 :: second => now;

1.5 *=> twinkle;

// Play other note of 2nd "twinkle"
twinkle => s.freq;
onGain => s.gain;
0.3 :: second => now;
offGain => s.gain;
0.3 :: second => now;

// Play one note of "little"
little => s.freq;
onGain => s.gain;
0.3 :: second => now;
offGain => s.gain;
0.3 :: second => now;