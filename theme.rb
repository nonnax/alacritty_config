#!/usr/bin/env -S ruby --disable=gem
# frozen_string_literal: true

# require 'rubytools/fzf'
require 'erb'

begin
  p theme = gets.chomp.tap { |theme| raise 'No theme selected' unless theme }

  theme_text = File.read(theme)
  # font_family='Monoid Nerd Font Mono'
  # font_family='Fira Code Medium'
  # font_family='Fira Code'
  # font_family='MonacoB'
  font_family = 'Mononoki Nerd Font'
  # font_family='Mononoki Nerd Font Mono'
  # font_family='Monocraft'
  font_style = 'Retina'
  # font_style='Normal'
  font_style='Medium'
  # font_style='Bold'
  # font_style = 'SemiBold'
  font_size = 10.5

  File
    .read('alacritty.erb')
    .then { |s| ERB.new(s).result_with_hash(theme_text:, font_family:, font_size:) }
    .then { |s| File.write('alacritty.yml', s) }
rescue StandardError => e
  puts ['Theme not found: ', e.message].join
end
