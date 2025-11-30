#Postinstall script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
cd "$SCRIPT_DIR"
sudo pacman -Syu
# Install core packages
./apps/core_apps/core_apps_install.sh
./apps/dev_apps/dev_apps_install.sh
./apps/common_apps/common_apps_install.sh


