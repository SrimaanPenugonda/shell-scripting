echo "Script Name:"$0
echo -e "First Name:\e[34m$1\e[0m"
echo -e "Last Name:\e[35m$2\e[0m"

case $1 in
    frontend)
      echo "Installing Frontend"
      ;;
    mongo)
      echo "Installing Mongo"
      ;;

esac
