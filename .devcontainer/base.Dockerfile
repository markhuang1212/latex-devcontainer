ARG VARIANT=ubuntu
FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

LABEL org.opencontainers.image.source https://github.com/markhuang1212/latex-devcontainers

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends texlive-full
