FROM openjdk:11.0.4
LABEL image=hpcsc/sonar-scanner-cli
LABEL version=0.0.1

ENV PATH="$PATH:/app/scanner/bin"
WORKDIR /app

ENTRYPOINT ["sonar-scanner"]

ENV SCANNER_VERSION=4.2.0.1873
RUN curl https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip -o sonar-scanner-cli.zip \
    && unzip sonar-scanner-cli.zip \
    && mv sonar-scanner-${SCANNER_VERSION}-linux scanner \
    && rm -f sonar-scanner-cli.zip

WORKDIR /app/source
