require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get api_v1_articles_url
    assert_response :success
  end

  test "should get new" do
    # binding.pry
    get new_api_v1_article_url(format: :json)
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post api_v1_articles_url(format: :json), params: { article: { content: @article.content, slug: @article.slug, title: @article.title } }
    end

    assert_redirected_to post api_v1_articles_url
  end

  test "should show article" do
    get api_v1_articles_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_article_url(@article, format: :json)
    assert_response :success
  end

  test "should update article" do
    get edit_api_v1_article_url(@article, format: :json), params: { article: { content: @article.content, slug: @article.slug, title: @article.title } }
    # assert_redirected_to edit_api_v1_article_url
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete api_v1_article_path(@article)
    end

    assert_redirected_to api_v1_articles_url
  end
end
