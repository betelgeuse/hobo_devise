require 'devise'
require 'omniauth/oauth'

module HoboDevise
  def self.devise_oauth2_facebook(model)
    model.class_eval do
      devise :omniauthable
      fields do
        facebook_uid    :string
        facebook_token  :string
      end
    end
  end
end
