require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))
require 'spec_helper'

describe WorldTime do
  describe "#timezone" do
    it "timezone('Asia/Tokyo') should return local time in Tokyo" do
      expect(Time.utc(1999,12,31,23,59,59).timezone('Asia/Tokyo').to_s).to eq "2000-01-01 08:59:59 +0900"
    end

    it "timezone('America/Chicago') should return local time in Chicago" do
      expect(Time.utc(1999,12,31,23,59,59).timezone('America/Chicago').to_s).to eq "1999-12-31 17:59:59 -0600"
    end
  end

end
