#!/bin/bash


  #############################################################################
  ##         This script requires Ubuntu version 22.04 or later              ##
  #############################################################################
  #############################################################################
  ##         This script must be run as root or with sudo command            ##
  ##  before running the script switch to root user using <su> or <sudo su>  ##
  #############################################################################

  #############################################################################
  ##         This script microK8S                                            ##
  ##         Author: Vikas Rajak                                             ##
  ##         Date: 21/10/2024                                                ##
  #############################################################################


  echo -e"

██╗   ██╗██╗██╗  ██╗ █████╗ ███████╗
██║   ██║██║██║ ██╔╝██╔══██╗██╔════╝
██║   ██║██║█████╔╝ ███████║███████╗
╚██╗ ██╔╝██║██╔═██╗ ██╔══██║╚════██║
 ╚████╔╝ ██║██║  ██╗██║  ██║███████║
  ╚═══╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

"

# Install MicroK8s
echo "Installing MicroK8s..."
sudo snap install microk8s --classic

# Check MicroK8s status and wait until it's ready
echo "Waiting for MicroK8s to be ready..."
if ! sudo microk8s status --wait-ready; then
    echo "MicroK8s did not start successfully. Please check the logs."
    exit 1
fi

# Enable necessary MicroK8s add-ons
echo "Enabling add-ons..."
for addon in dashboard dns registry istio; do
    echo "Enabling $addon..."
    sudo microk8s enable "$addon"
done

# Check the status of all resources in all namespaces
echo "Getting all resources in all namespaces..."
sudo microk8s kubectl get all --all-namespaces

# Start the dashboard proxy
echo "Starting dashboard proxy..."
sudo microk8s dashboard-proxy


