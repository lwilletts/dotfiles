# config.py
# pylint: disable=C0111
# qute://help/configuring.html
# qute://help/settings.html

import os
from qutebrowser.api import interceptor
from qutebrowser.utils import objreg, utils
from qutebrowser.browser import commands
from qutebrowser.api import cmdutils

config.load_autoconfig()

c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt', 'https://easylist.to/easylist/easyprivacy.txt', 'https://easylist-downloads.adblockplus.org/easylistdutch.txt', 'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt', 'https://www.i-dont-care-about-cookies.eu/abp/', 'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt']
c.content.blocking.enabled = True
c.content.blocking.whitelist = ['googleadservices.com', 'adservice.google.com']
config.bind('Ctrl-o', 'config-cycle content.blocking.enabled')

# start
c.url.start_pages = ['file:///home/fyr/usr/start/start.html']
c.url.default_page = 'file:///home/fyr/usr/start/start.html'

# sane defaults
c.backend = 'webengine'
c.auto_save.interval = 10000
c.auto_save.session = True
c.editor.command = ['foot', 'nvim', '{file}', "+call cursor({line}, {column})"]
c.spellcheck.languages = ['en-GB']
c.session.lazy_restore = True
c.confirm_quit = ['downloads']
c.input.escape_quits_reporter = True
c.input.forward_unbound_keys = 'auto'
c.content.geolocation = False
c.session.default_name = None

# c.fileselect.handler = 'externa'
# c.fileselect.multiple_files.command = 'fff'
# c.fileselect.single_file.command = 'fff'

# custom shortcuts
c.aliases = {'h': 'help', 'q': 'close', 'x': 'quit --save'}

# defaults
config.bind('j', 'scroll-px 0 100')
config.bind('k', 'scroll-px 0 -100')
# config.bind('j', 'scroll down')
# config.bind('k', 'scroll up')
config.bind('b', 'cmd-set-text -s :tab-select ')
config.bind('return', 'selection-follow')
config.bind('cx', 'download-cancel')
config.bind('<Ctrl-s>', 'config-source ~/.config/qutebrowser/config.py')
config.bind('<Ctrl-E>', 'config-edit', mode='normal')


# mouse
c.input.mouse.rocker_gestures = False
c.input.mouse.back_forward_buttons = False

# tab management
config.bind('<Ctrl-j>', 'tab-move -')
config.bind('<Ctrl-k>', 'tab-move +')
config.bind('<Shift-k>', 'tab-next')
config.bind('<Shift-j>', 'tab-prev')
config.bind('<Shift-d>', 'tab-clone')

# quickmarks
config.bind('am', 'quickmark-load -t mail')
config.bind('ag', 'quickmark-load -t github')
config.bind('ar', 'quickmark-load -t reddit')
config.bind('ay', 'quickmark-load -t youtube')

# sessions
config.bind('e', 'cmd-set-text -s :session-load ')
config.bind('<Shift-e>', 'cmd-set-text -s :session-save -o ')

# downloads
config.bind('<Ctrl-d>', 'spawn qutedl {url}')
config.bind('<Ctrl-f>', 'spawn yt-dlp -x {url}')
config.bind('<Ctrl-o>', 'spawn mpv {url}')

# yank
config.bind("<y><o>", "yank inline [[{url}][{title}]]")

# passthrough mode
config.bind('<Ctrl-V>', 'mode-enter passthrough')
config.bind('<Shift-Z>', 'mode-leave', mode='passthrough')

# insert mode
config.bind('<Escape>', 'mode-leave', mode='insert')
config.bind('<Shift-Ins>', 'insert-text {primary}', mode='insert')

# insert
c.input.insert_mode.auto_load = False
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_enter = True
c.input.insert_mode.leave_on_load = True
c.input.insert_mode.plugins = False

# hints - number: Use numeric hints. (In this mode you can also type letters from the hinted element to filter and reduce the number of elements that are hinted.) letter: Use the characters in the `hints.chars` setting.  - word: Use hints words based on the html elements and the extra words. c.hints.mode = 'letter' c.hints.chars = 'asdfhjkl' c.hints.dictionary = '/usr/share/dict/words' c.hints.min_chars = 1
# - always: Auto-follow whenever there is only a single hint on a page.  - unique-match: Auto-follow whenever there is a unique non-empty match in either the hint string (word mode) or filter (number mode).  - full-match: Follow the hint when the user typed the whole hint (letter, word or number mode) or the element's text (only in number mode).  - never: The user will
# always need to press Enter to follow a hint.

c.hints.auto_follow = 'unique-match'
c.hints.auto_follow_timeout = 0

# Hide unmatched hints in rapid mode.
# c.hints.hide_unmatched_rapid_hints = True

# URL parameters to strip with `:yank url`.
# Type: List of String
# c.url.yank_ignored_parameters = ['ref', 'utm_source', 'utm_medium', 'utm_campaign', 'utm_term', 'utm_content']

# zoom
c.zoom.default = '100%'
c.zoom.levels = ['50%', '67%', '75%', '90%', '100%', '110%', '125%', '150%']
c.zoom.mouse_divider = 512

# statusbar
c.statusbar.show = 'in-mode'
c.statusbar.position = 'bottom'
# c.statusbar.widgets = ['url', 'scroll']
c.statusbar.padding = {'top': 5, 'bottom': 5, 'left': 5, 'right': 5}

# completion
c.completion.show = 'always'
c.completion.delay = 0
c.completion.quick = True
c.completion.shrink = True
c.completion.height = '20%'
c.completion.min_chars = 1
c.completion.scrollbar.width = 0
c.completion.scrollbar.padding = 10
c.completion.use_best_match = False
c.completion.cmd_history_max_items = -1
c.completion.timestamp_format = '%d-%m-%Y-%H:%M:%S'
c.completion.open_categories = ['bookmarks', 'quickmarks', 'history']

