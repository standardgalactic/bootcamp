# Circles of Evaluation: Racket and Haskell Experiments in Selective Continuation

This is a paired tutorial series.

- **Racket track:** continuation as executable structure (evaluation context, prompts, delimited control, history marks)
- **Haskell track:** continuation as representable possibility (purity, non-strict demand, ADTs, typed refusal)

The goal is not to teach both languages generically. Each lesson is a small executable experiment that establishes one proposition.

## Core evaluation circle

Observe -> Interpret -> Predict -> Observe again -> Evaluate the interpretation.

Outputs are preserved commitments that later observations can evaluate.

## Racket experiments

1. `tutorials/racket/01-observe-continuation.rkt`
   - proposition: what is available now vs what continuation is waiting
2. `tutorials/racket/02-proposal-admission.rkt`
   - proposition: Produced(proposal) does not imply Admitted(value)
3. `tutorials/racket/03-preserve-history.rkt`
   - proposition: contradictions can add information without overwriting history
4. `tutorials/racket/04-delimited-fork.rkt`
   - proposition: delimited continuations allow scoped branching of futures

Run examples:

```bash
racket tutorials/racket/01-observe-continuation.rkt
racket tutorials/racket/02-proposal-admission.rkt
racket tutorials/racket/03-preserve-history.rkt
racket tutorials/racket/04-delimited-fork.rkt
```

## Haskell experiments

1. `tutorials/haskell/01-claim-judgment.hs`
   - proposition: refusal is part of the result space
2. `tutorials/haskell/02-availability-not-use.hs`
   - proposition: availability is not use (non-strict demand)
3. `tutorials/haskell/03-admissible-worlds.hs`
   - proposition: admissible worlds should shrink monotonically over time
4. `tutorials/haskell/04-prediction-before-observation.hs`
   - proposition: observation resolves an experiment without erasing prior prediction

Run examples:

```bash
runghc tutorials/haskell/01-claim-judgment.hs
runghc tutorials/haskell/02-availability-not-use.hs
runghc tutorials/haskell/03-admissible-worlds.hs
runghc tutorials/haskell/04-prediction-before-observation.hs
```

## Why this pairing works

Racket gives literal control over "what happens from here."
Haskell gives typed control over what outcomes are representable.
Together, they model selective continuation as both executable process and explicit contract.
