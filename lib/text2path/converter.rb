module Text2Path

  class Converter

    attr_accessor :text, :font

    def initialize( text, font, opt={} )
      @text = text
      @font = font
      @opt  = opt
    end

    def to_svg
      paths = to_paths
        %Q{<?xml version="1.0" standalone="no"?>} <<
        <<-SVG
          <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
          <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
            <g>#{paths.map {|p| path_element(p) }.join("\n") }</g>
          </svg>
        SVG
      
    end

    def to_paths
      @advance_x = 0
      @text.each_char.map do |letter|
        letter_to_path( letter )
      end.compact
    end

    def letter_to_path( lt )
      glyph = @font.glyph( lt )
      scale = font_size / @font.units_per_em

      if glyph.empty?
        @advance_x += glyph.horiz_adv_x * scale
        nil
      else
        SvgPath.parse( glyph.path ) do |path|
          path.scale scale, -scale
          # TODO: support other text directions
          path.translate advance_x, @font.default_glyph_height * scale
          @advance_x += glyph.horiz_adv_x * scale
        end
      end
    end

    private

      def path_element( path )
        %Q{<path d="#{path.to_command}" />}
      end

      def advance_x
        @advance_x
      end

      def font_size
        @font_size ||= @opt[:font_size] || font.units_per_em
      end

  end

end
