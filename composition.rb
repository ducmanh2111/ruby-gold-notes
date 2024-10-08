class Bicycle
	attr_reader :size, :parts

	def initialize(size:, parts:)
		@size = size
		@parts = parts
	end

	def spares
		parts.spares
	end
end

require 'forwardable'
class Parts
	extend Forwardable
	def_delegators :@parts, :size, :each
	include Enumerable
	def initialize(parts)
		@parts = parts
	end

	def spares
		select { |part| part.needs_square }
	end
end

require 'ostruct'
module PartsFactory
	def self.build(config:, parts_class: Parts)
		parts_class.new(config.collect { |part_config| create_part(part_config) })
	end

	def self.create_part(part_config)
		OpenStruct.new(name: part_config[0], description: part_config[1], needs_square: part_config.fetch(2, true))
	end
end

road_config = [['chain', '11-speed'], ['tire_size', '2.1'], ['front_shock', 'Manitou'], ['rear_shock', 'Fox', false]]
road_bike = Bicycle.new(size: 'L', parts: PartsFactory.build(config: road_config))
puts road_bike.spares