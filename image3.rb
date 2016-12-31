class Image
  attr_accessor :img

  def initialize(array)
    @img = array
  end

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

  def transform
    one_pixels = []
    @img.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        if pixel == 1
          one_pixels.push([row_index, col_index])
        end
    end
  end  
    one_pixels.each do |row_col|
    row_index, col_index = row_col
    blur(row_index, col_index)
  end
    return Image.new(@img)
  end

  def output_image
    @img.each do |row|
      row.each do |pixel|
        print pixel
      end
      puts
    end
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