Consider a mythical Dwarf whose public API consists of a single method:

`Dwarf#mine(mountain)`

The provided mountain object should respond to the instance method
`#mine` by randomly returning one of 3 strings:

* "gems" -- to indicate the dwarf has successfully mined a precious stone
* "coal" -- to indicate the dwarf has found mere fossil fuels
* <other> -- we got a wildcard -- insert your own exciting geological substance here

The Dwarf API is already implemented under `lib/dwarf.rb`. The objective of
this exercise is to practice retroactively testing the API _without
actually writing the `Mountain` class_.

Due to the random nature of mining, our tests will be more reliable if
we control the `Mountain` interface manually using mocks and stubs.
Additionally mountains are large and generally a pain to move around.
Using mock stand-ins will make our test much lighter-weight.

Try filling in the tests 3 times.

* Using Minitest's built-in mocking library (`Minitest::Mock`)
* Using the Mocha gem (a mocking add-on for test-unit and minitest)
* Using Rspec's built-in `rspec-mocks` library
