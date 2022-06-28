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
      else if test (string split '.' (basename $argv[1]))[-1] = 'md'
        cp ~/temp.md $argv[1]
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
  ffmpeg -i $argv[1] -f mp3 -b:a 192k (basename $argv[1] .wav).mp3
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
  ffmpeg -i $argv[1] -acodec libmp3lame -aq 2 (basename $argv[1] .m4a).mp3
end
function m4as2mp3s
  for file in *.m4a; m4a2mp3 $file; end
end

# mv latest N files
function mvLatest
  ls -1tr $argv[2] | tail -n $argv[1] | while read file; mv $argv[2]$file $argv[3]; end
end

# mv latest N files from ~/Downloads/ to current directory
function mvLFD2CD
  mvLatest $argv[1] ~/Downloads/ ./
end

# 'git reset --hard HEAD' wrapper
function gitResetHardHEAD
  if test (count $argv) -eq 1
    git checkout HEAD -- $argv[1]
  else
    git reset --hard HEAD
  end
end

# webm to mp3
function webm2mp3
  ffmpeg -n -i $argv[1] -vn -ab 160k -ar 44100 (basename $argv[1] .webm).mp3
end
function webms2mp3s
  for file in *.webm; webm2mp3 $file; end
end
function webms2mp3sOverwrite
  for file in *.webm; ffmpeg -i $file -vn -ab 160k -ar 44100 (basename $file .webm).mp3; end
end

# search large file
function slf
  dud0m $argv[1]/* | sort -nr | head -n (set -q $argv[2]; and echo 10; or echo $argv[2])
end
balias slfc "slf ./"

# set brightness
function brightnessWithDdcctl
  # 0~100で入力
  ddcctl -d 1 -b $argv[1]
  brightness (math $argv[1] / 100)
end

