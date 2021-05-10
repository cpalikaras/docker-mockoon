FROM node:14-alpine

ARG version=latest

RUN npm install -g @mockoon/cli@$version
COPY runner.sh mockoon-runner.sh

# Do not run as root.
RUN adduser --shell /bin/sh --disabled-password --gecos "" mockoon
RUN chown -R mockoon mockoon-runner.sh
USER mockoon

ENTRYPOINT ["sh", "mockoon-runner.sh"]
CMD docker run -d -p 3000:3000 mockoon/cli:latest -d https://raw.githubusercontent.com/mockoon/mock-samples/main/samples/generate-mock-data.json -i 0 -p 3000