# tabs
# position
c.tabs.position = 'top'
c.tabs.width = 200
c.tabs.max_width = 110
c.tabs.min_width = 110
c.tabs.padding = {'top': 10, 'bottom': 10, 'left': 10, 'right': 10}
c.tabs.title.alignment = 'left'


c.window.title_format = '{current_title}'
c.tabs.title.format = '{current_title}'
c.tabs.title.format_pinned = '{current_title}'

# indicator
c.tabs.favicons.show = 'always'
c.tabs.indicator.width = 0
c.tabs.indicator.padding = {'top': 5, 'bottom': 10, 'left': 10, 'right': 10}

# behaviour
c.tabs.wrap = False
c.tabs.background = True
c.tabs.last_close = 'close'
c.tabs.close_mouse_button = 'right'
c.tabs.close_mouse_button_on_bar = 'new-tab'
c.tabs.mode_on_change = 'normal'
c.tabs.mousewheel_switching = True
c.tabs.new_position.stacking = True
c.tabs.new_position.related = 'next'
c.tabs.new_position.unrelated = 'next'
c.tabs.select_on_remove = 'next'
c.tabs.pinned.frozen = True
c.tabs.pinned.shrink = True
c.tabs.tabs_are_windows = False
c.tabs.undo_stack_size = -1
c.tabs.show = 'always'
c.tabs.show_switching_delay = 250
c.new_instance_open_target = 'tab-silent'
c.new_instance_open_target_window = 'first-opened'
c.tabs.tooltips = True

# downloads
c.downloads.position = 'bottom'
c.downloads.remove_finished = -1
c.downloads.location.prompt = False
c.downloads.location.remember = True
c.downloads.location.suggestion = 'both'
c.downloads.location.directory = '/home/fyr/tmp'

# show a filebrowser in upload/download prompts.
c.prompt.filebrowser = True
c.downloads.open_dispatcher = None

# privacy & content
# c.content.headers.user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'
c.content.headers.do_not_track = True
# c.content.host_blocking.enabled = True

# List of URLs of lists which contain hosts to block.  The file can be
# in one of the following formats:  - An `/etc/hosts`-like file - One
# host per line - A zip-file of any of the above, with either only one
# file, or a file   named `hosts` (with any extension).  It's also
# possible to add a local file or directory via a `file://` URL. In case
# of a directory, all files in the directory are read as dblock lists.
# The file `~/.config/qutebrowser/blocked-hosts` is always read if it
# c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']



#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
c.content.cookies.accept = 'no-3rdparty'
c.content.cookies.store = True
c.content.autoplay = False

# javascript
c.content.javascript.enabled = True
c.content.javascript.can_open_tabs_automatically = False
c.content.javascript.clipboard = 'none'
c.content.javascript.alert = True
c.content.javascript.prompt = True

    # fonts
c.fonts.web.size.minimum = 8
c.fonts.web.size.minimum_logical = 8

# monospace fonts
c.fonts.hints = '8pt cozette'
c.fonts.keyhint = '8pt cozette'
c.fonts.prompts = '8pt cozette'
c.fonts.downloads = '8pt cozette'
c.fonts.statusbar = '8pt cozette'
c.fonts.contextmenu = '8pt cozette'
c.fonts.messages.info = '8pt cozette'
c.fonts.debug_console = '8pt cozette'
c.fonts.messages.error = '8pt cozette'
c.fonts.completion.entry = '8pt cozette'
c.fonts.completion.category = '8pt cozette'
c.fonts.tabs.selected = '8pt cozette'
c.fonts.tabs.unselected = '8pt cozette'

# c.fonts.web.family.cursive
# c.fonts.web.family.fantasy
# c.fonts.web.family.fixed
# c.fonts.web.family.sans_serif
# c.fonts.web.family.serif
# c.fonts.web.family.standard
# c.fonts.web.size.default
# c.fonts.web.size.default_fixed

# colors

# dark mode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = "auto"
c.colors.webpage.bg = '#121212'
c.colors.webpage.darkmode.contrast = 0.5

# lightness-hsl brightness-rgb
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'

c.colors.webpage.darkmode.policy.page = 'always'
c.colors.webpage.darkmode.policy.images = 'never'
# c.colors.webpage.darkmode.threshold.foreground = 256
# c.colors.webpage.darkmode.threshold.background = 0

# command bar
c.colors.statusbar.command.bg = '#121212'
c.colors.statusbar.command.fg = '#D9EAE2'
c.colors.statusbar.command.private.bg = '#121212'
c.colors.statusbar.command.private.fg = '#D9EAE2'
# status bar
c.colors.statusbar.normal.bg = '#121212'
c.colors.statusbar.normal.fg = '#D9EAE2'
c.colors.statusbar.private.bg = '#121212'
c.colors.statusbar.private.fg = '#D9EAE2'
# statusbar insert mode
c.colors.statusbar.insert.bg = '#D9EAE2'
c.colors.statusbar.insert.fg = '#121212'
# default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = '#D9EAE2'
c.colors.statusbar.url.success.http.fg = '#D9EAE2'
c.colors.statusbar.url.success.https.fg = '#D9EAE2'
# background color of the progress bar.
c.colors.statusbar.progress.bg = '#121212'
# foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = '#CA3448'
c.colors.statusbar.url.error.fg = '#60C8B1'

# hints
c.colors.hints.bg = '#D9EAE2'
c.colors.hints.fg = '#121212'
c.colors.hints.match.fg = '#D9EAE2'
c.hints.border = '1px solid' + str('#D9EAE2')

# background color of an error message
c.colors.messages.error.bg = '#D9EAE2'
c.colors.messages.error.fg = '#121212'
# downloads with errors
c.colors.downloads.error.bg = '#CA3448'
c.colors.downloads.error.fg = '#121212'

