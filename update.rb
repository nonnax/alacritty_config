#!/usr/bin/env ruby
require 'rubytools/string_ext'
require 'rubytools/fzf'

theme=Dir['themes/*'].fzf.first

fail 'no theme found' unless theme

theme_val=File.read(theme)

theme=File.basename(theme)

puts DATA.read.render(binding)

__END__
# Configuration for Alacritty, the GPU enhanced terminal emulator

# Any items in the `env` entry below will be added as
# environment variables. Some entries may override variables
# set by alacritty it self.
env:
  # TERM env customization.
  #
  # If this property is not set, alacritty will set it to xterm-256color.
  #
  # Note that some xterm terminfo databases don't declare support for italics.
  # You can verify this by checking for the presence of `smso` and `sitm` in
  # `infocmp xterm-256color`.
  # TERM: xterm-256color-italic
  TERM: alacritty
  LANG: "en_US.UTF-8"
  LC_CTYPE: en_US.UTF-8
  
  import:
    /home/seti/.config/alacritty/themes/<%=theme%>
    # /home/seti/.config/alacritty/themes/afterglow.yaml
    # /home/seti/.config/alacritty/themes/material_theme_mod.yaml
    # /home/seti/.config/alacritty/themes/tokyo-night-storm.yaml
    # /home/seti/.config/alacritty/themes/konsole_linux.yaml
    # /home/seti/.config/alacritty/themes/high_contrast.yaml
    # /home/seti/.config/alacritty/themes/material_theme.yaml

window:
  # Window dimensions (changes require restart)
  #
  # Specified in number of columns/lines, not pixels. If both are zero this
  # setting is ignored.
  dimensions:
    # columns: 100
    # lines: 85
    # columns: 120
    # lines: 100
    columns: 120
    lines: 100

  # Window padding (changes require restart)
  #
  # Blank space added around the window in pixels. This padding is not scaled by
  # DPI and the specified value is always added at both opposing sides.
  padding:
    x: 2
    y: 2

  # Spread additional padding evenly around the terminal content.
  dynamic_padding: false

  # Window decorations
  #
  # Available values:
  # - full: borders and title bar
  # - none: neither borders nor title bar
  # - transparent: title bar, transparent background and title bar buttons
  # - buttonless: title bar, transparent background, but no title bar buttons
  decorations: Full

  # Startup Mode (changes require restart)
  #
  # Values for `startup_mode`:
  #   - Windowed
  #   - Maximized
  #   - Fullscreen
  #
  # Values for `startup_mode` (macOS only):
  #   - SimpleFullscreen
  startup_mode: Windowed

scrolling:
  # maximum number of lines in the scrollback buffer. Specifying '0' will
  # disable scrolling.
  history: 500

  # Number of lines the viewport will move for every line scrolled when
  # scrollback is enabled (history > 0).
  multiplier: 3

# Font configuration (changes require restart)
font:
  # The normal (roman) font face to use.
  # Style can be specified to pick a specific face.
  normal:
    # family: MonofurForPowerline Nerd Font
    # family: Antikor Text
    # family: Monaco B2
    # family: Hermit
    family: Monoid Nerd Font
    # family: Monaco
    # family: "MonofurForPowerline Nerd Font"
    # family: "Fira Code"
    # family: "Source Code Pro"
    # style: Retina
    # style: Book
    style: Bold

  # The bold font face
  bold:
    # family: MonofBurForPowerline Nerd Font
    # family: Monaco B2
    # family: Hermit
    family: Monoid Nerd Font
    # family: Monaco
    # family: Antikor Text
    style: Bold
    # family: "Monaco"
    # family: "Fira Code"
    # family: "Source Code Pro"

  # The italic font face
  # italic:
    # family: Antikor Sans
    # style: "Light Italic"
    # style: "Light Oblique"
    # family: "Fira Code"
    # family: "Source Code Pro"
    # style: "Medium Italic"

  # Point size of the font
  size: 8
  # Offset is the extra space around each character. offset.y can be thought of
  # as modifying the linespacing, and offset.x as modifying the letter spacing.
  offset:
    x: 0
    y: 0

  # Glyph offset determines the locations of the glyphs within their cells with
  # the default being at the bottom. Increase the x offset to move the glyph to
  # the right, increase the y offset to move the glyph upward.
  glyph_offset:
    x: 0
    y: 0

  # Thin stroke font rendering (macOS only)
  #
  # Thin strokes are suitable for retina displays, but for non-retina you
  # probably want this set to false.
  #
  # macOS >= 10.14.x:
  #
  # If the font quality on non-retina display looks bad then set
  # `use_thin_strokes` to `true` and enable font smoothing by running the
  # following command:
  #   `defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO`
  #
  # This is a global setting and will require a log out or restart to take
  # effect.
  use_thin_strokes: true
  

