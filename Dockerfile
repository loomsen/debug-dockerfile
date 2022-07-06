FROM ksandermann/cloud-toolbox

RUN apt-get install -yq \
    mysql-client \
    postgresql-client


ENTRYPOINT bash