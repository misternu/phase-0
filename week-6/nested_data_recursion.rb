class Array
  def map_int(&block)
    self.map do |x|
      if x.is_a?(Integer)
        yield x
      elsif x.is_a?(Array)
        x.map_int(&block)
      else
        x
      end
    end
  end
end

p [1,2,[1,3,[1,4,[1,5,[1,6,[1,7,[1,42]]]]]], -200].map_int {|x| x+1}