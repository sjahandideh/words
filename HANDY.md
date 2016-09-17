# Cheatsheet Phoenix

* creating a new app: `mix phoenix.new APP_NAME`
* show routes: `mix phoenix.routes`
* start server with iex and bring up observer: `iex -S mix phoenix.server` and then `iex> :observer.start`
*

# [Endpoint file](https://www.learnphoenix.tv/episodes/endpoints)

* the entry point for a Phoenix app
* its a supervisor that starts the Cowboy webserver processes to listen for requests
* you can have an endpoint running on each port. they need to be added to [words.ex](https://github.com/sjahandideh/words/blob/master/lib/words.ex#L11) in the children list.
* endpoints are configured in [config/*.exs files](https://github.com/sjahandideh/words/tree/master/config)

# [Router](https://www.learnphoenix.tv/episodes/routing)
* we can have one/multiple routers in web/router.ex
* on top of the file, it calls router method on web/web.ex file. we can then change that method to perform operations on all routers at the same time without inheritance
