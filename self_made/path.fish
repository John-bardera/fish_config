## nim
set PATH /Users/john/.nimble/bin $PATH

## rbenv
function fix_path --description "Removes duplicate entries from \$PATH"
  set -l NEWPATH
  for p in $PATH
    if not contains $NEWPATH $p
      set NEWPATH $NEWPATH $p
    end
  end
  set PATH $NEWPATH
end

status --is-interactive; and . (rbenv init -|psub)
fix_path

## bison 3 or newest
set PATH /usr/local/Cellar/bison/3.7.3/bin $PATH

