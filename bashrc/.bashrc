## show git branch
function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}
function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf "(%s)" $branch; fi
}
# Here is bash color codes you can use
  black=$'\[\e[1;30m\]'
    red=$'\[\e[1;31m\]'
  green=$'\[\e[1;32m\]'
 yellow=$'\[\e[1;33m\]'
   blue=$'\[\e[1;34m\]'
magenta=$'\[\e[1;35m\]'
   cyan=$'\[\e[1;36m\]'
  white=$'\[\e[1;37m\]'
 normal=$'\[\e[m\]'

#PS1="$white[$magenta\u$white@$green\h$white:$cyan\w$yellow\$(git-branch-prompt)$white]\$ $normal"
PS1="$green[$magenta\u$green@$green\h$green:$cyan\w$yellow\$(git-branch-prompt)$green]\$ $normal"
