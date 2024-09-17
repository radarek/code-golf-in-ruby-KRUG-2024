require'zlib'

code = ARGV.read
compressed = Zlib.deflate(code)

print <<CODE
require'zlib';Zlib.inflate<<CC
...
CC
CODE
