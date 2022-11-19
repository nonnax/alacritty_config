#!/usr/bin/env ruby
# frozen_string_literal: true

# Id$ nonnax 2022-03-13 21:46:00 +0800
# logs selected theme to .theme

theme = nil
File.open('alacritty.yml').each do |l|
  #
  # [Theme:themes/falcon.yaml]
  #
  next unless md=l.match(/\[Theme\:(themes\/[\w.]+)/)
  theme, = md.captures

  break if theme # short-circuit
end
File.write('.theme', theme) if theme
