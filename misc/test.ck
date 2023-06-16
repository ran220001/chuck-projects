SinOsc sin => dac;
dac => WvOut2 w => blackhole;
w.wavFilename(me.dir()+"test.wav");
1::second => now;