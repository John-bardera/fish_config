# # twogate
# balias metya-tuyo-ios-build "ionic cordova build ios --prod --release --no-interactive --above"

# ## HOUSEGATE
# function hgBuildStg
#   set _command "export BUILD_ENV=staging && npm run build && npx cap copy && npx cap open $argv[1]"
#   bash -c $_command
# end
# function hgBuildProd
#   set _command "export BUILD_ENV=production && npm run build && npx cap copy && npx cap open $argv[1]"
#   bash -c $_command
# end
# function hgBuildProdProd
#   set _command "export BUILD_ENV=production && npm run build:prod && npx cap copy && npx cap open $argv[1]"
#   bash -c $_command
# end

# balias hgDevStg "bash -c 'export BUILD_ENV=staging && npm run dev'"
# balias hgDevProd "bash -c 'export BUILD_ENV=production && npm run dev'"

# balias svgoKeepViewBox "svgo --disable=removeViewBox"
# balias svgoKeepInfo "svgo --config=/Users/john/.config/fish/self_made/.svgo.yml"
