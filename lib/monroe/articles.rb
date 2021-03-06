require 'pry'
module Monroe

  module Articles
    
    def self.congress_id(id)
      url = BASE_URI + "articles?congress_id=" + id + "&api_key=" + Monroe.key
      return Monroe.get(url)
    end

    def self.state(state)
      url = BASE_URI + "articles?state=" + state + "&api_key=" + Monroe.key
      return Monroe.get(url)
    end

    def self.name(name)
      first_name = name.split(' ')[0]
      last_name = name.split(' ')[1]
     
      url = BASE_URI + "articles?first_name=" + first_name + "&last_name=" + last_name + "&api_key=" + ::Monroe.key
      return Monroe.get(url)
    end

  end

end