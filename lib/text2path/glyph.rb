module Text2Path

  class Glyph < Struct.new :path, :horiz_adv_x, :horiz_adv_y
    
    def empty?
      !path || path.empty?
    end

  end

end
