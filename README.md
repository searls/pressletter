# Pressletter

Letterpress is a fantastic game for iOS written by [Loren Brichter](http://www.atebits.com). Pressletter is a gem that solves Letterpress boards using an included plaintext dictionary of words.

## Installation

### global install

To install pressletter to your system, run:

```
$ gem install pressletter
```

### bundler

If you're using [Bundler](http://gembundler.com), add the pressletter gem to your Gemfile:

``` ruby
source 'https://rubygems.org'

gem 'pressletter'
```

and then run:

```
$ bundle install
```

Inside your Bundler project, the binary can then be accessed with `bundle exec pressletter`.

## Example

Here's what a board looked like in a game I played with [@steveklabnik](https://github.com/steveklabnik):

![pressletter Screen](http://i.minus.com/ibv4sMC7Msl5Fv.png)

Using the pressletter gem, you can search for playable words by providing the 25 letters on the game board (even any repeats, since the game rules stipulate that each letter can only be used as many times as it appears on the board).

For instance, the letters in the provided screenshot are: `E I P T C T B N T Y M E I P H O X V I T K M Z I B`.

### command-line

The simplest way to invoke the gem is using the `pressletter` binary from the command line.

You can pass the candidate letters as a contiguous string argument:

```
$ pressletter eiptctbntymeiphoxvitkmzib
```

Pressletter is also friendly to piped (and whitespace and uppercase) input:

```
$ echo "E I P T C T B N T Y M E I P H O X V I T K M Z I B" | pressletter
```

Finally, if an argument isn't passed in, pressletter will wait for you to interactively type in the letters:

```
$ pressletter
Please enter candidate Letterpress letters, then press <return>:
E I P T C T B N T Y M E I P H O X V I T K M Z I B

```

### Ruby

You can, of course, also look for solutions using pure ruby. The public API is exceedingly simple:

**Pressletter.solve(letters[, config])**

For input, all that's needed is a string or array of candidate letters. A config object that responds to `dictionary_location` with a path of a dictionary file can also be optionally provided. An array (sorted largest-to-smallest) of valid words is returned.

Here's an interactive session that uses the gem programmatically:

``` ruby
$ irb
irb(main):001:0> require 'pressletter'
=> true
irb(main):002:0> letters = ["e", "i", "p", "t", "c", "t", "b", "n", "t", "y", "m", "e", "i", "p", "h", "o", "x", "v", "i", "t", "k", "m", "z", "i", "b"]
=> ["e", "i", "p", "t", "c", "t", "b", "n", "t", "y", "m", "e", "i", "p", "h", "o", "x", "v", "i", "t", "k", "m", "z", "i", "b"]
irb(main):003:0> Pressletter.solve(letters)
=> ["COMPETITIVITE", "...", "XI"]
```




