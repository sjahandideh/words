# Cheatsheet Phoenix

* creating a new app: `mix phoenix.new APP_NAME`
* show routes: `mix phoenix.routes`
* start server with iex and bring up observer: `iex -S mix phoenix.server` and then `iex> :observer.start`
*

# Pheonix framework

* [Endpoint](#endpoint)
* [Router](#router)

<a id='endpoint'></a>
# [Endpoint file](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/endpoint.ex)

* the entry point for a Phoenix app
* its a supervisor that starts the Cowboy webserver processes to listen for requests
* you can have an endpoint running on each port. they need to be added to [words.ex](https://github.com/sjahandideh/words/blob/master/lib/words.ex#L11) in the children list.
* endpoints are configured in [config/*.exs files](https://github.com/sjahandideh/words/tree/master/config)

<a id='router'></a>
# [Router](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/router.ex)

* we can have one/multiple routers in [web/router.ex](https://github.com/sjahandideh/words/blob/master/web/router.ex)
* each endpoint can have [one top-level router](https://github.com/sjahandideh/words/blob/master/lib/words/endpoint.ex#L38)
* on top of the file, it calls [router method on web/web.ex file](https://github.com/sjahandideh/words/blob/master/web/web.ex#L58). we can then change that method to perform operations on all routers at the same time without inheritance

## Macros that router function provides

* **[pipeline](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/router.ex#L154)**: run a list of plugs in a specific order for each part of the app. Ex. brower vs api pipeline
* **[scope](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/router.ex#L581)**: supplies a pipeline to a given url pattern and map their sub-urls to controllers and actions
* **[pipe_through](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/router.ex#L404)**: called inside a scope to specify a pipeline for that scope
* **[Routing DSL](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/router.ex#L484)**: resources, get, post, put, patch, delete
* **[forward](https://github.com/phoenixframework/phoenix/blob/master/lib/phoenix/router.ex#L658)**: send requests to the appropriate router. Also, Hex packages can provide Phoenix routers, making it easy to include routes in plugins
