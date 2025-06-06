require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    # これにコントローラー名がつかないのは、特別なルート名だから。
    assert_response :success
    # ちゃんとページが返ってきているかを判断する
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    # タイトルがhomeとして表示されるか
  end
  
  test "should get home" do
    get static_pages_home_url
    # 「static_pages_home_url」の「static_pages」は、コントローラー名。
    # get "static_pages/home" → static_pages_home_url
    # root "static_pages#home" → root_urlとルーティングの定義の仕方で、変わる。
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end
