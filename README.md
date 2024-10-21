# MicroK8s Installation Script

This script automates the installation of MicroK8s on Ubuntu version 22.04 or later. It also enables essential add-ons and starts the dashboard proxy for managing your Kubernetes cluster.

## Prerequisites

- Ubuntu 22.04 or later
- Root or sudo privileges

## Usage

1. **Clone the repository** or download the script to your local machine.
```
git clone https://github.com/v-i-k-a-s-1-7/Kubernetes-Installation.git
cd Kubernetes-Installation
```

2. **Make the Script Executable**:
   ```
   chmod +x install_kubernetes.sh
   ```
3. **Run the script:**
```
sudo ./install_kubernetes.sh
```
## Important Notes
- After the script has executed, a token will be generated for accessing the MicroK8s dashboard.
- You will see a message stating:
```
Dashboard will be available at <some url>
```
- Click on the URL provided in the message. If your browser shows a warning, click on "Advanced" and proceed to the address.
- You will be prompted to enter the token. Paste the generated token into the designated field to access the dashboard.

## Additional Information
This script enables the following MicroK8s add-ons:

- **Dashboard:** A web-based UI for managing Kubernetes.
- **DNS:** For service discovery within your cluster.
- **Registry:** A local container image registry.
- **Istio:** For managing service mesh capabilities.
Feel free to modify the script to include additional add-ons as needed.
## Author

- **Vikas Rajak**
- **Date**: 21/10/2024