# When true, bold text is drawn using the bright variant of colors.
# draw_bold_text_with_bright_colors: true
# Use custom cursor colors. If true, display the cursor in the cursor.foreground
# and cursor.background colors, otherwise invert the colors of the cursor.
# custom_cursor_colors: false

# Colors
# colors:
  # primary:
    # background: '0x272a34'
    # foreground: '0xFFFFFF'
# 
  # normal:
    # black:   '0x1F2229'
    # red:     '0xEC0101'
    # green:   '0x47D4B9'
    # yellow:  '0xFF8A18'
    # blue:    '0x277FFF'
    # magenta: '0xD71655'
    # cyan:    '0x05A1F7'
    # white:   '0xFFFFFF'
# 
# 
  # bright:
    # black:   '0x1F2229'
    # red:     '0xD41919'
    # green:   '0x5EBDAB'
    # yellow:  '0xFEA44C'
    # blue:    '0x367bf0'
    # magenta: '0xBF2E5D'
    # cyan:    '0x49AEE6'
    # white:   '0xFFFFFF'
    
  # COLORSCHEME: /home/seti/.config/alacritty/themes/<%=theme%>
  
<%= theme_val%>

# Colors (Gruvbox Material Dark Medium)
# colors:
  # primary:
    # background: '0x282828'
    # foreground: '0xdfbf8e'
# 
  # normal:
    # black:   '0x665c54'
    # red:     '0xea6962'
    # green:   '0xa9b665'
    # yellow:  '0xe78a4e'
    # blue:    '0x7daea3'
    # magenta: '0xd3869b'
    # cyan:    '0x89b482'
    # white:   '0xdfbf8e'
# 
  # bright:
    # black:   '0x928374'
    # red:     '0xea6962'
    # green:   '0xa9b665'
    # yellow:  '0xe3a84e'
    # blue:    '0x7daea3'
    # magenta: '0xd3869b'
    # cyan:    '0x89b482'
    # white:   '0xdfbf8e'
 

  # Indexed Colors
  #
  # The indexed colors include all colors from 16 to 256.
  # When these are not set, they're filled with sensible defaults.
  #
  # Example:
  #   `- { index: 16, color: '0xff00ff' }`
  #
  indexed_colors:
    - {index: 16, color: '0xfd8900'}
    - {index: 17, color: '0xcc6633'}
    - {index: 18, color: '0x202020'}
    - {index: 19, color: '0x303030'}
    - {index: 20, color: '0xb0b0b0'}
    - {index: 21, color: '0xe0e0e0'}
  cursor:
    text: '0x151515'
    cursor: '0xd0d0d0'

  # Normal colors
bell:
  animation: EaseOutExpo
  color: '0xffffff'
  duration: 0

# Background opacity
window.opacity: 0.75

