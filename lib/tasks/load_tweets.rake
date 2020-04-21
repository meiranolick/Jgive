namespace :load_tweets do
  task :all_since_year, [:year] => :environment do |t, args|
    p UploadTweets.new.upload_since args[:year]
  end
end
