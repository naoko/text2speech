1. Install mozilla deepspeech
```
sudo apt install portaudio19-dev
pip install requirements.txt
```

2. Download a pre-trained text-to-speech model and unpack
```
# this model is 1.8gb
make download_model
```

# Download test audio
```
make download_test_audio
```

3. Use DeepSpeech CLI to transcribe an audio file
```
# Transcribe an audio file
deepspeech --model deepspeech-0.5.1-models/output_graph.pbmm --alphabet deepspeech-0.5.1-models/alphabet.txt --lm deepspeech-0.5.1-models/lm.binary --trie deepspeech-0.5.1-models/trie --audio audio/2830-3980-0043.wav
```


WebSpeechAPI
=============
See `webspeech.html`.
You can host this file on web server and start talking.

```
python -m http.server 5000 --bind 127.0.0.1
```
Open: http://127.0.0.1:5000/webspeech.html

Generally, the default speech recognition system
 available on the device will be used for 
 the speech recognition — most modern OSes have 
 a speech recognition system for issuing voice 
 commands. 
 Think about Dictation on macOS, Siri on iOS, 
 Cortana on Windows 10, Android Speech, etc.

Note: On Chrome, using Speech Recognition on a web page involves a server-based recognition engine. 
Your audio is sent to a web service for recognition processing, so it won't work offline.


References:
- https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API/Using_the_Web_Speech_API
- https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition/SpeechRecognition#Browser_compatibility