A. For local test 
    1. Install depedancy :    

            -(Window) run command : ./Installscript.ps1    ( read thoroughtly the file Installscript.ps1 to know what to do) 
            -(Linux) run command : sudo sh Installscript.sh ( you may have to cd to the working directory, and run this first: chmod +x Installscript.sh )
            
    2. Cd to the working directory, run command: ( if you use linux then sudo su first)

            -npm install --force   
            -npm install -g json-server
            -( if use Linux, nano the file  package.json in main working directory and change line 7 into    "start": "./runscript.sh",  run command chmod +x runscript.sh  )

            -npm start 
            -follow the link that the cli generate (x.x.x.x:4200)
    

B. Step run pipeline 


1.  npm install , npm audit   ( use --force if needed)
2.  npm install -g json-server
3. json-server --watch db.json
4. ng serve 

tip  ( maybe u can run in local first, check the result then run pipeline with 'echo' command in each stage )


'o  + enter'


if use linux -> script .sh    bash
if use window  -> script.ps1    powershell


npm run build --prod
cd dist/browser  
 npm install -g http-server
http-server
