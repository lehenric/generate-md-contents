# Generate MD contents

This shell script generates markdown content from file taken as 1st argument and prints it to `stdout`. 

Alternatively it reads from `stdin` if no argument is present.

This can be used for example in `vim`
```vim
:read ! generate-md-contents %
```
