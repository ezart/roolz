# This rule should check whether values are equal
module Rool
  class Equal < Basic
  	def process(dataset={})
  		dataset[@data_key] == @operand
  	end
  end
end
