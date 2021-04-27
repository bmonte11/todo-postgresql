FROM postgres:latest
ENV POSTGRES_PASSWORD=secret
ENV POSTGRES_USER=username
ENV POSTGRES_DB=database
COPY create_fixtures.sql /docker-entrypoint-initdb.d/create_fixtures.sql
RUN python3 app.py db init && python3 app.py db migrate && python3 app.py db upgrade