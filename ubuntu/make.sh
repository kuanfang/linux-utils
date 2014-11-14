# grep errors from the output of make
# 1. The pipe only connects the stdout of make to the stdin of grep. make's stderr is still 
# connected to the terminal in will therefore be printed without filtering.
# 2. The solution is connect make's stderr to its stdin and ignore the stdin
make 2>&1 >/dev/null | grep -i 'error'
