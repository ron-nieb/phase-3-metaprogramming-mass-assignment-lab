class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
                :weight, :handed, :complexion, :t_shirt_size,
                :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, value|
      send("#{key}=", value) 
    end
  end
end
bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new(bob_attributes)
puts bob.name       # => "Bob"
puts bob.hair_color # => "Brown"

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
puts susan.name      # => "Susan"
puts susan.height    # => "5'11""
puts susan.eye_color # => "Green"