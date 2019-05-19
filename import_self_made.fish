set SELF_MADE_PATH $HOME/.config/fish/self_made

for file in (ls $SELF_MADE_PATH)
  source $SELF_MADE_PATH/$file
end
