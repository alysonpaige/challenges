class Image
  attr_accessor :img

  def initialize(array)
    @img = array
  end

  def output_image
    @img.each do |row|
      row.each do |pixel|
        print pixel
      end
      puts
    end
  end

  # what is this doing? transforming
  def blur(row_index, col_index)
    if row_index != 0
      @img[row_index-1][col_index] = 1
    end
    if col_index != 0
      @img[row_index][col_index-1] = 1
    end
    first_row = img[0]
    if col_index != first_row.length-1
      @img[row_index][col_index+1] = 1
    end
    if row_index != img.length-1
      @img[row_index+1][col_index] = 1
    end
  end

  # build new img and return blurred img
  def transform
    one_pixels = []
    # loop through all pixels, find 1s and store in one_pixels array
    # touple, one_pixels is array of arrays
    @img.each_with_index do |row, row_index|
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

    return Image.new(@img)
  end
end

img = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
img.transform
img.output_image

# afterImage = image.transform
# afterImage.output_image

# afterImage = Image.new([
#   [0, 1, 0, 0],
#   [1, 1, 1, 1],
#   [0, 1, 1, 1],
#   [0, 0, 0, 1]
# ])