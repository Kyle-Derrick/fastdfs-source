function make_and_install() {
  cd fastcommon
  sh ./make.sh
  sh ./make.sh install
  cd ..

  cd serverframe
  sh ./make.sh
  sh ./make.sh install
  cd ..

#  cd fastdfs
#  sh ./make.sh
#  sh ./make.sh install
#  cd ..
}

function clean() {
  cd fastcommon
  sh ./make.sh clean
  cd ..

  cd serverframe
  sh ./make.sh clean
  cd ..

#  cd fastdfs
#  sh ./make.sh clean
#  cd ..
}

option=$1
if [ ! $option ]; then
    option="install"
fi

case "$option" in
install)
  echo ">> make and install"
  make_and_install
  ;;
clean)
  echo ">> clean"
  clean
  ;;
*)
  echo "Usage: make.sh [install|clean]"
  echo "option: [$option] not support"
esac