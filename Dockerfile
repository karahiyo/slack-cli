FROM alpine:3.14

RUN apk update \
  && apk --no-cache add curl bash jq
RUN curl https://raw.githubusercontent.com/rockymadden/slack-cli/v0.18.0/src/slack -o /usr/local/bin/slack \
  && chmod +x /usr/local/bin/slack