# Key bindings
#
# Key bindings are specified as a list of objects. Each binding will specify a
# key and modifiers required to trigger it, terminal modes where the binding is
# applicable, and what should be done when the key binding fires. It can either
# send a byte sequence to the running application (`chars`), execute a
# predefined action (`action`) or fork and execute a specified command plus
# arguments (`command`).
#
# Bindings are always filled by default, but will be replaced when a new binding
# with the same triggers is defined. To unset a default binding, it can be
# mapped to the `None` action.
#
# Example:
#   `- { key: V, mods: Control|Shift, action: Paste }`
#
# Available fields:
#   - key
#   - mods (optional)
#   - chars | action | command (exactly one required)
#   - mode (optional)
#
# Values for `key`:
#   - `A` -> `Z`
#   - `F1` -> `F12`
#   - `Key1` -> `Key0`
#
#   A full list with available key codes can be found here:
#   https://docs.rs/glutin/*/glutin/enum.VirtualKeyCode.html#variants
#
#   Instead of using the name of the keys, the `key` field also supports using
#   the scancode of the desired key. Scancodes have to be specified as a
#   decimal number.
#   This command will allow you to display the hex scancodes for certain keys:
#     `showkey --scancodes`
#
# Values for `mods`:
#   - Command
#   - Control
#   - Option
#   - Super
#   - Shift
#   - Alt
#
#   Multiple `mods` can be combined using `|` like this: `mods: Control|Shift`.
#   Whitespace and capitalization is relevant and must match the example.
#
# Values for `chars`:
#   The `chars` field writes the specified string to the terminal. This makes
#   it possible to pass escape sequences.
#   To find escape codes for bindings like `PageUp` ("\x1b[5~"), you can run
#   the command `showkey -a` outside of tmux.
#   Note that applications use terminfo to map escape sequences back to
#   keys. It is therefore required to update the terminfo when
#   changing an escape sequence.
#
# Values for `action`:
#   - Paste
#   - PasteSelection
#   - Copy
#   - IncreaseFontSize
#   - DecreaseFontSize
#   - ResetFontSize
#   - ScrollPageUp
#   - ScrollPageDown
#   - ScrollLineUp
#   - ScrollLineDown
#   - ScrollToTop
#   - ScrollToBottom
#   - ClearHistory
#   - Hide
#   - Quit
#   - ClearLogNotice
#   - SpawnNewInstance
#   - ToggleFullscreen
#   - None
#
# Values for `action` (macOS only):
#   - ToggleSimpleFullscreen: Enters fullscreen without occupying another space
#
# Values for `command`:
#   The `command` field must be a map containing a `program` string and
#   an `args` array of command line parameter strings.
#
#   Example:
#       `command: { program: "alacritty", args: ["-e", "vttest"] }`
#
# Values for `mode`:
#   - ~AppCursor
#   - AppCursor
#   - ~AppKeypad
#   - AppKeypad
#
key_bindings:
  - {key: V, mods: Command, action: Paste}
  - {key: C, mods: Command, action: Copy}
  - {key: Q, mods: Command, action: Quit}
  - {key: N, mods: Command, action: SpawnNewInstance}
  - {key: Return, mods: Command, action: ToggleFullscreen}

  - {key: Home, chars: "\eOH", mode: AppCursor}
  - {key: Home, chars: "\e[H", mode: ~AppCursor}
  - {key: End, chars: "\eOF", mode: AppCursor}
  - {key: End, chars: "\e[F", mode: ~AppCursor}
  - {key: Equals, mods: Command, action: IncreaseFontSize}
  - {key: Minus, mods: Command, action: DecreaseFontSize}
  - {key: Minus, mods: Command|Shift, action: ResetFontSize}
  - {key: PageUp, mods: Shift, chars: "\e[5;2~"}
  - {key: PageUp, mods: Control, chars: "\e[5;5~"}
  - {key: PageUp, chars: "\e[5~"}
  - {key: PageDown, mods: Shift, chars: "\e[6;2~"}
  - {key: PageDown, mods: Control, chars: "\e[6;5~"}
  - {key: PageDown, chars: "\e[6~"}
  - {key: Left, mods: Shift, chars: "\e[1;2D"}
  - {key: Left, mods: Control, chars: "\e[1;5D"}
  - {key: Left, mods: Alt, chars: "\e[1;3D"}
  - {key: Left, chars: "\e[D", mode: ~AppCursor}
  - {key: Left, chars: "\eOD", mode: AppCursor}
  - {key: Right, mods: Shift, chars: "\e[1;2C"}
  - {key: Right, mods: Control, chars: "\e[1;5C"}
  - {key: Right, mods: Alt, chars: "\e[1;3C"}
  - {key: Right, chars: "\e[C", mode: ~AppCursor}
  - {key: Right, chars: "\eOC", mode: AppCursor}
  - {key: Up, mods: Shift, chars: "\e[1;2A"}
  - {key: Up, mods: Control, chars: "\e[1;5A"}
  - {key: Up, mods: Alt, chars: "\e[1;3A"}
  - {key: Up, chars: "\e[A", mode: ~AppCursor}
  - {key: Up, chars: "\eOA", mode: AppCursor}
  - {key: Down, mods: Shift, chars: "\e[1;2B"}
  - {key: Down, mods: Control, chars: "\e[1;5B"}
  - {key: Down, mods: Alt, chars: "\e[1;3B"}
  - {key: Down, chars: "\e[B", mode: ~AppCursor}
  - {key: Down, chars: "\eOB", mode: AppCursor}
  - {key: Tab, mods: Shift, chars: "\e[Z"}
  - {key: F1, chars: "\eOP"}
  - {key: F2, chars: "\eOQ"}
  - {key: F3, chars: "\eOR"}
  - {key: F4, chars: "\eOS"}
  - {key: F5, chars: "\e[15~"}
  - {key: F6, chars: "\e[17~"}
  - {key: F7, chars: "\e[18~"}
  - {key: F8, chars: "\e[19~"}
  - {key: F9, chars: "\e[20~"}
  - {key: F10, chars: "\e[21~"}
  - {key: F11, chars: "\e[23~"}
  - {key: F12, chars: "\e[24~"}
  - {key: Back, chars: "\x7F"}
  - {key: Back, mods: Alt, chars: "\e\x7F"}
  - {key: Insert, chars: "\e[2~"}
  - {key: Delete, chars: "\e[3~"}
  - {key: W, mods: Command, chars: "\x02&"}                                       # close tab (kill)
  - {key: T, mods: Command, chars: "\x02c"}                                       # new tab
  - {key: RBracket, mods: Command|Shift, chars: "\x02n"}                          # select next tab
  - {key: LBracket, mods: Command|Shift, chars: "\x02p"}                          # select previous tab
  - {key: RBracket, mods: Command, chars: "\x02o"}                                # select next pane
  - {key: LBracket, mods: Command, chars: "\x02;"}                                # select last (previously used) pane
  - {key: F, mods: Command, chars: "\x02/"}                                       # search (upwards) (see tmux.conf)

