class Host
  def initialize(host_name)
    @host_name = host_name
  end

  def ping_time
    `ping -c 1 -n #{@host_name}` =~ /.* time=(\d+)\./
    return $1.to_i
  end

  def record_current_latency
    LatencyMeasurement.new(@host_name, ping_time).record
  end
end

class LatencyMeasurement
  def initialize(host_name, latency_in_ms)
    @host_name = host_name
    @latency_in_ms = latency_in_ms
  end

  def inspect
    "#{@latency_in_ms} ms to host #{@host_name}"
  end

  def record
  end
end
