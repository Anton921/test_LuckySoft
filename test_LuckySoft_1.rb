class Array
  def my_map
    result = []
    each { |element| result << yield(element) }
    result
  end
end
