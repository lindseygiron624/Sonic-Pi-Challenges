# Challenge G pt. 1 (ST Theme)

notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]
n = 0
use_bpm 160
use_synth :saw

live_loop :main_theme do
  with_fx :distortion do
    8.times do
      play(notes[n])
      n = n + 1
      sleep 0.5
      if n > 7
        n = 0
      end
    end
  end
end

# Challenge G pt. 2 (Seven Nation Army)

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

ws_notes = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2]
ws_sleeps = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]

n = 0

live_loop :white_stripes do
  8.times do
    play(ws_notes[n])
    sleep(ws_sleeps[n])
    n = n + 1
  end
  n = 0
end
