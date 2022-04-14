FROM alpine:3.15

RUN apk add ansible=4.8.0-r0; \
	apk add --update --no-cache openssh sshpass=1.09-r0

WORKDIR /ansible

COPY ["./ansible.cfg", "./"]

ENTRYPOINT ["ansible-playbook"]