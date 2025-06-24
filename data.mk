#
# Files
#

files = $(addprefix $(HOME)/, \
	.profile \
	.tmux.conf \
        .cargo \
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

# Caches

$(HOME)/.cargo: $(HOME)/my/system/caches/cargo

#
# Sources
#

sources = \
	shell/fish/plugin-foreign-env \
	nix/nixsa \
#

shell/fish/plugin-foreign-env:
	git clone https://github.com/oh-my-fish/plugin-foreign-env $@

nix/nixsa:
	@ printf '%s\n' 'do it yourself: https://github.com/noamraph/nixsa/releases'
	@ printf '%s\n' 'do not forget to install the profile flake'
	@ false

paths/lsbig:
	git clone https://github.com/alurm/lsbig $@
