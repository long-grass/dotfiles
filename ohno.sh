
declare -a SPACES
SPACES[1]='Chrome'
SPACES[2]='Spotify'
SPACES[3]='Mail'
SPACES[4]='iTerm'
SPACES[5]='Slack'
SPACES[6]='Messages'

space="${SPACES[$1]}"

for app in $space ; do
  osascript -i <<-EOF
    tell application "$app"
      activate
    end tell
EOF
done
