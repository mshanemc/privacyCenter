sfdx force:org:create -f config/project-scratch-def-snapshot.json -d 1 -s -w 60
# sfdx force:org:create -f config/project-scratch-def.json -d 1 -s -w 60

sfdx force:package:install --package 04t3t000002s8wj -w 20 --noprompt
sfdx force:source:push
sfdx automig:load -d data --concise
sfdx shane:user:password:set -l User -g User -p sfdx1234
sfdx force:org:open -p /lightning/n/privacycenter__Home
sfdx shane:data:favorite -o Individual -w "FirstName = 'Shane' and LastName = 'McLaughlin'" -l "Shane McLaughlin"