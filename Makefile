.PHONY: help
help:
	@echo "    download_model"
	@echo "        Download pre-trained text2speech model and unpack"
	@echo "    download_test_audio"
	@echo "        Downloading example audio files"


.PHONY: download_model
download_model:
	@echo ">>> Downloading pre-trained text-to-speech model and unpack"
	 wget https://github.com/mozilla/DeepSpeech/releases/download/v0.5.1/deepspeech-0.5.1-models.tar.gz
	tar xvfz deepspeech-0.5.1-models.tar.gz
	rm deepspeech-0.5.1-models.tar.gz

.PHONY: download_test_audio
download_test_audio:
	@echo ">>> Downloading example audio files"
	wget https://github.com/mozilla/DeepSpeech/releases/download/v0.5.1/audio-0.5.1.tar.gz
	tar xvf audio-0.5.1.tar.gz
	rm audio-0.5.1.tar.gz
