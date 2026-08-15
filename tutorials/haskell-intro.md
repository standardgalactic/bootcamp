# Haskell Track: Selective Continuation by Types and Demand

This track is the complement to the Racket continuation experiments.

- Racket emphasizes executable continuation mechanics.
- Haskell emphasizes what continuations and outcomes are representable by type and by demand.

## Experiment sequence

### 1) Refusal is a value

File: `tutorials/haskell/01-claim-judgment.hs`

A claim can become accepted or refused; refusal is not an exceptional side channel.

### 2) Availability is not use

File: `tutorials/haskell/02-availability-not-use.hs`

Non-strict evaluation demonstrates that supplied arguments do not need to be evaluated unless demanded.

### 3) Admissible worlds shrink

File: `tutorials/haskell/03-admissible-worlds.hs`

Invariant expressed as code:

A(t+1) subset-of A(t)

### 4) Prediction survives observation

File: `tutorials/haskell/04-prediction-before-observation.hs`

Observation resolves an experiment without mutating away the prior prediction.

## Suggested progression

1. Run each file with `runghc`.
2. Identify which proposition each type and output enforces.
3. Extend one experiment with an additional refusal/contradiction constructor.
4. Keep prediction and observation side-by-side instead of replacing one with the other.
