STAGING_URL=https://lanretam.stage.ccnmtl.columbia.edu/
PROD_URL=https://lanretam.ctl.columbia.edu/
STAGING_BUCKET=lanretam.stage.ccnmtl.columbia.edu
PROD_BUCKET=lanretam.ctl.columbia.edu
INTERMEDIATE_STEPS ?= echo nothing
HUGO=/usr/local/bin/hugo-0.25.1

JS_FILES=static/js/


all: eslint

include *.mk

$(PUBLIC)/js/all.json: $(PUBLIC)/json/all/index.html
	mkdir $(PUBLIC)/js/ || true
	mv $< $@ && ./checkjson.py
