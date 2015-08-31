# Image Contents

At the time of writing, this Dockerfile results in an image with:

* Ubuntu 14.04.3 (Trusty)
* Erlang Solutions APT repository
* Erlang/OTP v18.0
* Elixir v1.0.5
* Hex v0.8.3
* Rebar 2.3.1

## Checking Versions

Want to check the current versions included in the latest image in light of future rebuilds?

* `docker run -it --rm shanesveller/elixir-lang apt-cache policy erlang-base elixir`
* `docker run -it --rm shanesveller/elixir-lang mix hex`
* `docker run -it --rm shanesveller/elixir-lang ~/.mix/rebar -V`

# Caveats

* Hex/Rebar are installed for the `root` user
* We probably shouldn't run Elixir apps as `root`, even in containers

# Alternative images

Not happy with the Dockerfile steps? Having compatibility problems? Try one of these alternatives:

* [nifty/elixir](https://registry.hub.docker.com/u/nifty/elixir/)
