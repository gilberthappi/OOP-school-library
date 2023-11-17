class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @book = book
    book.rental.push(self) unless book.rental.includes?(self)
    @person = person
    person.rental.push(self) unless person.rental.includes?(self)
  end
end
