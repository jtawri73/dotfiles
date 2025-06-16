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
    };
  };
}
