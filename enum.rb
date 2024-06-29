class IPAddr
  include Enumerable

  def initialize(ip_addr)
    @ip_addr = ip_addr
  end

  def each
    return to_enum unless block_given?
    # return enum_for unless block_given? # same result with using to_enum method

    @ip_addr.split('.').each do |octet|
      yield octet
    end
  end
end

addr = IPAddr.new("192.10.20.30")
enum = addr.each

p enum.next # "192"
p enum.next # "10" 
p enum.next # "20" 
p enum.next # "30" 
p enum.next #iteration reached an end (StopIteration)
