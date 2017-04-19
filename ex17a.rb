# Method 1 Without closing file
# I believe he gave hint on the common student questions by using ;
from_file, to_file = ARGV ;infile = open(from_file).read; outfile = open(to_file, 'w').write(infile)

# Method 2, without closing the file, but it works?
# from_file, to_file = ARGV
# open(to_file,'w').write(open(from_file).read())

# Method 3, again without closing.
# File.write(ARGV.last, File.read(ARGV.first))
