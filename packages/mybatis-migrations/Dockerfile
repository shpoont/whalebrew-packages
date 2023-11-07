FROM openjdk:20-jdk

WORKDIR /workdir

LABEL io.whalebrew.name migrate
LABEL io.whalebrew.config.networks '["host"]'

# --- Prepare the image

# Upgrade system packages
RUN microdnf upgrade --assumeyes

# Set up common utilities
RUN microdnf install gettext unzip --assumeyes && microdnf clean all

# --- Install MyBatis
ENV MYBATIS_VERSION="3.3.11"
ENV MIGRATIONS_HOME="/opt/mybatis-migrations"

ADD https://github.com/mybatis/migrations/releases/download/mybatis-migrations-${MYBATIS_VERSION}/mybatis-migrations-${MYBATIS_VERSION}-bundle.zip .
RUN unzip mybatis-migrations-${MYBATIS_VERSION}-bundle.zip && rm mybatis-migrations-${MYBATIS_VERSION}-bundle.zip
RUN mv mybatis-migrations-${MYBATIS_VERSION} /opt/mybatis-migrations

# ---

ENTRYPOINT [ "/opt/mybatis-migrations/bin/migrate" ]
