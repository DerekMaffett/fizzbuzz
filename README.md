# Approach

For this challenge, I first set up rspec so that I could use test-driven
development throughout.

# Fizzbuzz

I first set up the bare minimum requirements to make all the tests pass.
After this, I refactored the code (our TA Kayla helped me with this) so that
it returned the original input if it was nondivisible.
For all other returns, I set up an empty string which would concatenate "Fizz"
and "Buzz" sequentially, thus getting "FizzBuzz" without any separate logic.
I then used an explicit return.

# Fizzbuzzsivv

Procedurally, I approached this in the same way as the last challenge. The
first thing I did was to add in all of the tests, first without blocks so that
they would skip. I then added them in bit by bit until I had to implement a
file which would hold the rules. I decided to use a hash to store these values,
following the same basic pattern that Cenk showed in his whiteboard test.
It took me a while to figure out how to open and convert the text file into this
hash, but I got help from Eric, Marco, and Ryan with various aspects. For the
algorithm, it was a simple matter of iterating through the hash and adding each
value to the result if ```input % key == 0```. I then refactored the code to
make it as clean as possible.
