Zshell Zips
============

### What makes your `~/.zshrc` sourcing slow?

Insert `zmodload zsh/zprof` at the top of `~/.zshrc`; 
append `zprof` at the bottom of `~/.zshrc`.
Start `zsh`. You will see a table like:

    num  calls                time                       self            name
    -----------------------------------------------------------------------------------
     1)    2          39.17    19.58   71.07%     39.17    19.58   71.07%  grep-flag-available
     2)    1           7.41     7.41   13.45%      7.41     7.41   13.45%  colors
     3)    2           6.30     3.15   11.42%      6.30     3.15   11.42%  env_default
     4)    2           2.03     1.01    3.68%      2.03     1.01    3.68%  is-at-least
     5)    2           0.21     0.10    0.38%      0.21     0.10    0.38%  is_plugin


See also: Speeding Up Zsh And Oh-My-Zsh [blog.jonlu.ca](https://blog.jonlu.ca/posts/speeding-up-zsh)

--------------------------------------

### Use `$BASH_REMATCH` in Zsh

Within the scope of current shell

    setopt BASH_REMATCH
    
Within the scope of current function

    setopt local_options BASH_REMATCH
    
From zsh manual ([http://zsh.sourceforge.net](http://zsh.sourceforge.net/Doc/Release/Options.html)):

> When set, matches performed with the =~ operator will set the BASH_REMATCH array variable, instead of the default MATCH and match variables. The first element of the BASH_REMATCH array will contain the entire matched text and subsequent elements will contain extracted substrings. This option makes more sense when KSH_ARRAYS is also set, so that the entire matched portion is stored at index 0 and the first substring is at index 1. Without this option, the MATCH variable contains the entire matched text and the match array variable contains substrings.

SO Question: What is the zsh equivalent for BASH_REMATCH? ([53030233](https://stackoverflow.com/a/53030234/2925169))

--------------------------------------

### Array start 



