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
    };
  };
}
