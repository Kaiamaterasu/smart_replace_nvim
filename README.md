# 🔄 Smart Replace Neovim Plugin

A powerful and flexible text replacement plugin for Neovim with multiple replacement modes.

## ✨ Features

- **Global Replace**: Replace text across the entire file
- **Visual Replace**: Replace text only in selected regions
- **Line Replace**: Replace text on the current line
- **Multi-Cursor Replace**: Replace multiple text patterns simultaneously

## 🎮 Usage

### Global Replace (`<leader>rp`)
Versatile text replacement across the entire file or in visual selection.

#### Normal Mode (Global Replacement)
- Put cursor anywhere in the file
- Press `<leader>rp`
- Enter: `mistake/correction`
- **Example**: `hello/world`
  - Replaces ALL occurrences of "hello" with "world" in the entire file

#### Visual Mode (Selective Replacement)
- Select specific text
- Press `<leader>rp`
- Enter: `mistake/correction`
- **Example**: `error/success`
  - Replaces only selected "error" with "success"

### Line Replace (`<leader>lp`)
**Strictly for single-line text replacement**

- Place cursor on the specific line
- Press `<leader>lp`
- Enter: `mistake/correction`
- **Example**: `old/new`
  - Replaces text ONLY on the current line
- **Note**: Not recommended for visual mode selections

### Multi-Cursor Replace (`<leader>mc`)
Powerful replacement across multiple patterns simultaneously.

#### Normal Mode (Global Multi-Replacement)
- Put cursor anywhere
- Press `<leader>mc`
- Enter: `pattern1/replacement1 : pattern2/replacement2`
- **Example**: `hello/world : test/example`
  - Globally replaces "hello" with "world"
  - Globally replaces "test" with "example"

#### Visual Mode (Selective Multi-Replacement)
- Select specific text
- Press `<leader>mc`
- Enter: `pattern1/replacement1 : pattern2/replacement2`
- **Example**: `quick/fast : brown/red`
  - Replaces selected "quick" with "fast"
  - Replaces selected "brown" with "red"

## 🎬 Demonstration Videos

We've prepared demonstration videos to showcase the plugin's capabilities:

1. `rp.mp4`: Demonstrates global and visual replacements with `<leader>rp`
2. `lp.mp4`: Shows line-specific replacements with `<leader>lp`
3. `mc.mp4`: Illustrates multi-cursor replacements in normal and visual modes

## 💡 Best Practices

- Remove spaces around `/` when entering replacement text
- Use `:messages` to view replacement notifications
- For line-specific replacements, always use `<leader>lp`
- Multi-cursor replacements support both global and selective modes

## 🚀 Installation

### Using Lazy.nvim

```lua
{
    dir = '~/.config/nvim/lua/smart-replace',
    config = function()
        require('smart-replace').setup()
    end
}
```

## 📄 License

MIT License

## 🌟 Author

[Kaiamaterasu](https://github.com/Kaiamaterasu)

## 💖 Support

If you find this plugin helpful, consider supporting me:

[![PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.paypal.com/paypalme/Poorna357)
