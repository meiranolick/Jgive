require "application_system_test_case"

class TweetsTest < ApplicationSystemTestCase
  setup do
    @tweet = tweets(:one)
  end

  test "visiting the index" do
    visit tweets_url
    assert_selector "h1", text: "Tweets"
  end

  test "creating a Tweet" do
    visit tweets_url
    click_on "New Tweet"

    fill_in "Created at", with: @tweet.created_at
    fill_in "Favorite count", with: @tweet.favorite_count
    fill_in "Id str", with: @tweet.id_str
    fill_in "In reply to user id str", with: @tweet.in_reply_to_user_id_str
    fill_in "Is retweet", with: @tweet.is_retweet
    fill_in "Retweet count", with: @tweet.retweet_count
    fill_in "Source", with: @tweet.source
    fill_in "Text", with: @tweet.text
    click_on "Create Tweet"

    assert_text "Tweet was successfully created"
    click_on "Back"
  end

  test "updating a Tweet" do
    visit tweets_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @tweet.created_at
    fill_in "Favorite count", with: @tweet.favorite_count
    fill_in "Id str", with: @tweet.id_str
    fill_in "In reply to user id str", with: @tweet.in_reply_to_user_id_str
    fill_in "Is retweet", with: @tweet.is_retweet
    fill_in "Retweet count", with: @tweet.retweet_count
    fill_in "Source", with: @tweet.source
    fill_in "Text", with: @tweet.text
    click_on "Update Tweet"

    assert_text "Tweet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweet" do
    visit tweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweet was successfully destroyed"
  end
end
