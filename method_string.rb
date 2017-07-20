str = """Lorem ipsum dolor sit amet, consec[VAL1]tetur adipiscing elit. XX et sapien eu risus pretium mollis. Fusce diam lacus, ornare quis dapibus in, porttitor non risus. Curabitur eleifend libero et XX venenatis. Donec malesuada lobortis ex, eget cursus[VAL2] lectus interdum a. [VAL43]Aliquam iaculis magna nec rXXisus dapibus lobortis. Aliquam aliquam magna et fringilla tincidunt. Proin urna risus, lacinia eu quam in, venenatis aliquet magna. Mauris at ex id justo lacinia maximus id id mauris. Phasellus at dolor convallis, pellentesque leo maximus, vulputate diam. In hac habitasse platea dictumst. Nullam feugiat venenatis congue. Suspendisse vestibulum ornare pretium. Sed quis [VAL24]tortor lobortis, dignissim mi eu, consequat justo. Duis nunc ipsum, aliquet semper sem vitXXae, iaculis ultrices sem. Duis rutrum porttitor dui. Suspendisse feugiat nulla ac diam tincidunt convallis. Vestibulum qua[VAL5]m urna, mattis vel ma[VAL6]gna quis, pretium placerat leo. Fusce ullaXXmcorper[VAL7] luctXXus porttitor. Vestibulum ante ipsum primis in faucibus orci luctu[VAL18]s et ultrices posuere cubilia Curae; Pellent[VAL9]esque laoreet laXXcus nunc, eget bibendum leo efficitur nec. Sed tincidunt turpis a ex eleifend congue. Praesent blandit mi nec metus convallis tempus pulvinar eu odio. Nullam mollis tellus urna, ac dign[VAL10]issim neque dapibus nec. Donec rhoncus maximus metus, ornare rhoncus metus pharetra nec. Donec congue nisl non."""

def method(string)
  values = []
  matches = string.scan(/XX|\[VAL\d*\]/)
  count = 0
  while count < matches.length
    if matches[count].match(/XX/) && matches[count + 1].match(/\[VAL\d*\]/)
      values << matches[count + 1]
    end
    count += 1
  end
  p values
end

method(str)

# a string of latin is assigned to "str" outside of the method
# then the method "method" is defined with a parameter of "string"
# "values" is assigned an empty array
# "matches" is assigned the "string" parameter which will be
# scanned for a certain pattern, in this case [VAL#], and returns an array of occurances
# "count" is assigned an integer of 0
# a while loop is initiated which does the following:
# 

# => ["[VAL2]", "[VAL24]", "[VAL5]", "[VAL7]", "[VAL18]", "[VAL10]"]

# NOTES on regular expressions: (/XX|\[VAL\d*\]/)
# regexp `/.../` holds a regular expression
# to match something literally, they must be backslashed e.g. \[VAL\d*\
# /\d/ is digit
# * is zero or more times
# | vertical bar combines two expressions into a single one
# that matches either expression, like an alternative e.g. XX OR [VAL#]

