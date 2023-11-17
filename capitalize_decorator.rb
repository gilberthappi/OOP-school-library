require_relative 'decorator'

# creating a class that inherits decorator features
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
