tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat Food
\t* Fishies
\t* Catnips\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts """
Hi there \v I dont know what this mean\bs?
Lets try. The 'n' on means are removed due to \\b.
\\v does the vertical ta\rb.
\\r does carriage return, anything after it replaces the front of the sentence?
"""

puts '''
Here\'s the unignored version of the code.
Hi there \v I dont know what this mea/bs?
Lets try. The \'n\' on means are removed due to \\b.
\\v does the vertical ta\rb.
\\r does carriage return, anything after it replaces the front of the sentence?
'''
