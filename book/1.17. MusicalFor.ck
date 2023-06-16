// Date: 19 May 2023

// set up our patch
SinOsc s => dac;

// loop
for (20 => int i; i < 400; i++)
{
    <<< i >>>; // print loop counter value
    i => s.freq; // set freq to i
    10::ms => now; // advance time
}