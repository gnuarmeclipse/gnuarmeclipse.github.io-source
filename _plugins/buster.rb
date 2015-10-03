#
# buster.rb - Copyright (C) 2014, Achal Varma <achalv2.0@gmail.com>
#

require 'digest/md5'

module Jekyll
  class Buster < Liquid::Tag
    def render(context)
      "#{'?'+Digest::MD5.hexdigest(Time.now.to_s)}"
    end
  end
end

Liquid::Template.register_tag('buster', Jekyll::Buster)
