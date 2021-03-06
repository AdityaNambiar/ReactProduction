# Install all packages essential for setting up node environment in Jenkins container:

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm --version

# Install node using nvm:
nvm install 14
# Check if it's installed or not:
node --version
npm --version
# Setup the node_modules directory:
npm i
# Start production build:
npm run build