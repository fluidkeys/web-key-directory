.PHONY: .well-known/openpgpkey/hu/im4cc8qhazwkfsi65a8us1bc5gzk1o4p
.well-known/openpgpkey/hu/im4cc8qhazwkfsi65a8us1bc5gzk1o4p:
	gpg --export-options export-minimal --export '7EA0 A870 E100 57D5 E153  179E 52B7 723E 1E98 ED77' > $@
