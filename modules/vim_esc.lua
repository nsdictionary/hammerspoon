function vim_esc()
    local inputEnglish = "com.apple.keylayout.ABC"
    local input_source = hs.keycodes.currentSourceID()

    if not (input_source == inputEnglish) then
        hs.eventtap.keyStroke({}, 'right')
        hs.keycodes.currentSourceID(inputEnglish)
    end

    hs.eventtap.keyStroke({''}, 'escape')
end

hs.hotkey.bind({}, 'f12', vim_esc)

-- local hotkey = hs.hotkey.new({}, 'f13', vim_esc)
-- local wf=hs.window.filter
-- local wf_terminal = wf.new{'iTerm2'}

-- wf_terminal:subscribe(wf.windowFocused, function()
  -- hotkey:enable()
-- end)

-- wf_terminal:subscribe(wf.windowUnfocused, function()
  -- hotkey:disable()
-- end)


-- appWatcher = hs.application.watcher.new(function(name, event, app)
  -- local app_name = app:name()
  -- local title = app:focusedWindow():title()

  -- if event == hs.application.watcher.activated then
    -- if (app_name == 'iTerm2' and title == 'Vim') then
      -- hotkey:enable()
    -- end
  -- else
    -- if (app_name == 'iTerm2' and title == 'Vim') then
      -- hotkey:disable()
    -- end
  -- end
-- end):start()
