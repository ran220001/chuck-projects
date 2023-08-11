// Playing sounds in reverse
// 10 July 2023
SndBuf mySound => dac;

me.dir()+"/audio/hihat_04.wav" => mySound.read;

mySound.samples() => int numSamples;

// play sound once forward
0 => mySound.pos;
numSamples :: samp => now;

// and once backward
numSamples => mySound.pos;
-1.0 => mySound.rate;
numSamples :: samp => now;