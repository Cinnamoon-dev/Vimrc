# Cheatsheet

## Navigation
    All of these commands must be called in `NORMAL MODE`.

- h, j, k, l - left, down, up, right
- 0 - beginning of the line
- $ - end of the line
- number`<ENTER>` - Go to the line number
- w - go to the beginning of the next word
- e - go to the end of the next word
- b - go back to the beginning of the current word or to the end of the previous word
- :Lex - open the file explorer in the left

### Insert Mode
- i - moves cursor one character behind and starts writing
- a - moves cursor one character forward and starts writing
- I - moves cursor to the beginning of the line and starts writing
- A - moves cursor to the end of the line and starts writing
- o - creates a new line below and starts writing
- O - creates a new line above and starts writing

### Visual Mode
- v - select characters
- V - select lines
- Ctrl+V - select a block of text

## Netrw
- p - preview the file
- d - make a directory
- % - make a file
- D - remove the file/directory
- gh - hide/unhide dotfiles
- gn - change current root directory
- i - circle between thin, long, wide and tree listing

## Useful Commands
### Edit Code Block 
- Select a block of text using `Visual Block Mode` (Ctrl+v in normal mode)
- Press `capital i (I)` to insert in the beginning
- Press `capital a (A)` to insert in the end
- Write what you want and press `Esc` twice to write your changes

### Change a word at n positions
- Search for a word using `/`
- Write the word
- Choose the occurrence with `n`/`N`
- Type `cgn` and change the current occurrence
- Change occurrences with `n`/`N`
- Press `.` to apply the change to the next found occurrence
