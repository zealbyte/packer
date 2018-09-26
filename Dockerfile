#
# Run bower with specific requirements
#
FROM alpine:3.7

RUN apk --no-cache add \
	tini curl git subversion openssh openssl mercurial bash nodejs nodejs-npm

# install bower and webpack
RUN npm install --global bower \
	&& npm install --global webpack \
	&& npm install --global webpack-cli

COPY docker-entrypoint.sh /usr/local/bin/

ENV NODE_ENV=dev
ENV PORT=4000
ENV HOME /app
WORKDIR /app
EXPOSE 4000
ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "npm" ]
