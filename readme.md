step run pipeline 
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
