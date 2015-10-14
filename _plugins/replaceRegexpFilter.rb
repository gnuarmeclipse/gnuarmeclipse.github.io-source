module Jekyll
  module ReplaceRegexpFilter
    def replace_regexp(input, string, replacement = ''.freeze)
      re = Regexp::new string.to_s
      input.to_s.gsub(re, replacement.to_s)
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReplaceRegexpFilter)
