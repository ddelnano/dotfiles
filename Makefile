.PHONY: dotfiles

VSCODE_USER_DIR := $(HOME)/Library/Application Support/Code/User
CURSOR_USER_DIR := $(HOME)/Library/Application Support/Cursor/User

dotfiles: ~/.config/nvim vscode
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -maxdepth 1 -name ".*" -not -name ".git" -not -name ".gitmodules" -not -name ".gitignore" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done
	ln -sf $(CURDIR)/.vimrc ~/.config/nvim/init.vim

~/.config/nvim:
	mkdir -p ~/.config/nvim

.PHONY: vscode
vscode:
	mkdir -p "$(VSCODE_USER_DIR)"
	mkdir -p "$(CURSOR_USER_DIR)"
	ln -sf $(CURDIR)/vscode/settings.json "$(VSCODE_USER_DIR)/settings.json"
	ln -sf $(CURDIR)/vscode/settings.json "$(CURSOR_USER_DIR)/settings.json"
