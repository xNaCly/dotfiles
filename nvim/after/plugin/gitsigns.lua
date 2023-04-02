-- nvim gitsigns setup
require("gitsigns").setup{
    current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 50,
    },
}

