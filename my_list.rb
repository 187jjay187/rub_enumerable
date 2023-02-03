# frozen_string_literal: true

require_relative './my_enumerable'

# Class for creating a custom list with functionalities from MyEnumerable
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def listeach
    return to_enum(:listeach) unless block_given?

    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
  end
end
