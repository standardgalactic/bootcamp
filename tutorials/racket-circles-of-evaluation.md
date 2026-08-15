# Racket Tutorial: Circles of Evaluation

## What are circles of evaluation?

A circle of evaluation is a visual way to represent how a Racket expression is evaluated.

Each circle contains:
- an operator (the function)
- its arguments (the input values or nested expressions)

The center idea: evaluate inner expressions first, then apply the outer function.

## Example 1: Simple expression

Expression:

```racket
(+ 3 4)
```

Circle interpretation:
- operator: `+`
- arguments: `3`, `4`
- result: `7`

## Example 2: Nested expressions

Expression:

```racket
(* (+ 1 2) (- 10 4))
```

Step-by-step:
1. Evaluate `(+ 1 2)` → `3`
2. Evaluate `(- 10 4)` → `6`
3. Evaluate `(* 3 6)` → `18`

Circle structure:
- outer circle: `*`
- left inner circle: `+` with `1` and `2`
- right inner circle: `-` with `10` and `4`

## Why this helps

Circles of evaluation make it easier to:
- read prefix notation
- understand nesting and order of operations
- debug expressions by isolating each subexpression

## Practice prompts

Try drawing circles for:

```racket
(+ (* 2 5) (/ 12 3))
```

```racket
(- (max 8 3) (min 4 2))
```

For each one:
1. identify the outer operator
2. identify inner expressions
3. reduce inner expressions first
4. compute the final value
