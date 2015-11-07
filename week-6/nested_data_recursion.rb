# class Array
#   def map_only_class(type, &block)
#     self.map do |x|
#       if x.is_a?(type)
#         yield x
#       elsif x.is_a?(Array)
#         x.map_only_class(type, &block)
#       else
#         x
#       end
#     end
#   end
# end

module Enumerable
  def map_nest (&block)
    raise NoMethodError unless self.is_a?(Hash) || self.is_a?(Array)
    self.map {|child| (child.is_a?(Enumerable)) ? child.map_nest(&block) : yield(child)}
  end
end

p [1,2,[1,3,[1,4,[1,5,[1,6,[1,7,[1,42]]]]]], -200].map_nest {|x| x+1}
p ["string", "b", ["c", "d", ["e", "f"]], "g"].map_nest {|s| s+"s"}