mouse:
  # Click settings
  #
  # The `double_click` and `triple_click` settings control the time
  # alacritty should wait for accepting multiple clicks as one double
  # or triple click.
  double_click: {threshold: 300}
  triple_click: {threshold: 300}

  # If this is `true`, the cursor is temporarily hidden when typing.
  hide_when_typing: true

  # URL launcher
  # url:
    # This program is executed when clicking on a text which is recognized as a URL.
    # The URL is always added to the command as the last parameter.
    #
    # When set to `None`, URL launching will be disabled completely.
    #
    # Default:
    #   - (macOS) open
    #   - (Linux) xdg-open
    #   - (Windows) explorer
    # launcher:
    #   program: xdg-open
    #   args: []

    # These are the modifiers that need to be held down for opening URLs when clicking
    # on them. The available modifiers are documented in the key binding section.
    # modifiers: Control|Shift

selection:
  semantic_escape_chars: ",│`|:\"' ()[]{}<>"

  # When set to `true`, selected text will be copied to the primary clipboard.
  save_to_clipboard: true

# Mouse bindings
#
# Available fields:
# - mouse
# - action
# - mods (optional)
#
# Values for `mouse`:
# - Middle
# - Left
# - Right
# - Numeric identifier such as `5`
#
# All available `mods` and `action` values are documented in the key binding
# section.
mouse_bindings:
  - {mouse: Middle, action: PasteSelection}

cursor:
  # Cursor style
  #
  # Values for 'style':
  #   - ▇ Block
  #   - _ Underline
  #   - | Beam
  style: Block

  # If this is `true`, the cursor will be rendered as a hollow box when the
  # window is not focused.
  unfocused_hollow: true

# dynamic_title: false

# Live config reload (changes require restart)
live_config_reload: true

# Shell
#
# You can set shell.program to the path of your favorite shell, e.g. /bin/fish.
# Entries in shell.args are passed unmodified as arguments to the shell.
shell:
  # program: /usr/bin/zsh
  program: /usr/bin/bash
  # args:
    # - --command=tmux

debug:
  # Should display the render timer
  render_timer: false

  # Keep the log file after quitting Alacritty.
  persistent_logging: false

  # Log level
  #
  # Values for `log_level`:
  #   - OFF
  #   - ERROR
  #   - WARN
  #   - INFO
  #   - DEBUG
  #   - TRACE
  log_level: OFF

  # Print all received window events.
  print_events: false

  # Record all characters and escape sequences as test data.
  ref_test: false

# vim: nospell
