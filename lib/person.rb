class Person
  attr_accessor :first, :middle, :last

  def initialize(args)
    @first = args[:first] || ""
    @middle = args[:middle] || ""
    @last = args[:last] || ""
  end


  def fullname
    "#{first} #{middle} #{last}".split(" ").join(" ")
  end

  def full_name_with_middle_initial
    return "#{first} #{middle[0].upcase + "."} #{last}" if !middle.empty?
    "#{first} #{last}"
  end

  def initials
    "#{first[0]} #{middle[0]} #{last[0]}".split(" ").join("")
  end
end
