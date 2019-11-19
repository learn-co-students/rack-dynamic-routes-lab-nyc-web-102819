class Application
 
    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
   
      if req.path=="/items"
        if @@item.include?(req)
        resp.write @@item
      else
        resp.write "Route not found"
        resp.status = 404
      end
   
      resp.finish
    end
  end