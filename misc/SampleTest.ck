/* Testing the sample rate of the system
17 May 2023 */

// Update after running: the current sample rate is most likely 48000

SinOsc s => dac;

220 => int testFreq;
441000 :: samp => dur CDQ;
480000 :: samp => dur DVDQ;
2 :: second => dur offDur;

1 => int onGain;
0 => int offGain;

// Play 10 "seconds" of 44100-sample audio

testFreq => s.freq;
onGain => s.gain;
CDQ => now;

offGain => s.gain;
offDur => now;

// Play 10 "seconds" of 48000-sample audio

testFreq => s.freq;
onGain => s.gain;
DVDQ => now;

offGain => s.gain;
offDur => now;