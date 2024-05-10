# frozen_string_literal: true

class Website::PostPreview::Component < ViewComponent::Base
  with_collection_parameter :post

  def initialize(post:, tag: "h2")
    @post = post
    @tag = tag
  end

  def stripped_content
    Nokogiri::HTML.parse(simple_format(@post.content)).css('p').first.text
  end
end
