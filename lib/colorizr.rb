# Overrides the String class to add methods to colorize the string
class String
  COLOR_CODES = { red: 31, green: 32, yellow: 33, blue: 34, pink: 35,
                  light_blue: 36, white: 97, light_grey: 37, black: 30 }

  def self.colors
    COLOR_CODES.each_key.entries
  end

  # Method to create the color methods, based of the list of colors and
  # color codes
  def self.create_colors
    COLOR_CODES.each do |color, code|
      String.send(:define_method, "#{color}") do
        "\e[#{code}m#{self}\e[0m"
      end
    end
  end

  # Print out samples, which invokdes each color method
  def self.sample_colors
    COLOR_CODES.each_key do |color|
      puts "This is #{color.to_s.send(color)}"
    end
  end
end

# Create color methods
String.create_colors
