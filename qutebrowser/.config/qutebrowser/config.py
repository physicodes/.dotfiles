# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# loading color from pywal's .json file
import json
with open('/home/josh/.cache/wal/colors.json', 'r') as colors_json:
    wal_colors = json.load(colors_json)['colors']

# thicker tabs
config.set('tabs.padding', { 'top': 15, 'bottom': 15, 'left': 10, 'right': 10 })

# set a few colours from wal
dark = wal_colors['color0']
color = wal_colors['color5']
color_alt = wal_colors['color2']
light = wal_colors['color8']

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = color

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = dark

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = dark

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = color_alt

# Background color of the completion widget category headers.
c.colors.completion.category.bg = dark

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = dark

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = dark

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = color

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = dark

# Top border color of the completion widget category headers.
c.colors.completion.item.selected.border.top = dark

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = dark

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = color

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = color

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = color

# Background color for the download bar.
c.colors.downloads.bar.bg = dark

# Color gradient start for download text.
c.colors.downloads.start.fg = dark

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = color

# Color gradient end for download text.
c.colors.downloads.stop.fg = dark

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = color_alt

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = dark

# Font color for hints.
c.colors.hints.fg = dark

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
c.colors.hints.bg = color

# Font color for the matched part of hints.
c.colors.hints.match.fg = color_alt

# Text color for the keyhint widget.
c.colors.keyhint.fg = dark

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = color_alt

# Background color of the keyhint widget.
c.colors.keyhint.bg = color

# Foreground color of an error message.
c.colors.messages.error.fg = dark

# Background color of an error message.
c.colors.messages.error.bg = color_alt

# Border color of an error message.
c.colors.messages.error.border = color_alt

# Foreground color of a warning message.
c.colors.messages.warning.fg = dark

# Background color of a warning message.
c.colors.messages.warning.bg = color_alt

# Border color of a warning message.
c.colors.messages.warning.border = color_alt

# Foreground color of an info message.
c.colors.messages.info.fg = dark

# Background color of an info message.
c.colors.messages.info.bg = color

# Border color of an info message.
c.colors.messages.info.border = color

# Foreground color for prompts.
c.colors.prompts.fg = dark

# Border used around UI elements in prompts.
c.colors.prompts.border = dark

# Background color for prompts.
c.colors.prompts.bg = color

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = color

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = color

# Background color of the statusbar.
c.colors.statusbar.normal.bg = dark

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = color

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = dark

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = color

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = dark

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = color

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = dark

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = color

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = dark

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = color

# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = dark

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = color

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = dark

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = color

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = dark

# Background color of the progress bar.
c.colors.statusbar.progress.bg = dark

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = color

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = color_alt

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = color

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = color

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = color

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = color_alt

# Background color of the tab bar.
c.colors.tabs.bar.bg = light

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = color

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = color_alt

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = color_alt

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = color

# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = dark

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = color

# Background color of unselected even tabs.
c.colors.tabs.even.bg = dark

# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = dark

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = color

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = dark

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = color

# Background color for webpages if unset (or empty to use the theme's
# color).
# c.colors.webpage.bg = base00
