TAGS:
	find . -name '*.hs' | xargs hasktags -o - > TAGS

rebuild:
	cabal-delete gitlib-s3
	cabal-delete gitlib
	cabal-delete hlibgit2
	cabal-meta install -j1