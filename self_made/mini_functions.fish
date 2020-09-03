# 5分ほどパスワードの入力を回避
function opensshkey
  # eval `ssh-agent`
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

function gitrmforcebranch
  if test (count $argv) -eq 1
    git branch | grep $argv[1] | while read branch;git branch -D $branch > /dev/null 2>&1;end
    git branch
  else
    echo -e "引数が1つが必要です\n入力された文字列にマッチするbranchを削除し
ます"
  end
end

## VScode TeX用設定
function code
  if test (count $argv) -eq 1
    if test ! -e $argv[1]
      if test (string split '.' (basename $argv[1]))[-1] = 'tex'
        cp ~/temp.tex $argv[1]
      end
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

# pdf2png
function pdf2png
  if test (count $argv) -eq 2
    sips -s format png $argv[1] --out $argv[2]
  else
    echo "in-pdf and out-png"
  end
end

# wav to mp3
function wav2mp3s
  ls | while read f;
    echo $f
    wav2mp3 $f
  ;end
end
function wav2mp3
  ffmpeg -i $argv[1] -f mp3 -b:a 192k (string split '.' $argv[1])[1]'.mp3'
end

# rabbithouse
set -g RABBITHOUSE_USAGE 'Usage: rabbithouse -h | --help'

function rabbithouse
  if test (count $argv) -eq 1
    if test $argv[1] = '--help'; or test $argv[1] = '-h'
      echo ご注文はusageですか？
    else
      echo $RABBITHOUSE_USAGE
    end
  else
    echo $RABBITHOUSE_USAGE
  end
end

# heic2jpg
function heic2jpg
  if test (count $argv) -eq 1
    ls -a | grep $argv[1] | while read heic_file;
      if test (string split '.' $heic_file)[2] = 'HEIC'
        magick convert $heic_file (string split '.' $heic_file)[1]'.jpg'
      else
        echo skiped $heic_file
      end 
    ;end
  else
    echo -e "引数が1つが必要です\n入力された文字列にマッチするHEICファイルをjpgファイルに変換します"
  end
end

# mov to mp4
function mov2mp4
  ffmpeg -i $argv[1] -vcodec copy -acodec copy (basename $argv[1] .mov).mp4
end

# m4a to mp3
function m4a2mp3
  ffmpeg -i $argv[1] -acodec libmp3lame -aq 2 (string split '.' $argv[1])[1]'.mp3'
end
function m4as2mp3s
  for file in *.m4a; ffmpeg -i $file -f mp3 -b:a 192k (basename $file .m4a).mp3; end
end

