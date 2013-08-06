require 'savage'

module Text2Path

  # specification:
  # http://www.w3.org/TR/SVG/paths.html#PathElement
  #
  # Attributes:
  #   d
  #   transform (not implemented)
  #   pathLength (not implemented)
  #
  class SvgPath < Savage::Path

    class << self
      def parse( str )
        Savage::Parser.parse( str ).tap do |p|
          yield p if block_given?
        end
      end
    end

    def advance( dx=0, dy=0 )
      subpaths.each do |p|
        #p.move_to dx, dy
        p.directions.each do |dir|
        end
      end
    end
  end

end

module Savage
  class Direction
    attr_accessor :absolute
  end
end
