///scr_spawnWave(x, y, type)

// GML color picker: https://chrisanselmo.com/gmcolor/

var softVolume = 0.5

var w = instance_create(argument0, argument1, objWave);

with w {
    type = argument2

    switch type {
    case TRACK.BASS:
        color = c_aqua
        sound = audio_play_sound(sndBass, 1, true)
        break
        
    case TRACK.DRUMS:
        color = 37887
        
        if global.drumsAlt sound = audio_play_sound(sndDrumsAlternative, 1, true)
        else sound = audio_play_sound(sndDrums, 1, true)
        global.drumsAlt = not global.drumsAlt
        
        audio_sound_gain(sound, softVolume, 0)
        break
        
    case TRACK.GUITAR:
        color = c_lime
        
        if global.guitarAlt sound = audio_play_sound(sndGuitarAlternative, 1, true)
        else sound = audio_play_sound(sndGuitar, 1, true)
        global.guitarAlt = not global.guitarAlt
        
        audio_sound_gain(sound, softVolume, 0)
        break
        
    case TRACK.VOCALS:
        color = c_fuchsia
        
        if global.vocalsAlt sound = audio_play_sound(sndVocalsAlternative, 1, true)
        else sound = audio_play_sound(sndVocals, 1, true)
        global.vocalsAlt = not global.vocalsAlt
        
        audio_sound_gain(sound, softVolume, 0)
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
