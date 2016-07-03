# RabbitmqTutorials

A quick run down of the tutorials at https://www.rabbitmq.com/tutorials/tutorial-two-elixir.html

## Installation
Make sure you have docker running and docker-compose installed.

```
docker-compose up -d
mix deps.get
mix deps.compile

```

Now open two terminals... I prefer tmux with two panes but whatever
works.

In one run:
```
mix run receive.exs

```

And in the other run

```
mix run send.exs
mix run send.exs "Another message!"


```
