FROM cypress/included:8.3.0

WORKDIR /e2e

COPY ./e2e/package.json /e2e
COPY ./e2e/package-lock.json /e2e

RUN npm ci
RUN cypress verify

COPY ./e2e/ /e2e

ENTRYPOINT ["cypress", "run"]