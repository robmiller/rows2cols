require "rows2cols/version"

class Rows2Cols
  include Enumerable

  def initialize(io: ARGF, columns: 4, separator: " ")
    @io        = io
    @columns   = columns
    @separator = separator
  end

  def each
    @io.each_slice(@columns) do |rows|
      yield rows.map(&:chomp).join(@separator)
    end
  end
  alias :each_row :each
end
