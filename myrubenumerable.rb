module MyEnumerable
  def all?
    listeach { |item| return false unless yield item }
    true
  end

  def any?
    listeach { |item| return true if yield item }
    false
  end
