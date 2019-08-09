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


