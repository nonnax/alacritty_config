#!/usr/bin/env ruby
# Id$ nonnax 2022-03-13 21:46:00 +0800
# 
# logs selected theme to .theme
# 
theme=nil
File.open('alacritty.yml').each do |l|
  theme=l.scan(/[.\w]+/).last if l.match?(/Theme:/)
end

File.write('.theme', %W[themes #{theme}].join('/')) if theme
