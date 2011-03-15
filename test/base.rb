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
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "30 seconds ago"
    end
  end

  describe "minutes" do
    before do
      @past = Time.now - 15 * Time::Minute
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "15 minutes ago"
    end
  end

  describe "singular form for 1" do
    before do
      @past = Time.now - 1 * Time::Minute
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "1 minute ago"
    end
  end

  describe 'hours' do
    before do
      @past = Time.now - 4 * Time::Hour
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "4 hours ago"
    end
  end

  describe 'days' do
    before do
      @past = Time.now - 3 * Time::Day
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "3 days ago"
    end
  end

  describe 'weeks' do
    before do
      @past = Time.now - 2 * Time::Week
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "2 weeks ago"
    end
  end
  
  describe 'months' do
    before do
      @past = Time.now - 7 * Time::Month
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "7 months ago"
    end
  end

  describe 'years' do
    before do
      @past = Time.now - 3 * Time::Year
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "3 years ago"
    end
  end

  describe 'millennium' do
    before do
      @past = Time.now - 4 * Time::Millennium
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "4 millenniums ago"
    end
  end
end
