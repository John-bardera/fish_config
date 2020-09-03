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