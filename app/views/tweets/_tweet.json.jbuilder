json.extract! tweet, :id, :id_str, :source, :text, :created_at, :retweet_count, :in_reply_to_user_id_str, :favorite_count, :is_retweet, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
