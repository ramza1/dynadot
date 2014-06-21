module Dynadot
 class Api3
  include HTTParty
  def initialize
   @api_key = DYNADOT_KEY if defined? DYNADOT_KEY
  end
  base_uri "https://api.dynadot.com/api3.xml?key=#{@api_key}"

  def search_domain(params)
     self.class.get("&command=search&domain0=#{params}&domain1=#{params}.net&domain2=#{params}.ng&domain3=#{params}.me")
  end
 end


end
