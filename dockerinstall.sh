DIR="docker-install"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  git pull https://github.com/hanumanth9/docker-install.git
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} not found. Can not continue."
  git pull https://github.com/hanumanth9/docker-install.git
  cd docker-install
  sudo docker-compose up -d
fi
