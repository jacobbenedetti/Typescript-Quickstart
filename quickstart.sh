# STEPS
# get input from user for project name --DONE
# make a new directory in CS for Fun with the project name --DONE
# run `npm init --yes` to create a package.json --DONE
# run `npm i -D typescript ts-node` to install typescript --DONE
# run `npx tsc --init` to create a basic tsconfig.json --DONE
# run `echo "console.log('Hello, world!');" >> index.ts` to create an index.ts file --DONE
# add `node --loader ts-node/esm index.ts` as a script in package.json --DONE

dir="$(pwd)"
 
create_project () {

  echo What would you like to name your project?
  echo Warning! The folder will be named exactly as you input.

  read projectName
 
  if test -d "$dir/$projectName"; then  
   echo "This project name is already taken! Please select a new one and rerun the script.";
   exit
  else
    cd "$dir"
    mkdir $projectName
  fi

}

setup_typescript () {

  cd "$dir/$projectName"
  
  npm init --yes

  npm i -D typescript ts-node

  ./node_modules/.bin/tsc --init

  `echo "console.log('Hello, world!');" >> index.ts` 
 
  jq 'del(.scripts.test) | .scripts.start = "node --loader ts-node/esm index.ts"' package.json > temp.json && mv temp.json package.json

  echo A barebones typescript project has been configured.

}

main () {

  create_project
  
  setup_typescript

}

main

