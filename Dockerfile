FROM alpine:3.9

# Label
LABEL "com.github.actions.name"="ssh deployment"
LABEL "com.github.actions.description"="For deploying code to a webserver over ssh"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="black"
LABEL "repository"="http://github.com/zaporylie/ssh-deployment"
LABEL "homepage"="https://github.com/zaporylie/ssh-deployment"
LABEL "maintainer"="zaporylie <jakub@piaseccy.pl>"

RUN apk update && apk add openssh-client bash

# Copy entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
