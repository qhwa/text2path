require_relative 'text2path/svg_font'
require_relative 'text2path/converter'

module Text2Path
  
  def self.convert( text, font, opt={} )
    Converter.new( text, font, opt )
  end

end
