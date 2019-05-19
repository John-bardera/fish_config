function set_color
  set -l HEX_FG $argv[1]
  set -l HEX_BG $argv[2]
  set -l OPACITY $argv[3]

  #set -l FG_R `echo $HEX_FG | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$HEX_FG * 257)}'`
  #set -l FG_G `echo $HEX_FG | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$HEX_BG * 257)}'`
  #set -l FG_B `echo $HEX_FG | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$OPACITY * 257)}'`
  #set -l BG_R `echo $HEX_BG | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$HEX_FG * 257)}'`
  #set -l BG_G `echo $HEX_BG | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$HEX_BG * 257)}'`
  #set -l BG_B `echo $HEX_BG | sed 's/../0x&,/g' | awk -F "," '{printf("%d",$OPACITY * 257)}'`

#  /usr/bin/osascript <<EOF
#tell application "iTerm"
#  tell current session of current terminal
#    set foreground color to {$FG_R, $FG_G, $FG_B}
#    set background color to {$BG_R, $BG_G, $BG_B}
#    set transparency to "$OPACITY"
#  end tell
#end tell
#EOF
end
