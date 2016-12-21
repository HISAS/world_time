require "spec_helper"

describe WorldTime do
  it "has a version number" do
    expect(WorldTime::VERSION).not_to be nil
  end

  describe '#timezone(local location)' do
    it 'returns local time' do
      expect(Time.now.timezone('Asia/Tokyo')).to eq(current time in Tokyo)
    end
  end
end
