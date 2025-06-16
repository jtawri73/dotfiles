{
  config,
  pkgs,
  ...
}: {
  programs.nvf = {
    enable = true;
    settings.vim = {
      vimAlias = true;
      lsp.enable = true;
      theme = {
        enable = true;
        name = "nord";
        transparent = true;
      };
      languages = {
        nix = {
          enable = true;
          lsp.enable = true;
          format.enable = true;
          treesitter.enable = true;
        };
      };
    };
  };
}
