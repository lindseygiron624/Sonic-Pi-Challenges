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
