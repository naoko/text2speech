1. Install mozilla deepspeech
```
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



