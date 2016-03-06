require './ip'
require 'test/unit'
require 'rack/test'

class IpTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Ip.new
  end

  def test_redirect_logged_in_users_to_dashboard
    get "/"

    assert last_response.ok?
  end
end
