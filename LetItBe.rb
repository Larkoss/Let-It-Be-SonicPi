# Welcome to Sonic Pi
use_bpm 76

drumvolume = 5.0

#drums
define :hihats do
  loop do
    sample :drum_cymbal_closed, amp: (drumvolume / 10)
    sleep 0.5
  end
end

define :drums do
  loop do
    sample :drum_bass_hard, amp: (drumvolume / 10)
    sleep 1
    sample :drum_snare_hard, amp: (drumvolume / 10)
    sleep 1
    sample :drum_bass_hard, amp: (drumvolume / 10)
    sleep 0.5
    sample :drum_bass_hard, amp: (drumvolume / 10)
    sleep 0.5
    sample :drum_snare_hard, amp: (drumvolume / 10)
    sleep 1
  end
end

#harmony
define :harmony do
  use_synth :chiplead
  use_synth_defaults amp: 0.6, sustain: 2
  
  play chord(:A4, :minor);
  sleep 2
  play chord(:C5, :major);
  sleep 2
  play chord(:F4, :major);
  sleep 2
  play chord(:C5, :major);
  sleep 2
  play chord(:C5, :major);
  sleep 2
  play chord(:G4, :major);
  sleep 2
  play chord(:F5, :major);
  sleep 2
  play chord(:C4, :major);
  sleep 2
end

#piano right
define :pianoRightChorus do
  use_synth :piano
  #bar 1
  play [:C4, :E4, :A4] #Am
  sleep 1
  play [:C4, :E4, :A4] #Am
  sleep 1
  play chord(:C4, :major)
  sleep 1
  play chord(:C4, :major)
  sleep 1
  #bar 2
  play [:A3, :C4, :F4] #F
  sleep 1
  play [:A3, :C4, :F4] #F
  sleep 1
  play chord(:C4, :major)
  sleep 1
  play chord(:C4, :major)
  sleep 1
  #bar 3
  play chord(:C4, :major)
  sleep 1
  play chord(:C4, :major)
  sleep 1
  play chord(:G3, :major)
  sleep 1
  play chord(:G3, :major)
  sleep 1
  #bar 4
  play [:C4 , :F4, :A4] #F
  sleep 0.5
  play :C4
  sleep 0.5
  play [:G3, :C4, :E4, :G4] #E
  sleep 0.5
  play [:A4, :C4, :D4, :F4] #Dm7
  sleep 0.5
  play [:G3, :C4, :E4] #C
  sleep 1
  play [:G3, :C4, :E4] #C
  sleep 1
end

#piano right
define :pianoRight2 do
  use_synth :piano
  #bar 1
  play chord(:C4, :major)
  sleep 1
  play chord(:C4, :major)
  sleep 1
  play chord(:G3, :major)
  sleep 1
  play chord(:G3, :major)
  sleep 1
  #bar 2
  play chord(:A3, :minor)
  sleep 1
  play chord(:A3, :minor)
  sleep 0.5
  play chord(:A3, :minor)
  sleep 0.5
  play chord(:A3, :minor)
  sleep 1
  play chord(:F3, :m6)
  sleep 1
  #bar 3
  play chord(:C4, :major)
  sleep 1
  play chord(:C4, :major)
  sleep 1
  play chord(:G3, :major)
  sleep 1
  play chord(:G3, :major)
  sleep 1
  #bar 4
  play chord(:F3, :major)
  sleep 1
  play chord(:C3, :major)
  sleep 0.5
  #play chord(:D3, :m7)
  play [:D3, :F3, :C4] #Dm7
  sleep 0.5
  play chord(:C3, :major)
  sleep 1
  play chord(:C3, :major)
  sleep 1
end

#piano right
define :pianoRight do
  use_synth :piano
  
  #bar 1
  play [:C4, :E4, :G4]
  sleep 1
  play [:C4, :E4, :G4]
  sleep 1
  play [:B3, :D4, :G4]
  sleep 1
  play [:B3, :D4, :G4]
  sleep 1
  #bar 2
  play [:A3, :C4, :E4]
  sleep 1
  play [:A3, :C4, :E4]
  sleep 0.5
  play [:A3, :C4, :E4]
  sleep 0.5
  play [:A3, :C4, :E4]
  sleep 1
  play [:A3, :C4, :D4]
  sleep 1
  #bar 3
  play [:C4, :E4, :G4]
  sleep 1
  play [:C4, :E4, :G4]
  sleep 1
  play [:B3, :D4, :G4]
  sleep 1
  play [:B3, :D4, :G4]
  sleep 1
  #bar 4
  play [:F4, :A4]
  sleep 1
  play [:E4, :G4]
  sleep 0.5
  play [:D4, :F4]
  sleep 0.5
  play [:C4, :E4, :G4]
  sleep 1
  play [:C4, :E4, :G4]
  sleep 1
end

#piano left
define :pianoLeft do
  use_synth :piano
  use_synth_defaults amp: 0.5
  
  #bar 1
  play :C2
  sleep 0.5
  play :C3
  sleep 1
  play :C3
  sleep 0.25
  play 42 #F3sharp
  sleep 0.25
  play :G2
  sleep 0.5
  play :G1
  sleep 1
  play :G2
  sleep 0.5
  #bar 2
  play :A1
  sleep 0.5
  play :A2
  sleep 1
  play [:G1, :G2]
  sleep 0.5
  play [:F1, :F2]
  sleep 0.5
  play :F2
  sleep 0.5
  play :F2
  sleep 0.5
  play :F2
  sleep 0.5
  #bar 3
  play :C2
  sleep 0.5
  play :C3
  sleep 1
  play :C3
  sleep 0.25
  play 42 #F3sharp
  sleep 0.25
  play :G2
  sleep 0.5
  play :G1
  sleep 1
  play :G2
  sleep 0.5
  #bar 4
  play :F1
  sleep 0.5
  play :F2
  sleep 1.5
  play :C2
  sleep 0.5
  play :C3
  sleep 0.5
  play :C3
  sleep 0.5
  play :C3
  sleep  0.5
end

#piano left
define :pianoLeftChorus do
  use_synth :piano
  use_synth_defaults amp: 0.5
  
  sleep 16
  
end

in_thread do
  pianoRight
  2.times do
    pianoRight2
  end
  pianoRightChorus
  2.times do
    pianoRight2
  end
  2.times do
    pianoRightChorus
  end
end

in_thread do
  3.times do
    pianoLeft
  end
  pianoLeftChorus
  2.times do
    pianoLeft
  end
  2.times do
    pianoLeftChorus
  end
end

in_thread do
  sleep 112
  harmony
end

in_thread do
  sleep 96
  drums
end

in_thread do
  sleep 96
  hihats
end


