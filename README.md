code-server-sdkman
===================

A Docker build file based on the offecial [code-server](https://github.com/codercom/code-server) image adding [sdkman](https://sdkman.io/), which enables to manage JDK based SDKs or tools from the code-server terminal:

![](./doc/img/sdkman-on-terminal.png)


Build-time arguments
-------------------------------
You can customize the image with the following arguments:

**CODE_SERVER_VERSION**
: The version number of the base image

**SDKMAN_LIBS**
: A whitespace separated list of the preinstalled SDK libraries. Each entries is written in the following form: **"library_name":"library_version"**

**VSCODE_EXTENSIONS**
: A whitespace separated list of the vscode extensions which are bundled the image. Each entries is written in the following form: **"provider:extension_name"** (This is shown in the top of the extension's page)
  ![](./doc/img/extension_id.png)

The following script is an example usage of these arugments:

```bash
docker build ../image_context \
  --build-arg CODE_SERVER_VERSION="1.868" \
  --build-arg SDKMAN_LIBS="java:8.0.212-zulu gradle:5.3.1" \
  --build-arg VSCODE_EXTENSIONS="redhat.java vscjava.vscode-java-debug" \
  -t custom-code-server:latest
```

