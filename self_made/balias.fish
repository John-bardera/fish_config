balias python "python3"
# venv用
# balias activate-python "source ~/programming/python/env/bin/activate.fish"
balias viscr "vi ./XXXXX.viscr && rm ./XXXXX.viscr"
# luajitlatex用
# balias luajitlatex "luajittex --fmt=luajitlatex.fmt"
balias ... "cd ../../"
balias .... "cd ../../../"
balias sl "ls"
balias l "ls"
balias s "ls"
# Apple Siliconで非推奨
# balias cpuTemp "osx-cpu-temp"
balias dud0m "du -d0 -m"
balias duH "dud0m ./* | sort -nr | head"
balias b0 "brightnessWithDdcctl 1"
balias b1 "brightnessWithDdcctl 100"

# applications
# balias webstorm "open -a /Applications/WebStorm.app"
# balias xcode "open -a xcode.app"

# git
balias gs "git status"
balias gf "git fetch"
balias gpl "git pull origin"
balias gd "git diff"
balias ga "git add"
balias gc "git commit -m"
balias gps "git push origin"
balias gcd "git checkout"
balias gcp "git cherry-pick"
balias gback "git reset HEAD~1"
balias grh "gitResetHardHEAD"

# raspi
# balias rasin-serial "screen /dev/cu.usbserial -s 115200"

# wakayama
# balias cdw "cd ~/Documents/wakayama/lecture"
# balias ssh-pattern-recognition "ssh -p 9022 -Y s236329@ccparallel-2.sys.wakayama-u.ac.jp"
# balias sftp-pattern-recognition "sftp -P 9022 s236329@ccparallel-2.sys.wakayama-u.ac.jp"
# balias sftp-web-design-exercise "sftp -P 60022 s236329@webdesign.center.wakayama-u.ac.jp"
# balias ssh-wakayama "ssh s236329@com.wakayama-u.ac.jp -p 9022 -i .ssh/id_ed25519"
# balias ssh-laboratory "ssh -p 9111 kuroki@133.42.149.186"
