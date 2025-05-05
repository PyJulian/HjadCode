# Put this in the microbit code

sounds = True

def pin0():
    inp(0, True)

def pin1():
    inp(1, True)

def pin2():
    inp(2, True)

def inp(pin, press):
    basic.clear_screen()
    if press:
        serial.write_line(str(pin))
        basic.show_number(pin)
        if sounds:
            music.play(music.tone_playable([Note.A, Note.F][pin], music.beat(BeatFraction.HALF)), music.PlaybackMode.UNTIL_DONE)
        #basic.pause(100)
        basic.clear_screen()

input.on_pin_pressed(TouchPin.P0, pin0)
input.on_pin_pressed(TouchPin.P1, pin1)
input.on_pin_pressed(TouchPin.P2, pin2)

def toggle():
    global sounds
    sounds = not sounds
    if sounds:
        basic.show_icon(IconNames.YES)
    else:
        basic.show_icon(IconNames.NO)
    basic.pause(100)
    basic.clear_screen()
input.on_logo_event(TouchButtonEvent.PRESSED, toggle)
