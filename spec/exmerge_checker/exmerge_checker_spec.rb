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

describe "the log parser" do
  it "should know the right path for the log file by default" do
    config = YAML.load_file(
      File.expand_path("../../../exmerge/config.yaml", __FILE__))
    configured_path = config["exmerge_log_path"]
    @log_parser = LogParser.new
    @log_parser.path.upcase.should == configured_path.upcase
  end
  it "should be able to open the log file"
  it "should extract the info from the last time ExMerge ran"
end
