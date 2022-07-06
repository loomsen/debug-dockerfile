FROM ksandermann/cloud-toolbox

RUN apt get install \
    mysql-client \
    postgresql-client


ENTRYPOINT bash