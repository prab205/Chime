Option Explicit

Dim sound : sound = "E:\Bhai\SoundEvery20Minutes\TickSound.wav"

Dim o : Set o = CreateObject("wmplayer.ocx")
With o
 .url = sound
 .controls.play
 While .playstate <> 1
 wscript.sleep 100
 Wend
 .close
End With

Set o = Nothing