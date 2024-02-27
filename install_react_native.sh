#!/bin/bash

update_upgrade() {
    sudo apt update
    sudo apt upgrade -y
}
# Function to install Node.js and npm
#install_node() {
 #   sudo apt update
  #  sudo apt install -y nodejs npm
#}

# Function to install React Native CLI
install_react_native_cli() {
    sudo npm install -g react-native-cli
}

# Function to install JDK (Java Development Kit)
install_jdk() {
    sudo apt install -y openjdk-8-jdk
}

# Function to install Android Studio
install_android_studio() {
    # Download and install Android Studio
    # Make sure to replace the URL with the latest version if necessary
    wget -O android-studio.tar.gz https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2020.3.1.23/android-studio-2020.3.1.23-linux.tar.gz
    sudo tar -xzf android-studio.tar.gz -C /opt/
    sudo /opt/android-studio/bin/studio.sh

    # Clean up downloaded tarball
    rm android-studio.tar.gz
}

# Function to configure environment variables
configure_env_variables() {
    echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
    echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> ~/.bashrc
    echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
    echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc
    source ~/.bashrc
}

# Function to install Watchman
install_watchman() {
    sudo apt install -y watchman
}

# Main function to execute installation steps
main() {
    #install_node
    update_upgrade
    install_react_native_cli
    install_jdk
    install_android_studio
    configure_env_variables
    install_watchman
}

# Execute main function
main
