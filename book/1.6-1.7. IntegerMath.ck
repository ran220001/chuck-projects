// arithmetic with integers
220 => int myPitch;

// add or subtract
myPitch + myPitch - 110 => int anotherPitch;

// multiply
2 * myPitch => int higherPitch;

// divide
myPitch / 2 => int lowerPitch;

// print them all out
<<< myPitch, anotherPitch, higherPitch, lowerPitch >>>;


// longhand math with integers

int myPitchLonghand;
220 => myPitchLonghand;

// multiply by 2
2 * myPitchLonghand => myPitchLonghand;

// subtraction
myPitchLonghand - 110 => myPitchLonghand;

<<< myPitchLonghand >>>;


// shorthand math with integers

220 => int myPitchShorthand;

// multiply by 2, in-place
2 *=> myPitchShorthand; // "times ChucK"

// in-place subtraction
110 -=> myPitchShorthand; // "minus ChucK"

<<< myPitchShorthand >>>;