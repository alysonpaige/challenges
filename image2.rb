class Image

  def initialize(array)
    @image = array
  end

  def output_image
    @image.each do |row|
      row.each do |pixel|
        print pixel
    end
    puts
  end

  # build new img and return blurred img
  def transform
    # loop through all cells
    one_pixels = []
    @image.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        if pixel == 1
          # do more stuff
        else
          # do more stuff
        end
    end
  end
    return Image.new(@image)
  end

  # loop through, find ones and store
  # then go to ones and blur

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
# image.transform
# image.output_image

afterImage = image.transform
afterImage.output_image

afterImage = Image.new([
  [0, 1, 0, 0],
  [1, 1, 1, 1],
  [0, 1, 1, 1],
  [0, 0, 0, 1]
])

# afterImage = Image.new([
#   [0, 1, 0, 0],
#   [1, 1, 1, 1],
#   [0, 1, 1, 1],
#   [0, 0, 0, 1]
# ])