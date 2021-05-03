# lua-math-extension-module
A lua module including functions meant to extend the math library

How to add to Lua:
1. Move the file into your LUA_PATH
2. Just use require "mathext" to have your Lua files be able to use the functions defined in the module.

A list of the functions defined here:
* round(x)
  Takes a float value and rounds it to the nearest integer
* fact(x)
  Takes an int value and returns the factorial of it
* perm(n, r)
  Takes two int values, n being larger than r, and returns the permutation of the two of them
* comb(n, r)
  Does the same as perm, but returns the combination of the two values
