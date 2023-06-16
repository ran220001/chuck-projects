// Date: 20 May 2023

// Twinkle, with two oscillators!
SinOsc s => dac;
TriOsc t => dac;

// our main pitch variable
110.0 => float melody;

// gain control for our triangle wave melody
0.3 => float onGain;

// we'll use this for our on and off times
0.3 :: second => dur myDur;

// only play t at first, sweeping pitch upward
onGain => t.gain;
0 => s.gain;
while (melody < 220.0) {
    melody => t.freq;
    1.0 +=> melody;
    0.01 :: second => now;
}

// turn both on, set up the pitches
0.7 => s.gain;
110 => s.freq;

// play two notes, 1st "Twinkle"
for (0 => int i; i < 2; i++) {
    onGain => t.gain;
    myDur => now;
    0 => t.gain;
    myDur => now;
}

// new pitches!
138.6 => s.freq;
1.5*melody => t.freq;

// two more notes, 2nd "twinkle"
for (0 => int i; i < 2; i++) {
    onGain => t.gain;
    myDur => now;
    0 => t.gain;
    myDur => now;
}

// pitches for "little"
146.8 => s.freq;
1.6837 * melody => t.freq;

// play 2 notes for "little"
for (0 => int i; i < 2; i++) {
    onGain => t.gain;
    myDur => now;
    0 => t.gain;
    myDur => now;
}

// set up and play "star!"
138.6 => s.freq;
1.5*melody => t.freq;

onGain => t.gain;
second => now;

// end by sweeping both oscillators down to zero
for (330 => int i; i > 0; i--) {
    i => t.freq;
    i*1.333 => s.freq;
    0.01 :: second => now;
}