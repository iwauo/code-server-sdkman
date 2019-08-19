FROM iwauo/code-server-sdkman:1.0.4

RUN ./install_node \
    v10.16.3

RUN ./install_sdk \
    java:8.0.222-zulu \
    gradle:5.6

RUN ./install_extension \
    redhat.java \
    vscjava.vscode-java-debug  \
    vscjava.vscode-java-test \
    vscjava.vscode-maven  \
    vscjava.vscode-java-dependency \
    vscjava.vscode-spring-boot-dashboard \
    Pivotal.vscode-spring-boot \
    dgileadi.java-decompiler

COPY --chown=2000:2000 settings.json /home/developer/.local/share/code-server/User/settings.json

ENTRYPOINT ["dumb-init", "code-server"]

