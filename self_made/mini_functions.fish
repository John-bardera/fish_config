# 5分ほどパスワードの入力を回避
function opensshkey
  #eval `ssh-agent`
  ssh-agent
  ssh-add
end

# Mergeされたlocal branchの一括削除
function gitrmmergedbranch
  if test (count $argv) -eq 1
    git branch | grep $argv[1] | while read branch;git branch -d $branch > /dev/null 2>&1;end
    git branch
  else
    echo -e "引数が1つが必要です\n入力された文字>列にマッチするbranchを削除します"
  end
end

## VScode TeX用設定
function code
  if test (count $argv) -eq 1
    if test (string split '.' (basename $argv[1]))[-1] = 'tex' and not test -e $argv[1]
      cp ~/temp.tex $argv[1]
    else
      touch $argv[1]
    end
    open -a /Applications/Visual\ Studio\ Code.app/ $argv[1]
  else
    open -a /Applications/Visual\ Studio\ Code.app/
  end
end

# peco
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

