require './enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&value)
    @list.each(&value)
  end
end

list = MyList.new(1, 2, 3, 4, 5, 6)
puts(list.all? { |e| e < 7 })
puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

puts(list.filter(&:even?))
