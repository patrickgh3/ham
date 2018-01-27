///scr_spawnWave(x, y, type)

// GML color picker: https://chrisanselmo.com/gmcolor/

var w = instance_create(argument0, argument1, objWave);
show_debug_message(instance_number(objWave))

with w {
    type = argument2

    switch type {
    case TRACK.BASS:
        color = c_aqua
        sound = audio_play_sound(sndBass, 1, true)
        break
        
    case TRACK.DRUMS:
        color = 37887
        sound = audio_play_sound(sndDrums, 1, true)
        break
        
    case TRACK.GUITAR:
        color = c_lime
        sound = audio_play_sound(sndGuitar, 1, true)
        break
        
    case TRACK.VOCALS:
        color = c_fuchsia
        sound = audio_play_sound(sndVocals, 1, true)
        break
    
    }
    
    // Sync up this sound's position with another already existing wave.
    // (unless we're the first ever spawned wave, then we just start at the beginning)
    for (var i=0; i<instance_number(objWave); i++) {
        var otherWave = instance_find(objWave, i)
        
        if otherWave.id != id {
            audio_sound_set_track_position(sound,
                    audio_sound_get_track_position(otherWave.sound))
            break
        }
    }
}

return w
