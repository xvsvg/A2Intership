FROM mcr.microsoft.com/mssql/server:latest

USER root
WORKDIR /usr/src/app

COPY --chown=root . /usr/src/app

RUN chmod +x /usr/src/app/runinit.sh
RUN chmod +x /usr/src/app/entrypoint.sh
             
ARG SA_PASSWORD='Password1234'
ENV SA_PASSWORD=$SA_PASSWORD
ENV ACCEPT_EULA Y
ENV MSSQL_PID Express

EXPOSE 1433

ENTRYPOINT ["bash", "./entrypoint.sh"]