class Image
  attr_accessor :image

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
  end

  # what is this doing? transforming
  def blur(row_index, col_index)
    if row_index != 0
      @image[row_index-1][col_index] = 1
    end
    if col_index != 0
      @image[row_index][col_index-1] = 1
    end
    first_row = image[0]
    if col_index != first_row.length-1
      @image[row_index][col_index+1] = 1
    end
    if row_index != image.length-1
      @image[row_index+1][col_index] = 1
    end
  end

  # build new img and return blurred img
  def transform
    one_pixels = []
    # loop through all pixels, find 1s and store in one_pixels array
    # touple, one_pixels is array of arrays
    @image.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        # finding ones and adding to array
        if pixel == 1
          one_pixels.push([row_index, col_index])
        end
    end
  end

# cycle through one_pixel and blur those pixels
    one_pixels.each do |pair|
    row_index, col_index = pair
    blur(row_index, col_index)
  end

    return Image.new(@image)
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.transform
image.output_image

# afterImage = image.transform
# afterImage.output_image

# afterImage = Image.new([
#   [0, 1, 0, 0],
#   [1, 1, 1, 1],
#   [0, 1, 1, 1],
#   [0, 0, 0, 1]
# ])