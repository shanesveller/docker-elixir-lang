# Image Contents

At the time of writing, this Dockerfile results in an image with:

* Alpine Linux 3.3
* Erlang/OTP v18.1
* Elixir v1.2.3
* Hex v0.10.4
* Rebar 3.0.0-beta-2

## Checking Versions

Want to check the current versions included in the latest image in light of future rebuilds?

* `docker run -it --rm shanesveller/elixir-lang apk info erlang`
* `docker run -it --rm shanesveller/elixir-lang elixir -v`
* `docker run -it --rm shanesveller/elixir-lang mix hex.info`
* `docker run -it --rm shanesveller/elixir-lang ~/.mix/rebar -V`

# Caveats

* Hex/Rebar are installed for the `root` user
* We probably shouldn't run Elixir apps as `root`, even in containers

# Alternative images

Not happy with the Dockerfile steps? Having compatibility problems? Try one of these alternatives:

* [nifty/elixir](https://registry.hub.docker.com/u/nifty/elixir/)
