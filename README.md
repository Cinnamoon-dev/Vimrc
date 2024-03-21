# Cheatsheet

## Navigation
### Normal Mode
- i - moves cursor one character behind and go to `INSERT MODE`
- a - moves cursor one character forward and go to `INSERT MODE`
- I - moves cursor to the beginning of the line and go to `INSERT MODE`
- A - moves cursor to the end of the line and go to `INSERT MODE`
- o - creates a new line below and go to `INSERT MODE`
- O - creates a new line above and go to `INSERT MODE`
- gg - moves the cursor to the first line of the file
- G - moves the cursor to the last line of the file
- h, j, k, l - left, down, up, right
- 0 - beginning of the line
- $ - end of the line
- number`<ENTER>` - Go to the line number
- w - go to the beginning of the next word
- e - go to the end of the next word
- b - go back to the beginning of the current word or to the end of the previous word

### Bindings
- :Lex - open the file explorer in the left

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
