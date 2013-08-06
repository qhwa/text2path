module Text2Path

  Glyph = Struct.new :path, :horiz_adv_x, :horiz_adv_y

  class Glyph
    
    def empty?
      !path || path.empty?
    end

  end

end
