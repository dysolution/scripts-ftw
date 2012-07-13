require 'logger'

class LogSearcher
  attr_accessor :targets

  
  def initialize(targets=[])
    @targets = targets
    @log = Logger.new(STDOUT)
    @log.level = Logger::DEBUG
  end

  def check_all_targets
    @targets.each do |target|
      check target
    end
  end

  def check(target)
    @log.info "Checking #{target}..."
  end
end

class LogParser
  require 'yaml'

  attr_accessor :path

  def initialize
    read_config
  end

  def read_config
    config = YAML.load_file(
      File.expand_path("../../config.yaml", __FILE__))
    @path = config["exmerge_log_path"]
  end

end
