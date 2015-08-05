## Development
Start postgres database locally using,
run ```pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start```

## Setting up Authorization
* Authorization is via Google using the [omniauth-google-oauth2 gem](https://github.com/zquestz/omniauth-google-oauth2).
* Follow the gem instructions
* Make sure to add GOOGLE_CLIENT_ID: "your id here" and GOOGLE_CLIENT_SECRET: "your secret here" to the application.yml file.
