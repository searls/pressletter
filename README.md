# Letterpress

Letterpress is a fantastic game for iOS written by [Loren Brichter](http://www.atebits.com). This is a gem that solves Letterpress boards using a the

## Example

Here's what a board looked like in a game I played with @steveklabnik:

![Letterpress Screen](http://i.minus.com/ibv4sMC7Msl5Fv.png)

Using the letterpress gem, you can take a look at what words *would* have been possible to play by passing in all 25 available letters (including any repeats, since the rules dictate that each letter is consumed as it is used).

As you can see in the screen, those letters (in lexical order) are: `E I P T C T B N T Y M E I P H O X V I T K M Z I B`.

### binary

The simplest way to invoke the gem is using the `letterpress` binary.

You can pass the candidate letters as a contiguous string argument:

```
$ letterpress eiptctbntymeiphoxvitkmzib
```

Letterpress is also friendly to piped (and whitespace and uppercase) input:

```
$ echo "E I P T C T B N T Y M E I P H O X V I T K M Z I B" | letterpress
```

Finally, if an argument isn't passed in, letterpress will wait for you to interactively type in the letters:

```
$ letterpress
Please enter candidate Letterpress letters, then press <return>:
E I P T C T B N T Y M E I P H O X V I T K M Z I B

```

### ruby

