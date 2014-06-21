module Dynadot
 class Api3
  include HTTParty
  base_uri "https://api.dynadot.com"

  #DYNADOT_KEY = "test" unless defined? DYNADOT_KEY
  def initialize
    @auth = {:key => DYNADOT_KEY}
  end

  def api(cmd, params, args={})
    query = { :key => @auth[:username],
              :command => cmd,
              :domain0 => params,
    }

    options = {}
    query.merge!(args)

    a = options.merge!({ :query => query, :basic_auth => @auth })
    result = self.class.get('/api3.xml', options)
    puts result
    result = result.to_hash['dynadotresult']['data']
  end


  def self.search_domain(params)
     test_basic = Api3.new
     basic_info = {
         domain1:  "Mydomain.net"
     }
    test_basic.api("search", "mydomain.com", )
  end
 end


end
