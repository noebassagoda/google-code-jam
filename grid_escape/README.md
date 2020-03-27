# Google Code Jam
My practice codes for [Code Jam to I/O for Women - Grid Escape](https://codingcompetitions.withgoogle.com/codejamio/round/0000000000050fc5/0000000000054e9c)   

# Problem

You are designing a new "escape" adventure that uses a rectangular grid of rooms (unit cells) with R rows and C columns. Each room has four doors oriented in the four orthogonal directions of the grid: north, south, east, and west. The doors on the border of the grid lead outside, and all of the other doors lead to other rooms.

The adventure will be played by exactly R × C players, with each player starting in a different one of the R × C rooms. Once everyone is in position and the game starts, all of the doors close, and there is a mechanical trick: one of the four doors in each room can be opened from inside the room, and the other three doors cannot be opened. This remains consistent throughout the adventure; in a given room, it is always the same door that can be opened. Notice that it is possible that a door that connects two rooms might be able to be opened from one side but not the other.

Each player moves independently of all other players. Players can only go through doors that they opened themselves, and they must close doors behind them. Each player will keep going through doors until they go through a door that leads outside (and therefore they escape), or they have made R × C moves without escaping (at which point they are considered to have failed, and they do not escape).

You want to choose which door in each room can be opened, such that exactly K of the players will be able to escape. Can you find a way to do this, or determine that it is IMPOSSIBLE? 

# Sample Input - Output

|   input  |    output  |  
|-----------------------|-----------
|2         |  Case #1: POSSIBLE
|2 3 2     |  SES
|1 1 0     |  SNW       
|          |  Case #2: IMPOSSIBLE 
               
 

# Instructions

In the command line type: `ruby grid_escape.rb sample.in > sample.out`
In order run Google's tests, go to [the problem](https://codingcompetitions.withgoogle.com/codejamio/round/0000000000050fc5/0000000000054e9c) and run your script directly from that page.

# Environment

Ruby 2.3.3p222 (package: ruby-full)
