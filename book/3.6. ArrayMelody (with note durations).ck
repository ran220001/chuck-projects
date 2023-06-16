// Date: 23 May 2023

// Let's Twinkle with a square wave
SqrOsc s => dac;

// gains to separate our notes
0.7 => float onGain;
0.0 => float offGain;

// declare and initialize array of MIDI notes
[57,57,64,64,66,66,64,62,62,61,61,59,59,57] @=> int a[];

// loop for length of array
for (0 => int i; i < a.cap(); i++)
{
    <<< i, a[i] >>>;
    
    // set frequency and gain to turn on our note
    Std.mtof(a[i]) => s.freq;
    onGain => s.gain;
    if (i==6 || i==13)
    {
        0.8::second => now;
    }
    else
    {
        0.3::second => now;
    }
    
    // turn off our note to separate from the next
    offGain => s.gain;
    0.2::second => now;
}