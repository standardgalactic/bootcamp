# Haskell Tutorial: Intro Basics

## What is Haskell?

Haskell is a statically typed, purely functional programming language.

Core ideas:
- functions are first-class
- immutability by default
- strong type system with type inference

## Quick syntax examples

### Values and functions

```haskell
x :: Int
x = 5

square :: Int -> Int
square n = n * n
```

### Function application

In Haskell, function application uses spaces:

```haskell
square 4    -- 16
```

### Lists

```haskell
nums :: [Int]
nums = [1,2,3,4]

doubled = map (*2) nums      -- [2,4,6,8]
small = filter (<3) nums     -- [1,2]
```

### Pattern matching

```haskell
describe :: [a] -> String
describe [] = "empty"
describe [_] = "one element"
describe _ = "many elements"
```

## Working in GHCi

Typical loop:
1. open `ghci`
2. load a file with `:load FileName.hs`
3. run function calls interactively
4. iterate quickly on small pure functions

## Beginner checklist

- write explicit type signatures for top-level functions
- prefer pure functions first
- break problems into small composable functions
- use `map`, `filter`, and `foldr` for list transformations

## Practice prompts

Implement and test:

1. `sumSquares` for a list of integers
2. `isPalindrome` for a string
3. `countEven` for a list of integers
