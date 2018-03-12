class Application


  def call(env)
    resp = Rack::Response.new
    d = Time.now
    # d = d.strftime("%k")
    if d.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
