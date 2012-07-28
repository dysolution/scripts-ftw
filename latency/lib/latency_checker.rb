class Host
  def initialize(host_name)
    @host_name = host_name
  end

  def ping
    `ping -c 1 -n #{@host_name}` =~ /.* time=(\d+)\./
    return $1.to_i
  end
end
