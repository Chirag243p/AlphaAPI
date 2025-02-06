import sounddevice as sd
import numpy as np
import speech_recognition as sr

def record_audio():
    samplerate = 44100  # Sample rate
    duration = 5  # Duration of the recording in seconds
    audio = sd.rec(int(samplerate * duration), samplerate=samplerate, channels=2, dtype='int16')
    sd.wait()  # Wait until the recording is finished
    return audio

recognizer = sr.Recognizer()

# Record audio using sounddevice
audio_data = record_audio()

# Convert the recorded audio into an audio file format
with open('audio.wav', 'wb') as file:
    file.write(audio_data)
