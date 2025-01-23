MEHR2 = {
    packages = {
        default = {
            "git",
            "picom",
            "fish",
            "imagemagick",
            "firefox",
            "flameshot",
            "pipewire",
            "dunst",
            "rofi",
            "i3",
            "acpi",
            "zathura",
            "curl",
        },
        apt = { "build-essentials" },
        pacman = { "base-devel", "pamixer", "hugo", "go", "ghostty" },
        scratch = {
            {
                identifier = "rustup",
                needs = { "curl" },
                commands = {
                    "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh",
                    "rustup component add rust-docs",
                    "rustup component add cargo",
                    "rustup component add clippy",
                    "rustup component add rustfmt",
                }
            },
            {
                -- see: https://github.com/neovim/neovim/blob/master/BUILD.md
                identifier = "nvim",
                git = "github.com/neovim/neovim",
                needs = { "make", "cmake", "gcc" },
                branch = "nightly",
                commands = {
                    "make CMAKE_BUILD_TYPE=Release",
                    "make install"
                }
            },
            {
                -- see: https://github.com/ziglang/zig/wiki/Install-Zig-from-a-Package-Manager
                identifier = "zig",
                execute_for = { "apt" },
                needs = { "snap" },
                commands = {
                    "snap install zig --classic --beta"
                }
            },
            {
                -- see: https://ghostty.org/docs/install/build
                identifier = "ghostty",
                execute_for = { "apt" },
                git = "github.com/ghostty-org/ghostty",
                needs = { "zig", "gtk4" },
                commands = {
                    "zig build -p /usr -Doptimize=ReleaseFast",
                }
            },
            -- todo
            -- {
            --     identifier = "go",
            --     execute_for = { "apt" }
            -- },
            {
                -- see: https://gohugo.io/installation/linux/#build-from-source
                identifier = "hugo",
                execute_for = { "apt" },
                needs = { "go" },
                commands = {
                    "go install github.com/gohugoio/hugo@latest",
                }
            },
        },
        cargo = { "exa", "bat", "ripgrep", "yazi" }
    }
}
