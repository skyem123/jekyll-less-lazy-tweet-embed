Jekyll (Slightly) Less Lazy Tweet Embedding Plugin
==================================================

Simply embed tweets in Jekyll posts with liquid tags, which seems to work.

## Notes
This uses a liquid tag called `llazy_embedtweet`, if you come up with a better one please tell me. I was tired when I named it.

## Usage
Put the `less_lazy_tweet_embed.rb` file in the `_plugins` folder of the Jekyll site (basically in the same folder that `_posts` is in),
but make sure that plugins are enabled! ([so no using this with GitHub pages...](http://jekyllrb.com/docs/plugins/))

Then to embed a tweet, use the tags.

For example: `{% qembed_twitter https://twitter.com/skyem123/status/685987008553050113 %}`, will embed the tweet https://twitter.com/skyem123/status/685987008553050113 inside the post.

## Licence
This is under the ISC (similar to the 2-clause BSD) licence, but is based off of code under the MIT licence, look in `LICENCE.txt` for details.
