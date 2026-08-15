# Racket Track: Circles of Evaluation Experiments

This track treats continuation as a first-class object of investigation.

## Orientation

In Racket, an expression can be described as:
- current reducible expression
- continuation (the surrounding context waiting for a value)

Example decomposition:

```racket
(- 4 (+ 1 1))
```

Current reducible expression: `(+ 1 1)`
Continuation context: `(- 4 [])`

## Experiment sequence

### 1) Observation inside evaluation

File: `tutorials/racket/01-observe-continuation.rkt`

Question: At each observation, what information exists and what continuation is waiting?

### 2) Proposal vs admission

File: `tutorials/racket/02-proposal-admission.rkt`

Key distinction:

Produced(proposal) does not imply Admitted(value).

### 3) Preserve contradiction as history

File: `tutorials/racket/03-preserve-history.rkt`

Rule: do not overwrite old observations to enforce consistency.
Contradiction is preserved, then interpreted.

### 4) Scoped futures with delimited continuation

File: `tutorials/racket/04-delimited-fork.rkt`

Use `reset`/`shift` to capture a bounded continuation and explore branches.

## Suggested progression

1. Run each file.
2. Record the proposition each output confirms.
3. Rewrite one experiment to change interpretation while preserving history.
4. Fork one continuation and keep both branches visible.
