setlocal tabstop=4 shiftwidth=4

au BufWinLeave *.java mkview
au BufWinEnter *.java silent loadview

map <leader>ru :terminal ./gradlew -q bootrun<CR>
