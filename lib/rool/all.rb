# This container rule checks whether all its children rules pass

module Rool
  class All < Container
    def process(dataset={})
      @children.all?{|r| r.process(dataset)}
    end
  end
end
