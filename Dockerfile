FROM alpine:latest

RUN apk update && apk upgrade --available \
    && apk add wget python3-pip texlive-latex-base texlive-xetex texlive-lang-french texlive-latex-extra texlive-fonts-recommended pandoc xzdec \

# Copy the application in folder found in $PATH
COPY ./script.sh /usr/bin/

# Copy input/output folder
COPY output/ /output
COPY input/ /intput

# Make file executable
RUN chmod 755 /usr/bin/script.sh

ENTRYPOINT ["/usr/bin/script.sh"]