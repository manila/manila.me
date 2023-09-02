FROM node:lts-bookworm

WORKDIR /11ty

COPY . .

RUN npm install
RUN npx @11ty/eleventy

EXPOSE 8080

CMD ["npx", "@11ty/eleventy", "--serve"]
