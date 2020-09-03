balias python "python3"
balias activate-python "source ~/programming/python/env/bin/activate.fish"
balias viscr "vi ./XXXXX.viscr && rm ./XXXXX.viscr"
balias luajitlatex "luajittex --fmt=luajitlatex.fmt"
balias opensc "open ~/Dropbox/スクリーンショット/"
balias ... "cd ../../"
balias .... "cd ../../../"
balias sl "ls"
balias l "ls"
balias s "ls"
balias cpuTemp "osx-cpu-temp"
balias svgoKeepViewBox "svgo --disable=removeViewBox"
balias svgoKeepInfo "svgo --config=./.svgo.yml"

# twogate
balias tgstg "env BUILD_ENV=staging npm run serve" # HOUSEGATE
balias tgstg2 "npm run ionic:serve:stg" # audiofuide
balias tgstg3 "env BUILD_ENV=staging npm run start" #J:COM
balias tgdev3 "env BUILD_ENV=development npm run start" #J:COM
balias tgbuild "env BUILD_ENV=staging npm run build && ionic cordova build ios"
balias tgbuild2 "npm run ionic:build:ios -- --configuration=stg"

balias metya-tuyo-ios-build "ionic cordova build ios --prod --release --no-interactive --above"

# applications
balias pycharm "open -a /Applications/PyCharm.app"
balias webstorm "open -a /Applications/WebStorm.app"
balias xcode "open -a xcode.app"

# git
balias gs "git status"
balias gf "git fetch"
balias gpl "git pull origin"
balias gd "git diff"
balias ga "git add"
balias gc "git commit -m"
balias gps "git push origin"
balias gcd "git checkout"
balias gback "git reset HEAD~1"

# raspi
balias rasin-serial "screen /dev/cu.usbserial -s 115200"

# wakayama
balias cdw "cd ~/Documents/wakayama/lecture"
balias ssh-pattern-recognition "ssh -p 9022 -Y s236329@ccparallel-2.sys.wakayama-u.ac.jp"
balias sftp-pattern-recognition "sftp -P 9022 s236329@ccparallel-2.sys.wakayama-u.ac.jp"
balias sftp-web-design-exercise "sftp -P 60022 s236329@webdesign.center.wakayama-u.ac.jp"
