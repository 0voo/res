# 编译时间
msg := commit by ehlxr at $(shell date "+%Y-%m-%d %T")

.PHONY: push
push:
	git add --all && git commit -m "$(msg)" && git push

.PHONY: init
init:
	@ rm -rf .git
	@ git init && git add --all && git commit -m "$(msg)"
	@ git remote add origin git@github.com:0vo/res.git
	@ git push -f --set-upstream origin master