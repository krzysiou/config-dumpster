function _peco_change_directory
  if [ (count $argv) ]
    peco --layout=bottom-up --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g'|read foo
  else
    peco --layout=bottom-up |perl -pe 's/([ ()])/\\\\$1/g'|read foo
  end
  if [ $foo ]
    builtin cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end

function peco_change_directory
  set directories */

  begin
    echo --
    if count $directories >/dev/null
      ls -ad $directories |perl -pe "s#^#$PWD/#"
    end
    echo  "-- CURRENT"

    echo $HOME/.config
    echo $HOME
    echo $HOME/Documents
    echo $HOME/Documents/projects
    echo "-- ANCHORS"

    ghq list -p
    echo "-- GIT"

    ls -ad $HOME/Documents/projects/current/*
    echo "-- LOCAL"
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end
