/* Random Triangle Wave Music
19 May 2023 */

TriOsc t => dac;

// infinite loop runs forever
while (true)
{
    // randomly choose frequency from 30 to 1000
    Math.random2(30,1000) => t.freq;
    
    // random choose duration from 30 to 1000 ms
    Math.random2(30,1000) :: ms => now;
}