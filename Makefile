data/sample_submission.csv.zip:
	wget -x --load-cookies data/cookies.txt https://www.kaggle.com/c/quora-question-pairs/download/sample_submission.csv.zip -O data/sample_submission.csv.zip --continue

data/test.csv.zip:
	wget -x --load-cookies data/cookies.txt https://www.kaggle.com/c/quora-question-pairs/download/test.csv.zip -O data/test.csv.zip --continue

data/train.csv.zip:
	wget -x --load-cookies data/cookies.txt https://www.kaggle.com/c/quora-question-pairs/download/train.csv.zip -O data/train.csv.zip --continue

data: data/sample_submission.csv.zip data/test.csv.zip data/train.csv.zip

clean: 
	rm -rf data/*.zip

.PHONY: data

