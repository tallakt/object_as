module ObjectAs
  refine Object do
    #
    #  call-seq:
    #     obj.as{|x|...}    -> obj
    #
    #  Yields self to the block, and then returns the return value of the block.
    #  The primary purpose of this method is to transform a value in a method 
    #  chain without breaking the chain.
    #
    # [1, 2, 3]
    #   .map {|x| x * x }
    #   .as {|array| array.reverse }
    #   .each {|x| puts x }
    #
    def as
      yield self
    end
  end
end
