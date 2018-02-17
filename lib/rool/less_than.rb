# Checks whether the @operand is less than the value in the dataset
module Rool
  class LessThan < Basic
  	def process(dataset)
  		super
  		return false unless (dataset[@datakey].respond_to?(:<) && @operand.respond_to?(:<))
  		@operand < dataset[@datakey]
  	end
  end
end
