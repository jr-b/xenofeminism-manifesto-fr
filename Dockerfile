FROM ubuntu:latest

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update && apt-get upgrade -y \
    && apt-get install texlive-latex-base texlive-xetex texlive-lang-french texlive-latex-extra texlive-fonts-recommended xzdec -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT [ "/bin/sh", "-c", "xelatex -shell-escape -output-directory=out main.tex"]