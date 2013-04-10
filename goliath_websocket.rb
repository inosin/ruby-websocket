#!/usr/bin/env ruby

require 'goliath'
require 'goliath/websocket'

class Websocket < Goliath::WebSocket

  def on_open(env)
    env.logger.info("WS OPEN")
  end

  def on_message(env, msg)
    env.logger.info("WS MESSAGE: #{msg}")
  end

  def on_close(env)
    env.logger.info("WS CLOSED")
  end

  def on_error(env, error)
    env.logger.error error
  end

  def response(env)
    super(env)
  end
end