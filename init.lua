-- reload config
--hs.hotkey.bind({'ctrl', 'shift', 'cmd'}, 'r', hs.reload)

require('modules.inputsource_aurora')
require('modules.vim_esc')

hs.hints.hintChars = {
  'q', 'w', 'e', 'r',
  'a', 's', 'd', 'f',
  'z', 'x', 'c', 'v',
  '1', '2', '3', '4',
  'j', 'k',
  'i', 'o',
  'm', ','
}
hs.hotkey.bind({'shift'}, 'F12', hs.hints.windowHints)
