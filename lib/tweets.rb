require_relative 'monroe'

module Monroe

  class Tweets
    
    def congressional_id(id)
      url = BASE_URI + "tweets?congress_id=" + id + "&api_key=" + Monroe.key
      return JSON.parse(open(url.to_s).read)
    end

    def state(state)
      url = BASE_URI + "tweets?state=" + state + "&api_key=" + Monroe.key
      return JSON.parse(open(url.to_s).read)
    end

    def name(name)
      first_name = name.split(' ')[0]
      last_name = name.split(' ')[1]
      url = BASE_URI + "tweets?first_name=" + first_name + "&last_name" + last_name + "&api_key=" + Monroe.key
      return JSON.parse(open(url.to_s).read)
    end
  
  end

end