# Challenge F
note = 21

use_synth :piano

100.times do
  play note
  note = note + 1
  sleep 0.1
end
