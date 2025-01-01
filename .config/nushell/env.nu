zoxide init nushell | save -f ~/.config/nushell/zoxide.nu

$env.RUSTUP_DIST_SERVER = "https://rsproxy.cn"
$env.RUSTUP_UPDATE_ROOT = "https://rsproxy.cn/rustup"

$env.PATH = (
  $env.PATH
  | split row (char esep)
  | append [/usr/local/bin ~/.local/bin ~/.local/share/bin]
  | append ~/.cargo/bin
  | uniq # filter so the paths are unique
)

$env.EDITOR = "helix"
$env.TRANSIENT_PROMPT_INDICATOR = ">> "
$env.TRANSIENT_PROMPT_COMMAND = ""
$env.TRANSIENT_PROMPT_COMMAND_RIGHT = ""

$env.PROMPT_COMMAND_RIGHT = ""
$env.PROMPT_INDICATOR = ">> "
$env.PROMPT_INDICATOR_VI_NORMAL = (color {fg: black, bg: blue} "NOR>") + " "
$env.PROMPT_INDICATOR_VI_INSERT = (color {fg: black, bg: green} "INS>") + " "
$env.PROMPT_COMMAND = {||
  let newline = "\n\r"
  let separator = " "

  let count = $env.COMMAND_COUNT
  let count = color light_red_bold $"[($count)]"
  
  let date = date now | format date "%H-%M-%S"
  let date = color light_green_bold $"[($date)]"

  # let pwd = ($env.PWD | str replace $env.HOME "~")
  let pwd = ($env.PWD)
  let pwd = color {fg: blue, attr: bu} $pwd
  
  ([$count, $date, $pwd] | str join $separator) + $newline
}

def color [style, content] {
  $"(ansi $style)($content)(ansi reset)"
}
