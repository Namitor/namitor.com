require 'net/http'

class ApiController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:song_top_n]

  def index
  end

  def song_top_n
    response = Net::HTTP.get_response(URI.parse(URI.escape('http://180.76.179.18:2335/similar/song/' + params[:song][:name])))
    if response.code == '200'
      @json = response.body
    else
      @json = 'Not found.'
    end
    render 'result'
  end
end
