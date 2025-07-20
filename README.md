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

### Global and Visual Replacements (`<leader>rp`)
[![Global and Visual Replacements](https://img.youtube.com/vi/PLACEHOLDER_YOUTUBE_ID/0.jpg)](demo/rp.mp4)
- Demonstrates replacing text globally or in selected regions
- Shows how `<leader>rp` works in both normal and visual modes

### Line-Specific Replacements (`<leader>lp`)
[![Line Replacements](https://img.youtube.com/vi/PLACEHOLDER_YOUTUBE_ID/0.jpg)](demo/lp.mp4)
- Highlights the use of `<leader>lp` for single-line text replacements
- **Important**: Not recommended for visual mode selections

### Multi-Cursor Replacements (`<leader>mc`)
[![Multi-Cursor Replacements](https://img.youtube.com/vi/PLACEHOLDER_YOUTUBE_ID/0.jpg)](demo/mc.mp4)
- Demonstrates `<leader>mc` in normal and visual modes
- Shows how to replace multiple text patterns simultaneously
- Works globally in normal mode and selectively in visual mode

**Note**: Click on the video thumbnails to watch the demonstrations directly from the repository.

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
