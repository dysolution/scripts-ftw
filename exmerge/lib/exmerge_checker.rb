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
