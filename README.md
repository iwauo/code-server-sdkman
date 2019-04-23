code-server-sdkman
===================

A Docker build file based on the offecial [code-server](https://github.com/codercom/code-server) image adding [sdkman](https://sdkman.io/), which enables to manage JDK based SDKs or tools from the code-server terminal:

![](./doc/img/sdkman-on-terminal.png)


Using pre-built images
-----------------------
An easy way to try this image is using the following pre-built images, which bundle some SDK libraries and companion extensions.

```console
$ docker run -it -p 8443:8443 -v "${PWD}:/home/developer/project:delegated" iwauo/code-server-sdkman-java:jdk8 --allow-http --no-auth
```


## [code-server-sdkman](https://cloud.docker.com/u/iwauo/repository/docker/iwauo/code-server-sdkman-java:latest)

### SDK_LIBS
 - N/A

### VSCODE_EXTENSIONS
  - [shan.code-settings-sync](https://marketplace.visualstudio.com/items?itemName=shan.code-settings-sync)
  - [donjayamanne.githistory](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
  - [streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=code-spell-checker)
  - [VisualStudioExptTeam.vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=vscodeintellicode)
  - [redhat.vscode-yaml](https://marketplace.visualstudio.com/items?itemName=vscode-yaml)

## [code-server-sdkman-java](https://cloud.docker.com/u/iwauo/repository/docker/iwauo/code-server-sdkman-java:jdk8)

### SDK
 - java:8.0.212-zulu
 - gradle:5.3.1

### VSCODE_EXTENSIONS
  - [redhat.java](https://marketplace.visualstudio.com/items?itemName=redhat.java)
  - [vscjava.vscode-java-debug](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-debug)
  - [vscjava.vscode-java-test](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test)
  - [vscjava.vscode-maven](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven)
  - [vscjava.vscode-java-dependency](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-dependency)
  - [vscjava.vscode-spring-boot-dashboard](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-spring-boot-dashboard)
  - [Pivotal.vscode-spring-boot](https://marketplace.visualstudio.com/items?itemName=Pivotal.vscode-spring-boot)
  - [shengchen.vscode-checkstyle](https://marketplace.visualstudio.com/items?itemName=shengchen.vscode-checkstyle)
  - [dgileadi.java-decompiler](https://marketplace.visualstudio.com/items?itemName=dgileadi.java-decompiler)
  - [shan.code-settings-sync](https://marketplace.visualstudio.com/items?itemName=shan.code-settings-sync)
  - [donjayamanne.githistory](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
  - [streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=code-spell-checker)
  - [VisualStudioExptTeam.vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=vscodeintellicode)
  - [redhat.vscode-yaml](https://marketplace.visualstudio.com/items?itemName=vscode-yaml)


## [code-server-sdkman-kotlin](https://cloud.docker.com/u/iwauo/repository/docker/iwauo/code-server-sdkman-kotlin)

### SDK
 - java:8.0.212-zulu
 - gradle:5.3.1
 - kotlin:1.3.30

### VSCODE_EXTENSIONS
  - [fwcd.kotlin](https://marketplace.visualstudio.com/items?itemName=fwcd.kotlin)
  - [redhat.java](https://marketplace.visualstudio.com/items?itemName=redhat.java)
  - [vscjava.vscode-java-debug](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-debug)
  - [vscjava.vscode-java-test](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-test)
  - [vscjava.vscode-maven](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven)
  - [vscjava.vscode-java-dependency](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-dependency)
  - [vscjava.vscode-spring-boot-dashboard](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-spring-boot-dashboard)
  - [Pivotal.vscode-spring-boot](https://marketplace.visualstudio.com/items?itemName=Pivotal.vscode-spring-boot)
  - [shengchen.vscode-checkstyle](https://marketplace.visualstudio.com/items?itemName=shengchen.vscode-checkstyle)
  - [dgileadi.java-decompiler](https://marketplace.visualstudio.com/items?itemName=dgileadi.java-decompiler)
  - [shan.code-settings-sync](https://marketplace.visualstudio.com/items?itemName=shan.code-settings-sync)
  - [donjayamanne.githistory](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
  - [streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=code-spell-checker)
  - [VisualStudioExptTeam.vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=vscodeintellicode)
  - [redhat.vscode-yaml](https://marketplace.visualstudio.com/items?itemName=vscode-yaml)


Customizing the image using build-time arguments
------------------------------------------------
You can customize the image with the following arguments:

**CODE_SERVER_VERSION**
: The version number of the base image.
  Default: `latest`

**SDKMAN_LIBS**
: A whitespace separated list of the preinstalled SDK libraries.
  Each entries is written in the following form: `"library_name":"library_version"`

**VSCODE_EXTENSIONS**
: A whitespace separated list of the vscode extensions which are bundled the image.
  Each entries is written in the following form: **"provider:extension_name"**
  (This is shown in the top of the extension's page)

  ![](./doc/img/extension_id.png)

The following script is an example usage of these arugments:

```bash
docker build ../image_context \
  --build-arg CODE_SERVER_VERSION="1.868" \
  --build-arg SDKMAN_LIBS="java:8.0.212-zulu gradle:5.3.1" \
  --build-arg VSCODE_EXTENSIONS="redhat.java vscjava.vscode-java-debug" \
  -t custom-code-server:latest
```

Customizing the image by Dockerfile
------------------------------------------------
The following example shows how to customize the image using Dockerfile.

```Dockerfile
FROM iwauo/code-server-sdkman:latest

RUN ./install_sdk \
  java:8.0.212-zulu \
  gradle:5.3.1 \
  kotlin:1.3.30

RUN ./install_extension \
  redhat.java \
  vscjava.vscode-java-debug \
  vscjava.vscode-java-test \
  vscjava.vscode-maven \
  redhat.vscode-yaml

ENTRYPOINT ["dumb-init", "code-server"]
```

