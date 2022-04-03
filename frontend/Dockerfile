FROM node:17-alpine as build-stage
WORKDIR /src
COPY . .
RUN npm install
RUN npm run build

# Switching to alpine to get rid of node dependencies.
# Thus helps decrease image size.
FROM alpine
WORKDIR /src
COPY --from=build-stage /src/build ./build

# The production build is now stored in the image under /src/build.
# You can now serve the build by mounting the directory to any volume.
