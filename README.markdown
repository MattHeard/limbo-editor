# Limbo EDitor

A semantic editor for Ruby projects for playing with Limbo and TDD

## Background

* *A semantic editor*: I spend a lot of time looking at text files,
  mentally converting them into concepts, mentally planning new
  concepts, and then converting those new concepts into new text
  changes.  A semantic editor would provide a limited set of actions
  which allow for transformations of an existing AST into another.  Each
  transformation is conceptual: e.g. rename a variable, extract a class,
  add a test.
* *Ruby*: Let's keep this simple and start with supporting Ruby projects
  which use RSpec for testing.
* *TDD*: (1) Write a failing test.  (2) Make the test pass.  (3)
  Refactor.
* *Limbo*: How low can you go?  How small can you make each change?  The
  smaller the changes, the smaller the risk of merge conflicts.  Changes
  are only committed if all tests pass.  All commits are pushed.  This
  is extreme trunk-based development.

## Limbo on the Cheap

    $ alias test="./bin/rspec -fd"
    $ alias commit="git add .; git commit -m working; git pull --rebase; git push"
    $ alias revert="git reset --hard"
    $ alias tcr="test && commit || revert"