# background color for the download bar.
c.colors.downloads.bar.bg = '#121212'
# color gradient start for download backgrounds.
c.colors.downloads.start.bg = '#60C8B1'
c.colors.downloads.start.fg = '#121212'
c.colors.downloads.stop.bg = '#B8A0C0'
c.colors.downloads.stop.fg = '#121212'

#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'rgb'
c.colors.downloads.system.fg = 'rgb'

# completion
c.colors.completion.category.bg = '#9FB9A8'
c.colors.completion.category.fg = '#121212'
c.colors.completion.category.border.top = '#9FB9A8'
c.colors.completion.category.border.bottom = '#121212'

# text color of the completion widget.
c.colors.completion.fg = '#D9EAE2'
c.colors.completion.item.selected.bg = '#D9EAE2'
c.colors.completion.item.selected.fg = '#121212'
c.colors.completion.item.selected.border.top = '#121212'
c.colors.completion.item.selected.border.bottom = '#121212'

# foreground color of the matched text in the completion.
c.colors.completion.match.fg = '#CA3448'
c.colors.completion.odd.bg = '#121212'
c.colors.completion.even.bg = '#121212'
# color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = '#9FB9A8'
c.colors.completion.scrollbar.fg = '#121212'

# Background color of the keyhint widget.
# c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'
# Text color for the keyhint widget.
# c.colors.keyhint.fg = '#FFFFFF'
# c.colors.keyhint.suffix.fg = '#FFFF00'

# Foreground color of an error message.
c.colors.messages.error.fg = '#121212'
c.colors.messages.error.border = '#CA3448'

# Background color of an info message.
c.colors.messages.info.bg = '#121212'
c.colors.messages.info.border = '#D9EAE2'
c.colors.messages.info.fg = '#D9EAE2'

c.colors.messages.warning.bg = '#B8A0C0'
c.colors.messages.warning.border = '#B8A0C0'
c.colors.messages.warning.fg = '#CA3448'

# Background color for prompts.
# c.colors.prompts.bg = '#444444'
# Border used around UI elements in prompts.
# c.colors.prompts.border = '1px solid gray'
# Foreground color for prompts.
# c.colors.prompts.fg = 'white'

# Background color for the selected item in filename prompts.
# c.colors.prompts.selected.bg = 'grey'

# Background color of the statusbar in caret mode.
# c.colors.statusbar.caret.bg = 'purple'

# Foreground color of the statusbar in caret mode.
# c.colors.statusbar.caret.fg = 'white'

# color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = '#D9EAE2'
c.colors.statusbar.caret.selection.fg = '#121212'

c.colors.statusbar.passthrough.bg = '#D9EAE2'
c.colors.statusbar.passthrough.fg = '#121212'

# tab
c.colors.tabs.bar.bg = '#121212'
c.colors.tabs.indicator.error = '#CA3448'

    # normal
c.colors.tabs.odd.fg = '#D9EAE2'
c.colors.tabs.odd.bg = '#121212'
c.colors.tabs.even.fg = '#D9EAE2'
c.colors.tabs.even.bg = '#121212'
c.colors.tabs.selected.odd.bg = '#D9EAE2'
c.colors.tabs.selected.odd.fg = '#121212'
c.colors.tabs.selected.even.bg = '#D9EAE2'
c.colors.tabs.selected.even.fg = '#121212'

    # pinned
c.colors.tabs.pinned.odd.fg = '#D9EAE2'
c.colors.tabs.pinned.odd.bg = '#121212'
c.colors.tabs.pinned.even.fg = '#D9EAE2'
c.colors.tabs.pinned.even.bg = '#121212'
c.colors.tabs.pinned.selected.odd.bg = '#D9EAE2'
c.colors.tabs.pinned.selected.odd.fg = '#121212'
c.colors.tabs.pinned.selected.even.bg = '#D9EAE2'
c.colors.tabs.pinned.selected.even.fg = '#121212'

# right-click menu
c.colors.contextmenu.menu.bg = '#121212'
c.colors.contextmenu.menu.fg = '#D9EAE2'
c.colors.contextmenu.selected.bg = '#D9EAE2'
c.colors.contextmenu.selected.fg = '#121212'

# patterns which should not be shown in the history.
# c.completion.web_history.exclude = []

c.completion.web_history.max_items = -1

# Maximum number of pages to hold in the global memory page cache. The
# page cache allows for a nicer user experience when navigating forth or
# back to pages in the forward/back history, by pausing and resuming up
# to _n_ pages. For more information about the feature, please refer to:
# http://webkit.org/blog/427/webkit-page-cache-i-the-basics/
# Type: Int
# c.content.cache.maximum_pages = 0

# Size (in bytes) of the HTTP network cache. Null to use the default
# value. With QtWebEngine, the maximum supported value is 2147483647 (~2
# GB).
# Type: Int
# c.content.cache.size = None

# Allow websites to read canvas elements. Note this is needed for some
# websites to work properly.
# Type: Bool
# c.content.canvas_reading = True

c.content.desktop_capture = 'ask'

# Try to pre-fetch DNS entries to speed up browsing.
c.content.dns_prefetch = True

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
# c.content.headers.accept_language = 'en-US'

# Custom headers for qutebrowser HTTP requests.
# Type: Dict
# c.content.headers.custom = {}

# When to send the Referer header. The Referer header tells websites
# from which website you were coming from when visiting them. No restart
# is needed with QtWebKit.
# Type: String
# Valid values:
#   - always: Always send the Referer.
#   - never: Never send the Referer. This is not recommended, as some sites may break.
#   - same-domain: Only send the Referer for the same domain. This will still protect your privacy, but shouldn't break any sites. With QtWebEngine, the referer will still be sent for other domains, but with stripped path information.
# c.content.headers.referer = 'same-domain'

