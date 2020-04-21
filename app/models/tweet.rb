class Tweet
  include Mongoid::Document
  field :id_str, type: String
  field :source, type: String
  field :text, type: String
  field :created_at, type: Time
  field :retweet_count, type: Integer
  field :in_reply_to_user_id_str, type: Boolean
  field :favorite_count, type: Integer
  field :is_retweet, type: Boolean
end
