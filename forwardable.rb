require 'forwardable'

class Log
  extend Forwardable

  def initialize
    @data = []
  end

  def_delegator :@data, :push
  def_delegator :@data, :[]
end

log = Log.new
log.push("a")
p log[0]
p log.last
