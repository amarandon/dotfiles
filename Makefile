install:
	for file in _.*; do ln -s `realpath $$file` ~/$${file#_}; done
