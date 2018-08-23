# Set window title to match the last two path segments (directories)
# Two segments are usually not too long but tell more than just one.
# Explanation: http://blog.pengyifan.com/how-to-set-terminal-title-dynamically-to-the-current-working-directory/
case $TERM in
  xterm*)
    my_precmd() {print -Pn "\e]0;%2~\a"}
    precmd_functions+=(my_precmd)
    ;;
esac
