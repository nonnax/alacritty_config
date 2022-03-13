#!/usr/bin/env ruby
require 'rubytools/string_ext'
require 'rubytools/fzf'

begin
  p theme = gets.chomp

  raise 'No theme selected' unless theme

  theme_text=File.read(theme)

  res = File.read('alacritty.erb').render(binding)

  File.write('alacritty.yml', res)

rescue
  puts 'no theme found' 
end
