# Typescript-Quickstart

A simple bash script to configure a basic Typescript project.

### How to use it

- add the quickstart.sh script wherever you want to start a new Typescript project
- Run `./quickstart.sh`
- The script will ask for a project name. Input a name and press enter
- Change into the project's directory with `cd <project-name>`
- Run the hello world script with `npm start`
- You now have a basic Typescript project to begin building however you would like!

### What it does

- Takes in a project name from the user and creates the directory
- Initiatializes a new typescript project with a basic tsconfig.json and package.json
- Creates an index.ts script to log "Hello, world!" to the console
- Adds a start script to package.json

### Potential next steps

- Make the experience more user friendly through better message formatting
- Add more project configurations (linter, edit tsconfig.json, etc.)
- Initialize a git repository
- Add in more boilerplate code
