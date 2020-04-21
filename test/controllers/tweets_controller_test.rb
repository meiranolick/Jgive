require 'test_helper'

class TweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet = tweets(:one)
  end

  test "should get index" do
    get tweets_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_url
    assert_response :success
  end

  test "should create tweet" do
    assert_difference('Tweet.count') do
      post tweets_url, params: { tweet: { created_at: @tweet.created_at, favorite_count: @tweet.favorite_count, id_str: @tweet.id_str, in_reply_to_user_id_str: @tweet.in_reply_to_user_id_str, is_retweet: @tweet.is_retweet, retweet_count: @tweet.retweet_count, source: @tweet.source, text: @tweet.text } }
    end

    assert_redirected_to tweet_url(Tweet.last)
  end

  test "should show tweet" do
    get tweet_url(@tweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_url(@tweet)
    assert_response :success
  end

  test "should update tweet" do
    patch tweet_url(@tweet), params: { tweet: { created_at: @tweet.created_at, favorite_count: @tweet.favorite_count, id_str: @tweet.id_str, in_reply_to_user_id_str: @tweet.in_reply_to_user_id_str, is_retweet: @tweet.is_retweet, retweet_count: @tweet.retweet_count, source: @tweet.source, text: @tweet.text } }
    assert_redirected_to tweet_url(@tweet)
  end

  test "should destroy tweet" do
    assert_difference('Tweet.count', -1) do
      delete tweet_url(@tweet)
    end

    assert_redirected_to tweets_url
  end
end
