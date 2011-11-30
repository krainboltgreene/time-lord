require File.expand_path(File.dirname(__FILE__) + '/helper')
describe Time do
  describe "just now" do
    before do
      @past = Time.now
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "just now"
    end
  end

  describe "seconds" do
    before do
      @past = Time.now - 30 * Time::Second
      @future = Time.now + 30 * Time::Second
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "30 seconds ago"
      @future.distance_in_words.must_equal "in 30 seconds"
    end
  end

  describe "minutes" do
    before do
      @past = Time.now - 15 * Time::Minute
      @future = Time.now + 15 * Time::Minute
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "15 minutes ago"
      @future.distance_in_words.must_equal "in 15 minutes"
    end
  end

  describe "singular form for 1" do
    before do
      @past = Time.now - 1 * Time::Minute
      @future = Time.now + 1 * Time::Minute
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "1 minute ago"
      @future.distance_in_words.must_equal "in 1 minute"
    end
  end

  describe 'hours' do
    before do
      @past = Time.now - 4 * Time::Hour
      @future = Time.now + 4 * Time::Hour
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "4 hours ago"
      @future.distance_in_words.must_equal "in 4 hours"
    end
  end

  describe 'days' do
    before do
      @past = Time.now - 3 * Time::Day
      @future = Time.now + 3 * Time::Day
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "3 days ago"
      @future.distance_in_words.must_equal "in 3 days"
    end
  end

  describe 'weeks' do
    before do
      @past = Time.now - 2 * Time::Week
      @future = Time.now + 2 * Time::Week
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "2 weeks ago"
      @future.distance_in_words.must_equal "in 2 weeks"
    end
  end
  
  describe 'months' do
    before do
      @past = Time.now - 7 * Time::Month
      @future = Time.now + 7 * Time::Month
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "7 months ago"
      @future.distance_in_words.must_equal "in 7 months"
    end
  end

  describe 'years' do
    before do
      @past = Time.now - 3 * Time::Year
      @future = Time.now + 3 * Time::Year
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "3 years ago"
      @future.distance_in_words.must_equal "in 3 years"
    end
  end

  describe 'millennium' do
    before do
      @past = Time.now - 4 * Time::Millennium
      @future = Time.now + 4 * Time::Millennium
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "4 millenniums ago"
      @future.distance_in_words.must_equal "in 4 millenniums"
    end
  end
end
