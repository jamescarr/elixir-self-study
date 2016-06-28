{:ok, connection} = AMQP.Connection.open host: "dockerhost"
{:ok, channel} = AMQP.Channel.open(connection)

AMQP.Queue.declare(channel, "hello")

message =
  case System.argv do
    []    -> "Hello World!"
    words -> Enum.join(words, " ")
  end

AMQP.Basic.publish(channel, "", "hello", message, persistent: true)

IO.puts " [x] Sent '#{message}!'"
AMQP.Connection.close(connection)

