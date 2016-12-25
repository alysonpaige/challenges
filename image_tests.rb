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