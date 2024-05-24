ARG NODE_VERSION=16.20.2

FROM node:${NODE_VERSION}-slim as base

ARG PORT=3000

ENV NODE_ENV=production

RUN yarn install

# WORKDIR /src

# COPY --link package.json package-lock.json ./
# RUN npm install --production=false

# COPY --link . .

# RUN npm run build
# RUN npm prune

# FROM base

# ENV PORT=$PORT

# COPY --from=build /src/.output /src/.output

# CMD [ "node", ".output/server/index.mjs" ]