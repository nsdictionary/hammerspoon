local function toggleInputDevice()
  local builtInMic = "Built-in Microphone"
  local fancyMic = "USB audio CODEC"
  local curInput = hs.audiodevice.defaultInputDevice()

  if curInput:name() == builtInMic then
    success = hs.audiodevice.findInputByName(fancyMic):setDefaultInputDevice()
    if success == true then
      hs.alert.show("Current mic: " .. fancyMic)
    else
      print('could not switch input device')
    end

  elseif curInput:name() == fancyMic then

    success = hs.audiodevice.findInputByName(builtInMic):setDefaultInputDevice()
    if success == true then
      hs.alert.show("Current mic: " .. builtInMic)
    else
      print('could not switch input device')
    end
  end
end

local function toggleOutputDevice()
  local builtInSpeaker = "Built-in Output"
  local fancySpeaker = "USB audio CODEC"
  local curOutput = hs.audiodevice.defaultOutputDevice()

  if curOutput:name() == builtInSpeaker then
    success = hs.audiodevice.findOutputByName(fancySpeaker):setDefaultOutputDevice()
    if success == true then
      hs.alert.show("Current Speaker: " .. fancySpeaker)
    else
      print('could not switch output device')
    end

  elseif curOutput:name() == fancySpeaker then
    success = hs.audiodevice.findOutputByName(builtInSpeaker):setDefaultOutputDevice()
    if success == true then
      hs.alert.show("Current Speaker: " .. builtInSpeaker)
    else
      print('could not switch output device')
    end
  end
end

local function toggleAudioDevices()
  toggleInputDevice()
  toggleOutputDevice()
end

hs.hotkey.bind({'shift'}, 'F11', toggleAudioDevices)


