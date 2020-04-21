class UploadTweets
  MIN_YEAR = 2000
  URL = "http://trumptwitterarchive.com/data/realdonaldtrump/%{year}.json"

  def upload_since(year)
    unless valid_year(year)
      return {result: "error", msg: "That's not a valid year!"}
    end

    year_range(year.to_i).each do |target_year|
      response = Net::HTTP.get_response(request_url target_year)
      unless response.kind_of? Net::HTTPSuccess
        Rails.logger.warn "No tweets found for year #{target_year}"
        next
      end

      upload_year(JSON.parse response.body)
    end

    {result: "success"}
  end

  private

  def valid_year(year)
    (MIN_YEAR..Date.today.year).include? year.to_i
  end

  def request_url(year)
    dynamic_valus = {year: year}
    URI.parse(URL % dynamic_valus)
  end

  def year_range(year)
    year..Date.today.year
  end

  def upload_year(tweets)
    Tweet.create tweets
  end
end