# Enable hyperlink auditing (`<a ping>`).
# Type: Bool
# c.content.hyperlink_auditing = False

# Load images automatically in web pages.
# Type: Bool
# c.content.images = True

# Log levels to use for JavaScript console logging messages. When a
# JavaScript message with the level given in the dictionary key is
# logged, the corresponding dictionary value selects the qutebrowser
# logger to use. On QtWebKit, the "unknown" setting is always used.
# Type: Dict
# c.content.javascript.log = {'unknown': 'debug', 'info': 'debug', 'warning': 'debug', 'error': 'debug'}

# Use the standard JavaScript modal dialog for `alert()` and
# `confirm()`.
# Type: Bool
# c.content.javascript.modal_dialog = False


# Allow locally loaded documents to access other local URLs.
# Type: Bool
# c.content.local_content_can_access_file_urls = True

# Allow locally loaded documents to access remote URLs.
# Type: Bool
# c.content.local_content_can_access_remote_urls = False

# Enable support for HTML 5 local storage and Web SQL.
# Type: Bool
# c.content.local_storage = True

# Allow websites to record audio/video.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
# c.content.media_capture = 'ask'

# Allow websites to lock your mouse pointer.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
c.content.mouse_lock = False

# Automatically mute tabs.
c.content.mute = False

# Netrc-file for HTTP authentication. If unset, `~/.netrc` is used.
# Type: File
# c.content.netrc_file = None

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
c.content.notifications.enabled = False
c.content.notifications.presenter = 'auto'
c.content.notifications.show_origin = False

# Allow pdf.js to view PDF files in the browser. Note that the files can
# still be downloaded by clicking the download button in the pdf.js
# viewer.
# Type: Bool
c.content.pdfjs = False

# Allow websites to request persistent storage quota via
# `navigator.webkitPersistentStorage.requestQuota`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
# c.content.persistent_storage = 'ask'

# Enable plugins in Web pages.
# Type: Bool
# c.content.plugins = False

# Draw the background color and images also when the page is printed.
# Type: Bool
# c.content.print_element_backgrounds = True

# Open new windows in private browsing mode which does not record
# visited pages.
# Type: Bool
# c.content.private_browsing = False

# Proxy to use. In addition to the listed values, you can use a
# `socks://...` or `http://...` URL.
# Type: Proxy
# Valid values:
#   - system: Use the system wide proxy.
#   - none: Don't use any proxy
# c.content.proxy = 'system'

# Send DNS requests over the configured proxy.
# Type: Bool
# c.content.proxy_dns_requests = True

# Allow websites to register protocol handlers via
# `navigator.registerProtocolHandler`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
# c.content.register_protocol_handler = 'ask'

# Validate SSL handshakes.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
# c.content.ssl_strict = 'ask'

# List of user stylesheet filenames to use.
# Type: List of File, or File
# c.content.user_stylesheets = []

# Enable WebGL.
# Type: Bool
# c.content.webgl = True

# limit fullscreen to the browser window (does not expand to fill the screen)
# c.content.windowed_fullscreen = False

# Monitor load requests for cross-site scripting attempts. Suspicious
# scripts will be blocked and reported in the inspector's JavaScript
# console.
# Type: Bool
# c.content.xss_auditing = True

# Comma-separated list of regular expressions to use for 'next' links.
# Type: List of Regex
# c.hints.next_regexes = ['\\bnext\\b', '\\bmore\\b', '\\bnewer\\b', '\\b[>→≫]\\b', '\\b(>>|»)\\b', '\\bcontinue\\b']

# Comma-separated list of regular expressions to use for 'prev' links.
# Type: List of Regex
# c.hints.prev_regexes = ['\\bprev(ious)?\\b', '\\bback\\b', '\\bolder\\b', '\\b[<←≪]\\b', '\\b(<<|«)\\b']

# Scatter hint key chains (like Vimium) or not (like dwb). Ignored for
# number hints.
# c.hints.scatter = True

# CSS selectors used to determine which elements on a page should have
# hints.
# Type: Dict
# c.hints.selectors = {'all': ['a', 'area', 'textarea', 'select', 'input:not([type="hidden"])', 'button', 'frame', 'iframe', 'img', 'link', 'summary', '[onclick]', '[onmousedown]', '[role="link"]', '[role="option"]', '[role="button"]', '[ng-click]', '[ngClick]', '[data-ng-click]', '[x-ng-click]', '[tabindex]'], 'links': ['a[href]', 'area[href]', 'link[href]', '[role="link"][href]'], 'images': ['img'], 'media': ['audio', 'img', 'video'], 'url': ['[src]', '[href]'], 'inputs': ['input[type="text"]', 'input[type="date"]', 'input[type="datetime-local"]', 'input[type="email"]', 'input[type="month"]', 'input[type="number"]', 'input[type="password"]', 'input[type="search"]', 'input[type="tel"]', 'input[type="time"]', 'input[type="url"]', 'input[type="week"]', 'input:not([type])', 'textarea']}

# Maximum time (in minutes) between two history items for them to be
# considered being from the same browsing session. Items with less time
# between them are grouped when being displayed in `:history`. Use -1 to
# disable separation.
# Type: Int
# c.history_gap_interval = 30

# Include hyperlinks in the keyboard focus chain when tabbing.
# Type: Bool
# c.input.links_included_in_focus_chain = True

# Timeout (in milliseconds) for partially typed key bindings. If the
# current input forms only partial matches, the keystring will be
# cleared after this time.
# Type: Int
# c.input.partial_timeout = 5000

# Enable spatial navigation. Spatial navigation consists in the ability
# to navigate between focusable elements in a Web page, such as
# hyperlinks and form controls, by using Left, Right, Up and Down arrow
# keys. For example, if the user presses the Right key, heuristics
# determine whether there is an element he might be trying to reach
# towards the right and which element he probably wants.
# Type: Bool
# c.input.spatial_navigation = False

