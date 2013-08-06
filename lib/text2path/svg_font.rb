require 'open-uri'
require 'nokogiri'
require 'htmlentities'

$: << File.expand_path('../ext/savage/lib', File.dirname(__FILE__))

require_relative 'svg_path'
require_relative 'glyph'

module Text2Path

  # An SVG font is a font defined using SVG's ‘font’ element.
  # You may be instested in the specification of svg font:
  # -- http://www.w3.org/TR/SVG/fonts.html
  class SvgFont

    class << self
      alias :load :new
    end

    attr_reader :advance_x, :advance_y
    attr_reader :units_per_em, :glyphs

    def initialize( font_path )
      @font_path = font_path
      load_font
      yield self if block_given?
    end

    def default_glyph_height
      units_per_em
    end

    def glyph( letter )
      key = letter.respond_to?(:ord) ? letter.ord : letter.to_i
      glyphs[key] #|| missing_glyph
    end

    private
      
      def load_font
        @xml = Nokogiri::XML( open( @font_path ) )
        parse_font_face_info
        parse_glyphs
      end

      def parse_font_face_info
        font_element = @xml.css('font').first
        face_element = @xml.css('font-face').first
        %w[
          horiz-origin-x    horiz-adv-x
          horiz-origin-y    horiz-adv-y
        ].each do |attr|
          instance_variable_set "@#{attr.gsub('-', '_')}", font_element.attr(attr).to_f
        end

        %w[
          units-per-em
          panose-1
        ].each do |attr|
          instance_variable_set "@#{attr.gsub('-', '_')}", face_element.attr(attr).to_f
        end

      end

      def parse_glyphs
        decoder = HTMLEntities.new
        @glyphs = @xml.css('glyph').inject({}) do |map, glyph|
          name = glyph.attr('unicode')
          key = case name
                when /^&#x(\w+)$/
                  $1.hex
                when /^.$/
                  name.ord
                when /^&.+;$/
                  # e.g.
                  # &amp;  &quot; ..
                  decoder.decode( name )[0].ord
                else
                  raise "unknown name: #{name}"
                end

          adv_x     = glyph.attr('horiz-adv-x') || @horiz_adv_x
          map[key]  = Glyph.new( glyph.attr('d'), adv_x.to_f )
          map
        end
        
      end

  end

end
