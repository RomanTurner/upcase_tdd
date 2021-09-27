require "person"

# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# -[X] Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# -[x] Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# -[] Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

describe Person do
  describe " #initialize" do
    it "should exist" do
      args = { first: "Groggy", middle: "Bottom", last: "Boys" }
      person = Person.new(args)
      expect(person).to eq(person)
    end
  end

  describe " #fullname" do
    it "should print the fullname (first, middle, last)" do
      args = { first: "Groggy", middle: "Bottom", last: "Boys" }
      person = Person.new(args)
      expect(person.fullname).to eq("Groggy Bottom Boys")
    end
    it "should not print extra spaces or a period" do
      args = { first: "Groggy", last: "Boys" }
      person = Person.new(args)
      expect(person.fullname).to eq("Groggy Boys")
    end
  end

  describe " #full_name_with_middle_initial" do
    it "should print a full name with middle initial" do   
      args = {first: "Bob", middle: "Law", last: "Blog"}
      person = Person.new(args)
      expect(person.full_name_with_middle_initial).to eq("Bob L. Blog")
    end
    it "should print fullname and last name if middle initial is missing" do
      args = {first: "Bob", last: "Blog"}
      person = Person.new(args)
      expect(person.full_name_with_middle_initial).to eq("Bob Blog")
    end
  end

  describe "#initials" do
    it "should return just the initials of the name" do
      args = {first: "Bob", middle: "Law", last: "Blog"}
      person = Person.new(args)
      expect(person.initials).to eq("BLB")
    end
    it "should return the given name initials" do
      args = {first: "Bob", last: "Blog"}
      person = Person.new(args)
      expect(person.initials).to eq("BB")
    end
  end

end

=begin
Tests Procedure: 
- Set up
- Excersize 
- Validation
- Clean up   
=end