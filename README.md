## Development requirements
The app uses Rails for the application, WEBrick as the server and Postgres as the database.

Install rails in a Unix/Mac environment by getting Ruby using the native package manager and then getting Rails. On Macs, just use `brew`; on Ubuntu `apt-get` should do fine.

Start postgres database locally using,
run ```pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start``` You will need to start the database locally to be able to talk to it in the app.

Rails uses a lot of ready-made solutions to do simple things, and they are packaged in a `gem`. We make use of a couple of these gems to do things like authenticating users using Google. More of this below.

## Setting up Authorization
* Authorization is via Google using the [omniauth-google-oauth2 gem](https://github.com/zquestz/omniauth-google-oauth2).
* Follow the gem instructions
* Make sure to set GOOGLE_CLIENT_ID="your id" and GOOGLE_CLIENT_SECRET="your secret" as environment variables before starting the server. Contact @miranmirza or @cyrpusad for the keys.

## Local setup
On your Linux or Mac run the following:
```git clone git@github.com:miranmirza/screening-webapp.git``` - checks out the latest version of the screening app on your machine

```bundle install``` - installs and updates all your packages (gems) - you need to have setup Ruby, Rails, Postgres prior to this

```bundle exec rake db:migrate``` after having started Postgres (see instructions above)

Google authentication using keys set in environment:

```export GOOGLE_CLIENT_ID=<google_client_id>```

```export GOOGLE_CLIENT_SECRET=<google_client_secret>```

```bundle exec rails s``` - start Rails server locally

Go to ```localhost:3000``` in your web browser to access the screening app