# Keychains that shouldn't be shown in the keyhint dialog. Globs are
# supported, so `;*` will blacklist all keychains starting with `;`. Use
# `*` to disable keyhints.
# Type: List of String
# c.keyhint.blacklist = []

# Time (in milliseconds) from pressing a key to seeing the keyhint
# dialog.
# Type: Int
# c.keyhint.delay = 500

# Rounding radius (in pixels) for the edges of the keyhint dialog.
# Type: Int
# c.keyhint.radius = 6

# Duration (in milliseconds) to show messages in the statusbar for. Set
# to 0 to never clear messages.
# Type: Int
c.messages.timeout = 3000

#   - tab: Open a new tab in the existing window and activate the window.
#   - tab-bg: Open a new background tab in the existing window and activate the window.
#   - tab-silent: Open a new tab in the existing window without activating the window.
#   - tab-bg-silent: Open a new background tab in the existing window without activating the window.
#   - window: Open in a new window.
c.new_instance_open_target = 'tab'

# Rounding radius (in pixels) for the edges of prompts.
c.prompt.radius = 10

# Additional arguments to pass to Qt, without leading `--`. With
# QtWebEngine, some Chromium arguments (see
# https://peter.sh/experiments/chromium-command-line-switches/ for a
# list) will work.
# Type: List of String
# c.qt.args = ["blink-settings=darkMode=4"]

# Force a Qt platform to use. This sets the `QT_QPA_PLATFORM`
# environment variable and is useful to force using the XCB plugin when
# running QtWebEngine on Wayland.
# Type: String
# c.qt.force_platform = None

# Force software rendering for QtWebEngine. This is needed for
# QtWebEngine to work with Nouveau drivers and can be useful in other
# scenarios related to graphic issues.
# Type: String
# Valid values:
#   - software-opengl: Tell LibGL to use a software implementation of GL (`LIBGL_ALWAYS_SOFTWARE` / `QT_XCB_FORCE_SOFTWARE_OPENGL`)
#   - qt-quick: Tell Qt Quick to use a software renderer instead of OpenGL. (`QT_QUICK_BACKEND=software`)
#   - chromium: Tell Chromium to disable GPU support and use Skia software rendering instead. (`--disable-gpu`)
#   - none: Don't force software rendering.
# c.qt.force_software_rendering = 'none'

# Turn on Qt HighDPI scaling. This is equivalent to setting
# QT_AUTO_SCREEN_SCALE_FACTOR=1 in the environment. It's off by default
# as it can cause issues with some bitmap fonts. As an alternative to
# this, it's possible to set font sizes and the `zoom.default` setting.
# Type: Bool
# c.qt.highdpi = False

# When to use Chromium's low-end device mode. This improves the RAM
# usage of renderer processes, at the expense of performance.
# Type: String
# Valid values:
#   - always: Always use low-end device mode.
#   - auto: Decide automatically (uses low-end mode with < 1 GB available RAM).
#   - never: Never use low-end device mode.
# c.qt.low_end_device_mode = 'auto'

# Which Chromium process model to use. Alternative process models use
# less resources, but decrease security and robustness. See the
# following pages for more details:    -
# https://www.chromium.org/developers/design-documents/process-models
# - https://doc.qt.io/qt-5/qtwebengine-features.html#process-models
# Type: String
# Valid values:
#   - process-per-site-instance: Pages from separate sites are put into separate processes and separate visits to the same site are also isolated.
#   - process-per-site: Pages from separate sites are put into separate processes. Unlike Process per Site Instance, all visits to the same site will share an OS process. The benefit of this model is reduced memory consumption, because more web pages will share processes. The drawbacks include reduced security, robustness, and responsiveness.
#   - single-process: Run all tabs in a single process. This should be used for debugging purposes only, and it disables `:open --private`.
# c.qt.process_model = 'process-per-site-instance'

    # scroll + search
c.scrolling.bar = 'when-searching'
c.scrolling.smooth = False
c.search.ignore_case = 'smart'
c.search.incremental = True

# What search to start when something else than a URL is entered.
# Type: String
# Valid values:
#   - naive: Use simple/naive check.
#   - dns: Use DNS requests (might be slow!).
#   - never: Never search automatically.
# c.url.auto_search = 'naive'


# URL segments where `:navigate increment/decrement` will search for a
# number.
# Type: FlagList
# Valid values:
#   - host
#   - port
#   - path
#   - query
#   - anchor
# c.url.incdec_segments = ['path', 'query']

# Open base URL of the searchengine if a searchengine shortcut is
# invoked without parameters.
# Type: Bool
# c.url.open_base_url = False

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}



