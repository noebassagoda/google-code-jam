# Google Code Jam
My practice codes for [Code Jam to I/O for Women - Understudies](https://codingcompetitions.withgoogle.com/codejamio/round/0000000000050ece/0000000000050ed4)   

# Problem

  You are a casting director for an upcoming musical. The musical has N roles, and for each role, you want to cast two performers: one primary performer and one understudy. A primary performer or understudy trains for only one particular role, and the job of the understudy is to play the role if the primary performer becomes unavailable. At least one of the two performers for each role must be available for the show to succeed.

You have selected 2N performers to be in the musical. They are all quite talented, and any of them can be cast as a primary performer or understudy for any of the roles. However, you are worried that some of them may be tempted to run away to join the cast of Hamiltonian!, the smash hit musical about quantum mechanics, before your show opens. Luckily, you are an excellent judge of character. You know that the i-th performer has a probability Pi of becoming unavailable. (These probabilities are all independent of each other, and a given performer has their probability regardless of their assigned role or whether they are a primary performer or understudy.)

You wish to assign one primary performer and one understudy for each role in a way that maximizes the probability that the show will succeed. That is, you want to minimize the probability that there will be at least one role for which the primary performer and understudy both become unavailable.

If you make optimal casting choices, what is the probability that your show will succeed? 

# Sample Input - Output

|   input  |    output  |  
|-----------------------|-----------
|3|
|2|
|0.2500 0.5000 0.5000 0.2500|Case #1: 0.765625
|3|Case #2: 1.000000
|0.0000 0.0000 0.0000 0.0009 0.0013 0.1776|Case #3: 0.876600
|1|
|1.0000 0.1234|
               
 

# Instructions

In the command line type: `ruby understudies.rb sample.in > sample.out`
In order run Google's tests, go to [the problem](https://codingcompetitions.withgoogle.com/codejamio/round/0000000000050ece/0000000000050ed4) and run your script directly from that page.

# Environment

Ruby 2.3.3p222 (package: ruby-full)
