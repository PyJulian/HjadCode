import serial, time, os, pathlib

print('Files setup')
os.chdir(os.path.dirname(os.path.abspath(__file__)))
os.system('hjad --compile "../SJuliaEDrum/SJuliaEDrum.hjad"')
os.system('osascript "../SJuliaEDrum/SJuliaEDrum.applescript"')

time.sleep(2)

print('Serial setup')
ser = serial.Serial('/dev/tty.usbmodem14302', 115200)
time.sleep(2)

print('All done\n---')
while True:
    if ser.in_waiting:
        recv = ser.readline().decode('utf-8').strip()
        if recv == '0':
            os.system(f'afplay "{pathlib.Path.home()}/.hjadcode/BDSMhihat.wav"')
            print(f'Signal from PIN{recv}')
        elif recv == '1':
            os.system(f'afplay "{pathlib.Path.home()}/.hjadcode/BDSMkick.wav"')
            print(f'Signal from PIN{recv}')
        else:
            print('Corrupt Packet')


