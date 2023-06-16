// Date: 19 May 2023

SinOsc s => dac;

// initialize variable i
20 => int i;

// while loop (instead of for loop)
while (i < 400)
{
    <<< i >>>;
    i => s.freq;
    10::ms => now;
    i++; // update counter (very important!!)
}