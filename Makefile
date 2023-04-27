export LANG=pt-BR
export SABEDORIA_URL=http://0.0.0.0:5000/v1/
export SABEDORIA_TOKEN=awesometokenbutchangeit

clean:
	rm -f dist/*
	rm -f *.aux
	rm -f *.log
	rm -f *.pdf
	rm -f src/*.aux
	rm -f src/*.log
	rm -f src/*.pdf

gen:
	python scripts/base.py
