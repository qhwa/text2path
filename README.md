# Text2Path

This library convert text into svg paths. For example:

~~~ruby
require 'text2path'

# load font from pre-built svg font file
# You can make svg font from .ttf or other formats with Batik tools
font = Text2Path::SvgFont.load 'assets/fonts/arial.svg'

# Code below converts text to svg output that can be displayed in browsers:
Text2Path.convert( 'Hello, world!', font, font_size: 20 ).to_svg

# <?xml version="1.0" standalone="no"?>
# <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
# <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
#   <g>
#     <path d="M4.296875 34..." />
#     <path d="M4.296875 34..." />
#     <path d="M4.296875 34..." />
#     <path d="M4.296875 34..." />
#   </g>
# </svg>

# This convert text to an array containing a list of Savage::Path instance
Text2Path.convert( 'Hello, world!', font, font_size: 20 ).to_paths

~~~

## installation

    gem install text2path

or

    gem 'text2path'

in your Gemfile


## helpful infomation
### generating svg font file
You can do it with [batik ttf2svg tool](http://xmlgraphics.apache.org/batik/tools/font-converter.html)

in short:
~~~sh
java -jar batik-ttf2svg.jar -autorange "some-font.ttf" -o "some-font.svg"
~~~

## License
copy right(s) qhwa 2013
Licensed under the MIT license.

## TODO
This project is at its very beginning, features missing:

1. support right-to-left text directions
2. support vertical orientation
3. support more options like font-weight, font-style, kerning.. etc.
4. helper to create svg fonts
