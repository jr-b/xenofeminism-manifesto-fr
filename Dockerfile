FROM ubuntu:latest

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update && apt-get upgrade -y \
    && apt-get install python3-pip texlive-latex-base texlive-xetex texlive-lang-french texlive-latex-extra texlive-fonts-recommended pandoc xzdec -y \
    && rm -rf /var/lib/apt/lists/*

# Copy the application in folder found in $PATH
COPY ./script.sh /usr/bin/

# Make file executable
RUN chmod 755 /usr/bin/script.sh

ENTRYPOINT ["/usr/bin/script.sh"]