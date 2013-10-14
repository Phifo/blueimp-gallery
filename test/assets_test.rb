require 'test_helper'

class AssetsTest < ActionDispatch::IntegrationTest
  test "engine is loaded" do
    assert_equal ::Rails::Engine, Blueimp::Gallery::Engine.superclass
  end

  test 'has javascripts assets' do
    get 'assets/blueimp-gallery-all.js'
    assert_response :success
    get 'assets/blueimp-gallery-fullscreen.js'
    assert_response :success
    get 'assets/blueimp-gallery-indicator.js'
    assert_response :success
    get 'assets/blueimp-gallery-video.js'
    assert_response :success
    get 'assets/blueimp-gallery.js'
    assert_response :success
    get 'assets/blueimp-helper.js'
    assert_response :success
    get 'assets/jquery.blueimp-gallery.js'
    assert_response :success
    get 'assets/blueimp-gallery-youtube.js'
    assert_response :success
    get 'assets/blueimp-gallery-vimeo.js'
    assert_response :success
  end

  test 'has stylesheets assets' do
    get 'assets/blueimp-gallery-all.css'
    assert_response :success
    get 'assets/blueimp-gallery-indicator.css'
    assert_response :success
    get 'assets/blueimp-gallery-video.css'
    assert_response :success
    get 'assets/blueimp-gallery.css'
    assert_response :success
  end

  test 'has images assets' do
    get 'assets/error.png'
    assert_response :success
    get 'assets/error.svg'
    assert_response :success
    get 'assets/loading.gif'
    assert_response :success
    get 'assets/play-pause.png'
    assert_response :success
    get 'assets/play-pause.svg'
    assert_response :success
    get 'assets/video-play.png'
    assert_response :success
    get 'assets/video-play.svg'
    assert_response :success
  end

  test 'stylesheets have the correct paths' do
    get "/assets/blueimp-gallery.css"
    assert_no_match "../img/",  response.body

    get "/assets/blueimp-gallery-indicator.css"
    assert_no_match "../img/",  response.body

    get "/assets/blueimp-gallery-video.css"
    assert_no_match "../img/",  response.body    
  end
end
