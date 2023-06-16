// Using SndBuf to play a sound file
// 7 June 2023
SndBuf mySound => dac;

// get file path
me.dir() => string path;
// sound file we want to play
"/audio/snare_01.wav" => string filename;

// + sign connects strings together!
path+filename => filename;

// tell SndBuf to read this file
filename => mySound.read;

// set gain
0.5 => mySound.gain;

// play sound from the beginning
0 => mySound.pos;

// advance time so we can hear it
second => now;