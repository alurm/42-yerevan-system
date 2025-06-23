files = $(addprefix $(HOME)/, \
	.profile \
	.tmux.conf \
	$(addprefix .config/, \
		git/config \
		fish/config.fish \
		jj/config.toml \
		direnv/direnvrc \
	) \
) \

$(HOME)/.profile: $(HOME)/my/system/shell/profile
$(HOME)/.tmux.conf: $(HOME)/my/system/tmux/tmux.conf
$(HOME)/.config/fish/config.fish: $(HOME)/my/system/shell/fish/config.fish
$(HOME)/.config/git/config: $(HOME)/my/system/git/config
$(HOME)/.config/jj/config.toml: $(HOME)/my/system/git/jj-config.toml
$(HOME)/.config/direnv/direnvrc: $(HOME)/my/system/nix/nix-direnv/direnvrc
