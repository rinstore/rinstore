class LocalesMiddleware
  def initialize app
    @app = app
  end

  def call env
    binding.irb
    # do something...
  end
end
