FROM alpine:edge
RUN apk update
RUN apk add bind-tools bash
CMD ["bash", "-c", "echo Your Public IP: $(dig +short myip.opendns.com @resolver1.opendns.com)"]
