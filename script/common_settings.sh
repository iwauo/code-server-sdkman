VERSION=1.0.1
CODE_SERVER_VERSION=1.868
PROJECT_NAME=iwauo
IMAGE_NAME=code-server-sdkman
REGISTRY=
#REGISTRY=gcr.io/
VSCODE_EXTENSIONS="shan.code-settings-sync \
  donjayamanne.githistory \
  streetsidesoftware.code-spell-checker \
  VisualStudioExptTeam.vscodeintellicode \
  redhat.vscode-yaml"
#VSCODE_EXTENSIONS="shan.code-settings-sync eamodio.gitlens"
SDKMAN_LIBS=
#SDKMAN_LIBS="java:8.0.212-zulu gradle:5.3.1"
TARGET=$REGISTRY$PROJECT_NAME/$IMAGE_NAME
CURRENT=$TARGET:$VERSION
LATEST=$TARGET:latest

