{
  config,
  pkgs,
  ...
}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Disable greeting
      set fish_greeting

      # Enable vi key bindings
      fish_vi_key_bindings

      # Set insert mode cursor to a block
      set fish_cursor_insert block
    '';
  };
}
