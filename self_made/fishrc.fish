function fishrc
  set -g FISHRC_USAGE 'Usage:  fishrc [-s] [-l] [-h] [-e file_name] [-c file_name]\n\t -s Source\n\t -l ls\n\t -h Help\n\t -e Edit imported file\n\t -c Cut file'
  set -g SELF_MADE_PATH $HOME/.config/fish/self_made

  function fishrc1
    switch $argv[1]
    case -s
      source $HOME/.config/fish/config.fish && echo update!
    case -l
      ls -al $SELF_MADE_PATH
    case '*'
      fishrc_other $argv
    end
  end

  function fishrc2
    switch $argv[1]
    case -e
      vi $SELF_MADE_PATH/$argv[2] && source $HOME/.config/fish/config.fish && echo update!
    case -c
      cat $SELF_MADE_PATH/$argv[2]
    case '*'
      fishrc_other
    end
  end

  function fishrc_other
    if not test (count $argv) -eq 0
      switch $argv[1]
      case -e -c
        echo "no such file: $argv[2]"
      case -h
      case '*'
        echo "no such option"
      end
    end
    echo -e $FISHRC_USAGE
  end


  if test (count $argv) -eq 0
    vi $HOME/.config/fish/config.fish && source $HOME/.config/fish/config.fish && echo update!
  else if test (count $argv) -eq 1
    fishrc1 $argv[1]
  else if test (count $argv) -eq 2
    if test -e $SELF_MADE_PATH/$argv[2].fish
      set FISHRC_TARGET $argv[2].fish
      fishrc2 $argv[1] $FISHRC_TARGET
    else if test -e $SELF_MADE_PATH/$argv[2]
      set FISHRC_TARGET $argv[2]
      fishrc2 $argv[1] $FISHRC_TARGET
    else
      fishrc_other $argv
    end
  else
    fishrc_other
  end

  functions -e fishrc1
  functions -e fishrc2
  functions -e fishrc_other
  set -e FISHRC_USAGE
  set -e SELF_MADE_PATH
end
