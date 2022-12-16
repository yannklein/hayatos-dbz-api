class PagesController < ApplicationController
  def home
    @url_prefix = Rails.env.development? ? 'localhost:3000/api/v1' : 'hayatos-dbz-api.herokuapp.com/api/v1'
  end
end
