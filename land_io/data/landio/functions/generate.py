import os

teams = [
	{"TEAM": "red", "PATH": "red_concrete_powder", "FILL": "red_concrete"},
	{"TEAM": "orange", "PATH": "orange_concrete_powder", "FILL": "orange_concrete"},
	{"TEAM": "yellow", "PATH": "yellow_concrete_powder", "FILL": "yellow_concrete"},
	{"TEAM": "lime", "PATH": "lime_concrete_powder", "FILL": "lime_concrete"},
	{"TEAM": "green", "PATH": "green_concrete_powder", "FILL": "green_concrete"},
	{"TEAM": "aqua", "PATH": "light_blue_concrete_powder", "FILL": "light_blue_concrete"},
	{"TEAM": "blue", "PATH": "blue_concrete_powder", "FILL": "blue_concrete"},
	{"TEAM": "pink", "PATH": "pink_concrete_powder", "FILL": "pink_concrete"}
]

files = [f for f in os.listdir("template") if os.path.isfile(os.path.join("template", f))]
file_contents = {}

def create_dirs():
	for team in teams:
		if not os.path.exists(team["TEAM"]):
			os.mkdir(team["TEAM"])

def read_files():
	for file in files:
		with open(file, "r") as f:
			file_contents[file] = f.read()

def copy_files(team):
	for file in files:
		with open(file, "w") as f:
			new_contents = file_contents[file]
			for part in team:
				new_contents = new_contents.replace(part, team[part])
			f.write(new_contents)

if __name__ == "__main__":
	create_dirs()
	os.chdir("template")
	read_files()
	for team in teams:
		os.chdir(os.path.join("..", team["TEAM"]))
		copy_files(team)
