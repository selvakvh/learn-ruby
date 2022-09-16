require_relative 'test_helper'

class PalindromAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def base_title
    "Ruby Sample App"
  end

  def test_index
    get '/'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal "#{base_title} | Home", title_content
    assert doc(last_response).at_css('nav')

  end

  def test_about
    get '/about'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal "#{base_title} | About", title_content
    assert doc(last_response).at_css('nav')

  end

  def test_palindrome
    get '/palindrome'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal "#{base_title} | Palindrom Detector", title_content
    assert doc(last_response).at_css('nav')

  end
end
