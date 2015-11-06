require 'sinatra/base'

module Sinatra
  module UserHelpers
    def gravatar_url(user)
      hash = Digest::MD5.hexdigest(user.email)
      return "http://www.gravatar.com/avatar/#{hash}"
    end
  end
end
