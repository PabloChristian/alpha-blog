require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  test "article should be valid" do
    @article = Article.new(title: "test")
    assert @article.valid?
  end

end
