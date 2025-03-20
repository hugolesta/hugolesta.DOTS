{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "hugolesta-tools";
      paths = [
        zsh-completions
        neovim
        go
        nodejs_22
        pure-prompt
        fd
        ripgrep
        fzf
        lazygit
        kubectl
        kubectx
        k9s
      ];
    };
  };
}
