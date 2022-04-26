#!/usr/bin/env ruby
require 'rubytools/fzf'
require 'erb'

begin
  p theme = gets.chomp

  raise 'No theme selected' unless theme

  theme_text=File.read(theme)
  font_family='Mononoki Nerd Font'
  font_size=9

  res = 
  File.read('alacritty.erb')
  .then{|s| ERB.new(s).result_with_hash(theme_text:, font_family:, font_size: )}

  File.write('alacritty.yml', res)

rescue => e
  puts ['no theme found: ', e.message ].join
end
