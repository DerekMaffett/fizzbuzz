# Approach

For this challenge, I first set up rspec so that I could use test-driven development throughout. 

I first set up the bare minimum requirements to make all the tests pass. 
After this, I refactored the code (our TA Kayla helped me with this) so that it returned the original input if it was nondivisible. 
For all other returns, I set up an empty string which would concatenate "Fizz" and "Buzz" sequentially, 
thus getting "FizzBuzz" without any separate logic. I then used an explicit return. 