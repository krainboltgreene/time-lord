require File.expand_path(File.dirname(__FILE__) + '/helper')
describe Time do
  describe "seconds" do
    before do
      @past = Time.now - 30 * Second
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "30 seconds ago"
    end
  end

  describe 'hours' do
    before do
      @past = Time.now - 4 * Hour
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "4 hours ago"
    end
  end

  describe 'days' do
    before do
      @past = Time.now - 3 * Day
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "3 days ago"
    end
  end

  describe 'weeks' do
    before do
      @past = Time.now - 2 * Week
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "2 weeks ago"
    end
  end
  
  describe 'months' do
    before do
      @past = Time.now - 7 * Month
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "7 months ago"
    end
  end

  describe 'years' do
    before do
      @past = Time.now - 3 * Year
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "3 years ago"
    end
  end
end
