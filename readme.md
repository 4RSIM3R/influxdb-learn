### Influx DB Learning resource

So this is collection of Influx DB Learning resource

### How to spin TIG Stack

TIG (Telegraf, Influx, Grafana) is a set of tools to help us, ingest, store, analyze and visualize time series data.
You can use `docker` and `docker-compose` to spin up the tools without headache, just follow this step :

- start your `docker-dekstop`
- open the `docker` folder inside this folder via `cmd` or `terminal`
- and then type `docker-compose up -d` to start
- to verify `docker container` was success type `docker ps -a` ensure there is 3 `container` with status UP / RUNNING not EXITED
- and then goto `localhost:8086` and for login username : `root` and password : `SuhaT2023`
- and enjoy your query, if you want to stop the application you can open the `docker` folder inside this folder via `cmd` or `terminal`
- and then type `docker-compose down` and `docker container prune` and ensure the container already stop with `docker ps -a`

### Glosarium From RDBMS to Influx DB

- Database : Buckets
- Tables : Measurement
- Columns : Tags / Field
- Rows : Point
- Row-oriented : Column Oriented 