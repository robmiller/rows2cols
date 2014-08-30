# rows2cols

rows2cols is a script for transposing rows to columns. It accepts both
files and standard input, and allows custom separators.

For example, if you want to turn:

	The
	quick
	brown
	fox
	jumped
	over
	the
	dog

Into:

	The quick brown fox
	jumped over the dog

You could call:

	rows2cols -c 4 -s ' ' file.txt

The default separator character is a space, and the default number of
columns is four, so we could also call this as:

	rows2cols file.txt

Output is printed to standard output, so rows2cols plays nicely with
text processing pipelines.

	Usage: rows2cols [options] [file, file...]
		-c, --columns N                  Number of columns (default 4)
		-s, --separator CHAR             Separator character between columns (default space)
		-h, --help                       Display this help

## Installation

	$ gem install rows2cols

## Contributing

1. Fork it ( http://github.com/robmiller/rows2cols/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
