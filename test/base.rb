require File.expand_path(File.dirname(__FILE__) + '/helper')
describe Time do
  describe "seconds" do
    before do
      @past = Time.now - 30
    end

    it 'returns the correct string' do
      @past.time_ago_in_words.must_equal "30 seconds ago"
    end
  end
end
