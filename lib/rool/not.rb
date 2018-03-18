# A special container that should include only one child rule.
# It returns the boolean inverse of the result of its child rule.
module Rool
  class Not < Container
  	def process(dataset={})	
  		raise ArgumentError.new("Expected only one child rule as an argument") unless @children.length == 1
  		!@children[0].process(dataset)
  	end
  end
end
