module GetHead
  class Request
    def initialize(app)
      @app = app
    end

    def call(env)
      env['rack.methodoverride.original_method'] = env['REQUEST_METHOD']
      @app.call(env)
    end
  end
end
