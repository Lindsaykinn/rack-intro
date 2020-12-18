require 'rack'

class MyServer

  def call(env)
    # Something that responds to call, that's what Rack demands
    return [200, {'Content-Type' => 'text/html'}, pretty_response ]
  end

  def pretty_response
    (Time.now.to_i % 2).zero? ? ["<em>Hello</>"] : ["<strong>Hello</strong>"]
  end
end

run MyServer.new