files = $(addprefix $(HOME)/, \
	.profile \
	$(addprefix .config/, \
		git/config \
		fish/config.fish \
		jj/config.toml \
		direnv/direnvrc \
		helix/config.toml \
	) \
) \

$(HOME)/.profile: $(HOME)/my/system/shell/profile
$(HOME)/.config/fish/config.fish: $(HOME)/my/system/shell/fish/config.fish
$(HOME)/.config/git/config: $(HOME)/my/system/git/config
$(HOME)/.config/jj/config.toml: $(HOME)/my/system/git/jj-config.toml
$(HOME)/.config/direnv/direnvrc: $(HOME)/my/system/nix/nix-direnv/direnvrc
$(HOME)/.config/helix/config.toml: $(HOME)/my/system/helix/config.toml