# Bindings for normal mode
# config.bind("'", 'enter-mode jump_mark')
# config.bind('+', 'zoom-in')
# config.bind('-', 'zoom-out')
# config.bind('.', 'repeat-command')
# config.bind('/', 'set-cmd-text /')
# config.bind(':', 'set-cmd-text :')
# config.bind(';I', 'hint images tab')
# config.bind(';O', 'hint links fill :open -t -r {hint-url}')
# config.bind(';R', 'hint --rapid links window')
# config.bind(';Y', 'hint links yank-primary')
# config.bind(';b', 'hint all tab-bg')
# config.bind(';d', 'hint links download')
# config.bind(';f', 'hint all tab-fg')
# config.bind(';h', 'hint all hover')
# config.bind(';i', 'hint images')
# config.bind(';o', 'hint links fill :open {hint-url}')
# config.bind(';r', 'hint --rapid links tab-bg')
# config.bind(';t', 'hint inputs')
# config.bind(';y', 'hint links yank')
# config.bind('<Alt-1>', 'tab-focus 1')
# config.bind('<Alt-2>', 'tab-focus 2')
# config.bind('<Alt-3>', 'tab-focus 3')
# config.bind('<Alt-4>', 'tab-focus 4')
# config.bind('<Alt-5>', 'tab-focus 5')
# config.bind('<Alt-6>', 'tab-focus 6')
# config.bind('<Alt-7>', 'tab-focus 7')
# config.bind('<Alt-8>', 'tab-focus 8')
# config.bind('<Alt-9>', 'tab-focus -1')
# config.bind('<Alt-m>', 'tab-mute')
# config.bind('<Ctrl-A>', 'navigate increment')
# config.bind('<Ctrl-Alt-p>', 'print')
# config.bind('<Ctrl-B>', 'scroll-page 0 -1')
# config.bind('<Ctrl-D>', 'scroll-page 0 0.5')
# config.bind('<Ctrl-F5>', 'reload -f')
# config.bind('<Ctrl-F>', 'scroll-page 0 1')
# config.bind('<Ctrl-N>', 'open -w')
# config.bind('<Ctrl-Q>', 'quit')
# config.bind('<Ctrl-Return>', 'follow-selected -t')
# config.bind('<Ctrl-Shift-N>', 'open -p')
# config.bind('<Ctrl-Shift-T>', 'undo')
# config.bind('<Ctrl-Shift-Tab>', 'nop')
# config.bind('<Ctrl-Shift-W>', 'close')
# config.bind('<Ctrl-T>', 'open -t')
# config.bind('<Ctrl-Tab>', 'tab-focus last')
# config.bind('<Ctrl-U>', 'scroll-page 0 -0.5')
# config.bind('<Ctrl-W>', 'tab-close')
# config.bind('<Ctrl-X>', 'navigate decrement')
# config.bind('<Ctrl-^>', 'tab-focus last')
# config.bind('<Ctrl-h>', 'home')
# config.bind('<Ctrl-p>', 'tab-pin')
# config.bind('<Ctrl-s>', 'stop')
# config.bind('<Escape>', 'clear-keychain ;; search ;; fullscreen --leave')
# config.bind('<F11>', 'fullscreen')
# config.bind('<F5>', 'reload')
# config.bind('<Return>', 'follow-selected')
# config.bind('<back>', 'back')
# config.bind('<forward>', 'forward')
# config.bind('=', 'zoom')
# config.bind('?', 'set-cmd-text ?')
# config.bind('@', 'run-macro')
# config.bind('B', 'set-cmd-text -s :quickmark-load -t')
# config.bind('D', 'tab-close -o')
# config.bind('F', 'hint all tab')
# config.bind('G', 'scroll-to-perc')
# config.bind('H', 'back')
# config.bind('J', 'tab-next')
# config.bind('K', 'tab-prev')
# config.bind('L', 'forward')
# config.bind('M', 'bookmark-add')
# config.bind('N', 'search-prev')
# config.bind('O', 'set-cmd-text -s :open -t')
# config.bind('PP', 'open -t -- {primary}')
# config.bind('Pp', 'open -t -- {clipboard}')
# config.bind('R', 'reload -f')
# config.bind('Sb', 'open qute://bookmarks#bookmarks')
# config.bind('Sh', 'open qute://history')
# config.bind('Sq', 'open qute://bookmarks')
# config.bind('Ss', 'open qute://settings')
# config.bind('T', 'tab-focus')
# config.bind('ZQ', 'quit')
# config.bind('ZZ', 'quit --save')
# config.bind('[[', 'navigate prev')
# config.bind(']]', 'navigate next')
# config.bind('`', 'enter-mode set_mark')

