# Google Code Jam
My practice codes for [Code Jam to I/O for Women - Ticket Trouble](https://codingcompetitions.withgoogle.com/codejamio/round/0000000000050ece/0000000000050df6)   

# Problem

 A group of F friends is attending a conference held at an amphitheater, and they have bought tickets to see a concert there afterwards. The amphitheater is a grid of seats with S rows and S columns. For each seat, the amphitheater has sold a single ticket (although some of the tickets might not have been sold to this group of friends). Each ticket is normally labeled with a pair of integers giving the row and column numbers of one seat, in that order. For example, a ticket might normally say (2, 1), meaning row 2, column 1, or (2, 2), meaning row 2, column 2.

When the tickets were printed, there was a malfunction, and the two numbers in each pair always came out in sorted (that is, nondecreasing) order! So, for example, a ticket labeled (1, 2) might actually be for the seat in row 1, column 2, or it might actually be for the seat in row 2, column 1. If two friends have tickets labeled (1, 2), then one must actually be for row 1, column 2, and the other must actually be for row 2, column 1.

The friends will consult the box office on the day of the concert to find out what their actual seat numbers are, but for now, it is unclear! Given the printed pairs on the tickets, what is the largest possible number of the friends that could actually be seated all in the same-numbered row of seats? (The friends do not necessarily need to be seated in consecutive seats in that row.) 

# Sample Input - Output

|   input  |    output  |  
|-----------------------|-----------
|3         |
|2 3       |
|1 2       |
|1 2       |
|3 3       |Case #1: 1
|1 2       |Case #2: 3
|2 3       |Case #3: 2
|2 2       |
|3 3       |
|1 1       |
|2 2       |
|1 2       |
               
 

# Instructions

In the command line type: `ruby ticket_trouble.rb sample.in > sample.out`
In order run Google's tests, go to [the problem](https://codingcompetitions.withgoogle.com/codejamio/round/0000000000050ece/0000000000050df6) and run your script directly from that page.

# Environment

Ruby 2.3.3p222 (package: ruby-full)
