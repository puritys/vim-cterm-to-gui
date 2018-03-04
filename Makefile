vroomStart:
	export DISPLAY=:2
	Xvfb :2 -screen 0 1024x768x16&

exec:
	rm -f /tmp/vim.log; DISPLAY=:2 vroom -u tests/.vimrc  tests/test.vroom ;
# cat /tmp/vim.log