# config.bind('b', 'set-cmd-text -s :quickmark-load')
# config.bind('cd', 'download-clear')
# config.bind('co', 'tab-only')
# config.bind('d', 'tab-close')
# config.bind('f', 'hint')
# config.bind('g$', 'tab-focus -1')
# config.bind('g0', 'tab-focus 1')
# config.bind('gB', 'set-cmd-text -s :bookmark-load -t')
# config.bind('gC', 'tab-clone')
# config.bind('gD', 'tab-give')
# config.bind('gO', 'set-cmd-text :open -t -r {url:pretty}')
# config.bind('gU', 'navigate up -t')
# config.bind('g^', 'tab-focus 1')
# config.bind('ga', 'open -t')
# config.bind('gb', 'set-cmd-text -s :bookmark-load')
# config.bind('gd', 'download')
# config.bind('gf', 'view-source')
# config.bind('gg', 'scroll-to-perc 0')
# config.bind('gi', 'hint inputs --first')
# config.bind('gl', 'tab-move -')
# config.bind('gm', 'tab-move')
# config.bind('go', 'set-cmd-text :open {url:pretty}')
# config.bind('gr', 'tab-move +')
# config.bind('gt', 'set-cmd-text -s :buffer')
# config.bind('gu', 'navigate up')
# config.bind('h', 'scroll left')
# config.bind('i', 'enter-mode insert')
# config.bind('l', 'scroll right')
# config.bind('m', 'quickmark-save')
# config.bind('n', 'search-next')
# config.bind('o', 'set-cmd-text -s :open')
# config.bind('pP', 'open -- {primary}')
# config.bind('pp', 'open -- {clipboard}')
# config.bind('q', 'record-macro')
# config.bind('r', 'reload')
# config.bind('sf', 'save')
# config.bind('sk', 'set-cmd-text -s :bind')
# config.bind('sl', 'set-cmd-text -s :set -t')
# config.bind('ss', 'set-cmd-text -s :set')
# config.bind('tIH', 'config-cycle -p -u *://*.{url:host}/* content.images ;; reload')
# config.bind('tIh', 'config-cycle -p -u *://{url:host}/* content.images ;; reload')
# config.bind('tIu', 'config-cycle -p -u {url} content.images ;; reload')
# config.bind('tPH', 'config-cycle -p -u *://*.{url:host}/* content.plugins ;; reload')
# config.bind('tPh', 'config-cycle -p -u *://{url:host}/* content.plugins ;; reload')
# config.bind('tPu', 'config-cycle -p -u {url} content.plugins ;; reload')
# config.bind('tSH', 'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload')
# config.bind('tSh', 'config-cycle -p -u *://{url:host}/* content.javascript.enabled ;; reload')
# config.bind('tSu', 'config-cycle -p -u {url} content.javascript.enabled ;; reload')
# config.bind('th', 'back -t')
# config.bind('tiH', 'config-cycle -p -t -u *://*.{url:host}/* content.images ;; reload')
# config.bind('tih', 'config-cycle -p -t -u *://{url:host}/* content.images ;; reload')
# config.bind('tiu', 'config-cycle -p -t -u {url} content.images ;; reload')
# config.bind('tl', 'forward -t')
# config.bind('tpH', 'config-cycle -p -t -u *://*.{url:host}/* content.plugins ;; reload')
# config.bind('tph', 'config-cycle -p -t -u *://{url:host}/* content.plugins ;; reload')
# config.bind('tpu', 'config-cycle -p -t -u {url} content.plugins ;; reload')
# config.bind('tsH', 'config-cycle -p -t -u *://*.{url:host}/* content.javascript.enabled ;; reload')
# config.bind('tsh', 'config-cycle -p -t -u *://{url:host}/* content.javascript.enabled ;; reload')
# config.bind('tsu', 'config-cycle -p -t -u {url} content.javascript.enabled ;; reload')
# config.bind('u', 'undo')
# config.bind('v', 'enter-mode caret')
# config.bind('wB', 'set-cmd-text -s :bookmark-load -w')
# config.bind('wO', 'set-cmd-text :open -w {url:pretty}')
# config.bind('wP', 'open -w -- {primary}')
# config.bind('wb', 'set-cmd-text -s :quickmark-load -w')
# config.bind('wf', 'hint all window')
# config.bind('wh', 'back -w')
# config.bind('wi', 'inspector')
# config.bind('wl', 'forward -w')
# config.bind('wo', 'set-cmd-text -s :open -w')
# config.bind('wp', 'open -w -- {clipboard}')
# config.bind('xO', 'set-cmd-text :open -b -r {url:pretty}')
# config.bind('xo', 'set-cmd-text -s :open -b')
# config.bind('yD', 'yank domain -s')
# config.bind('yM', 'yank markdown -s')
# config.bind('yP', 'yank pretty-url -s')
# config.bind('yT', 'yank title -s')
config.bind('yY', 'yank')
# config.bind('yd', 'yank domain')
# config.bind('ym', 'yank markdown')
# config.bind('yp', 'yank pretty-url')
# config.bind('yt', 'yank title')
config.bind('yy', 'yank -s')
# config.bind('{{', 'navigate prev -t')
# config.bind('}}', 'navigate next -t')

# Bindings for caret mode
# config.bind('$', 'move-to-end-of-line', mode='caret')
# config.bind('0', 'move-to-start-of-line', mode='caret')
# config.bind('<Ctrl-Space>', 'drop-selection', mode='caret')
# config.bind('<Escape>', 'leave-mode', mode='caret')
# config.bind('<Return>', 'yank selection', mode='caret')
# config.bind('<Space>', 'toggle-selection', mode='caret')
# config.bind('G', 'move-to-end-of-document', mode='caret')
# config.bind('H', 'scroll left', mode='caret')
# config.bind('J', 'scroll down', mode='caret')
# config.bind('K', 'scroll up', mode='caret')
# config.bind('L', 'scroll right', mode='caret')
# config.bind('Y', 'yank selection -s', mode='caret')
# config.bind('[', 'move-to-start-of-prev-block', mode='caret')
# config.bind(']', 'move-to-start-of-next-block', mode='caret')
# config.bind('b', 'move-to-prev-word', mode='caret')
# config.bind('c', 'enter-mode normal', mode='caret')
# config.bind('e', 'move-to-end-of-word', mode='caret')
# config.bind('gg', 'move-to-start-of-document', mode='caret')
# config.bind('h', 'move-to-prev-char', mode='caret')
# config.bind('j', 'move-to-next-line', mode='caret')
# config.bind('k', 'move-to-prev-line', mode='caret')
# config.bind('l', 'move-to-next-char', mode='caret')
# config.bind('v', 'toggle-selection', mode='caret')
# config.bind('w', 'move-to-next-word', mode='caret')
# config.bind('y', 'yank selection', mode='caret')
# config.bind('{', 'move-to-end-of-prev-block', mode='caret')
# config.bind('}', 'move-to-end-of-next-block', mode='caret')

