require 'spec_helper'

describe "the latency reporter" do

  before(:each) do
    @latency_reporter = LatencyReporter.new('first_host', 'second_host')
  end

end

describe "the latency checker" do
  describe Host do
    before(:each) do
      @hostname = 'google.com'
      @host = Host.new(@hostname)
    end

    it "should successfully ping a host" do
      @host.ping_time.should_not be_nil
    end

    it "should return an integer ping time" do
      @host.ping_time.should be_an(Integer)
    end

    it "should record (persist) the result" do
      pending "need to write persistence code" do
        @host.record_current_latency.should be_true
      end
    end
  end

  describe LatencyMeasurement do
    it "should have a string representation" do
      LatencyMeasurement.new('foobar', 23).inspect
        .should == "23 ms to host foobar"
    end
  end
end
