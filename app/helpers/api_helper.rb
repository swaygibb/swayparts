require 'net/http'
require 'json'

module ApiHelper
    def getParts()
        url = "#{ENV['API_URL']}/parts"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        return JSON.parse(response, object_class: OpenStruct)
    end

    def getPart(id)
        url = "#{ENV['API_URL']}/parts/#{id}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        return JSON.parse(response, object_class: OpenStruct)
    end
end
