require "open-uri"
require "json"

# convert tweet url to embedding html
def embedding_tweet(content)
  embedded_content = content
  content.scan(/(https?:\/\/twitter\.com\/[a-zA-Z0-9_]+\/status\/([0-9]+)\/?)/).each do |url, id|
    tweet_json = open("https://api.twitter.com/1/statuses/oembed.json?id=#{id}").read
    tweet_html = JSON.parse(tweet_json, { :symbolize_names => true })[:html]
    embedded_content = embedded_content.gsub(/#{url}/, tweet_html)
  end
  embedded_content
end

module Jekyll  
  class EmbedTweetTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @link = text
    end
    
    def render(context)
      embedding_tweet(@link)
    end
  end
end

Liquid::Template.register_tag('llazy_embedtweet', Jekyll::EmbedTweetTag)
