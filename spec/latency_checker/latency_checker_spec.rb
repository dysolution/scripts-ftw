require 'spec_helper'

describe "the latency reporter" do

  before(:each) do
    @latency_reporter = LatencyReporter.new('first_host', 'second_host')
  end

end

describe "the latency checker" do
  before(:each) do
    @hostname = 'google.com'
  end

  it "should successfully ping a host" do
    Host.new(@hostname).ping.should_not be_nil
  end

  it "ping should return an integer" do
    Host.new(@hostname).ping.should be_an(Integer)
  end
end
