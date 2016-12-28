class Image

  def initialize

    value = Array[
      [0, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 0, 0]
    ]

    # Loop over each row array.
    value.each do |x|
        # Loop over each cell in the row.
        x.each do |cell|
      puts cell
        end
        # End of row.
        puts "--"
    end
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image


# notes
  # def find_ones
  #   positions = []
  #   @image.each_with_index do |row, row_index|
  #       puts "row", row.inspect
  #       puts "row_index", row_index
  #     row.each_with_index do |number, number_index|
  #       if number == 1
          
  #       puts "number", number
  #       puts "number_index", number_index
  #     end
  #   end
  # end