# Bindings for command mode
# config.bind('<Alt-B>', 'rl-backward-word', mode='command')
# config.bind('<Alt-Backspace>', 'rl-backward-kill-word', mode='command')
# config.bind('<Alt-D>', 'rl-kill-word', mode='command')
# config.bind('<Alt-F>', 'rl-forward-word', mode='command')
# config.bind('<Ctrl-?>', 'rl-delete-char', mode='command')
# config.bind('<Ctrl-A>', 'rl-beginning-of-line', mode='command')
# config.bind('<Ctrl-B>', 'rl-backward-char', mode='command')
# config.bind('<Ctrl-C>', 'completion-item-yank', mode='command')
# config.bind('<Ctrl-D>', 'completion-item-del', mode='command')
# config.bind('<Ctrl-E>', 'rl-end-of-line', mode='command')
# config.bind('<Ctrl-F>', 'rl-forward-char', mode='command')
# config.bind('<Ctrl-H>', 'rl-backward-delete-char', mode='command')
# config.bind('<Ctrl-K>', 'rl-kill-line', mode='command')
# config.bind('<Ctrl-N>', 'command-history-next', mode='command')
# config.bind('<Ctrl-P>', 'command-history-prev', mode='command')
# config.bind('<Ctrl-Return>', 'command-accept --rapid', mode='command')
# config.bind('<Ctrl-Shift-C>', 'completion-item-yank --sel', mode='command')
# config.bind('<Ctrl-Shift-Tab>', 'completion-item-focus prev-category', mode='command')
# config.bind('<Ctrl-Tab>', 'completion-item-focus next-category', mode='command')
# config.bind('<Ctrl-U>', 'rl-unix-line-discard', mode='command')
# config.bind('<Ctrl-W>', 'rl-unix-word-rubout', mode='command')
# config.bind('<Ctrl-Y>', 'rl-yank', mode='command')
# config.bind('<Down>', 'completion-item-focus --history next', mode='command')
# config.bind('<Return>', 'command-accept', mode='command')
# config.bind('<Shift-Delete>', 'completion-item-del', mode='command')
# config.bind('<Shift-Tab>', 'completion-item-focus prev', mode='command')
# config.bind('<Tab>', 'completion-item-focus next', mode='command')
# config.bind('<Up>', 'completion-item-focus --history prev', mode='command')

# Bindings for hint mode
# config.bind('<Ctrl-B>', 'hint all tab-bg', mode='hint')
# config.bind('<Ctrl-F>', 'hint links', mode='hint')
# config.bind('<Ctrl-R>', 'hint --rapid links tab-bg', mode='hint')
# config.bind('<Escape>', 'leave-mode', mode='hint')
# config.bind('<Return>', 'follow-hint', mode='hint')

# Bindings for prompt mode
# config.bind('<Alt-B>', 'rl-backward-word', mode='prompt')
# config.bind('<Alt-Backspace>', 'rl-backward-kill-word', mode='prompt')
# config.bind('<Alt-D>', 'rl-kill-word', mode='prompt')
# config.bind('<Alt-F>', 'rl-forward-word', mode='prompt')
# config.bind('<Alt-Shift-Y>', 'prompt-yank --sel', mode='prompt')
# config.bind('<Alt-Y>', 'prompt-yank', mode='prompt')
# config.bind('<Ctrl-?>', 'rl-delete-char', mode='prompt')
# config.bind('<Ctrl-A>', 'rl-beginning-of-line', mode='prompt')
# config.bind('<Ctrl-B>', 'rl-backward-char', mode='prompt')
# config.bind('<Ctrl-E>', 'rl-end-of-line', mode='prompt')
# config.bind('<Ctrl-F>', 'rl-forward-char', mode='prompt')
# config.bind('<Ctrl-H>', 'rl-backward-delete-char', mode='prompt')
# config.bind('<Ctrl-K>', 'rl-kill-line', mode='prompt')
# config.bind('<Ctrl-P>', 'prompt-open-download --pdfjs', mode='prompt')
# config.bind('<Ctrl-U>', 'rl-unix-line-discard', mode='prompt')
# config.bind('<Ctrl-W>', 'rl-unix-word-rubout', mode='prompt')
# config.bind('<Ctrl-X>', 'prompt-open-download', mode='prompt')
# config.bind('<Ctrl-Y>', 'rl-yank', mode='prompt')
# config.bind('<Down>', 'prompt-item-focus next', mode='prompt')
# config.bind('<Escape>', 'leave-mode', mode='prompt')
# config.bind('<Return>', 'prompt-accept', mode='prompt')
# config.bind('<Shift-Tab>', 'prompt-item-focus prev', mode='prompt')
# config.bind('<Tab>', 'prompt-item-focus next', mode='prompt')
# config.bind('<Up>', 'prompt-item-focus prev', mode='prompt')

# Bindings for register mode
# config.bind('<Escape>', 'leave-mode', mode='register')

# Bindings for yesno mode
# config.bind('<Alt-Shift-Y>', 'prompt-yank --sel', mode='yesno')
# config.bind('<Alt-Y>', 'prompt-yank', mode='yesno')
# config.bind('<Escape>', 'leave-mode', mode='yesno')
# config.bind('<Return>', 'prompt-accept', mode='yesno')
# config.bind('n', 'prompt-accept no', mode='yesno')
# config.bind('y', 'prompt-accept yes', mode='yesno')

# This setting can be used to map keys to other keys. When the key used
# as dictionary-key is pressed, the binding for the key used as
# dictionary-value is invoked instead. This is useful for global
# remappings of keys, for example to map Ctrl-[ to Escape. Note that
# when a key is bound (via `bindings.default` or `bindings.commands`),
# the mapping is ignored.
# Type: Dict
# c.bindings.key_mappings = {'<Ctrl-[>': '<Escape>', '<Ctrl-6>': '<Ctrl-^>', '<Ctrl-M>': '<Return>', '<Ctrl-J>': '<Return>', '<Shift-Return>': '<Return>', '<Enter>': '<Return>', '<Shift-Enter>': '<Return>', '<Ctrl-Enter>': '<Ctrl-Return>'}

# Which interfaces to expose via WebRTC. On Qt 5.10, this option doesn't
# work because of a Qt bug.
# Type: String
# Valid values:
#   - all-interfaces: WebRTC has the right to enumerate all interfaces and bind them to discover public interfaces.
#   - default-public-and-private-interfaces: WebRTC should only use the default route used by http. This also exposes the associated default private address. Default route is the route chosen by the OS on a multi-homed endpoint.
#   - default-public-interface-only: WebRTC should only use the default route used by http. This doesn't expose any local addresses.
#   - disable-non-proxied-udp: WebRTC should only use TCP to contact peers or servers unless the proxy server supports UDP. This doesn't expose any local addresses either.
# c.content.webrtc_ip_handling_policy = 'all-interfaces'
