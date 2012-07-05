require 'spec_helper'

describe "the log searcher" do

  before(:each) do
    @log_searcher = LogSearcher.new
  end

  it "should accept a list of targets" do
    @log_searcher.targets = ['FOO', 'BAR']
  end

  it "should check all targets" do
    @log_searcher.targets = ['FOO', 'BAR']
    @log_searcher.check_all_targets
  end
end

