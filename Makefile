.PHONY: dotfiles

dotfiles: ~/.config/nvim
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -depth 1 -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done
	ln -sf $(CURDIR)/.zshrc ~/.bashrc
	ln -sf $(CURDIR)/.bin ~/.bin
	ln -sf $(CURDIR)/.weerc ~/.weerc
	ln -sf $(CURDIR)/.vimrc ~/.config/nvim/init.vim

~/.config/nvim:
	mkdir -p ~/.config/nvim
