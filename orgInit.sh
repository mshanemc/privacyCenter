sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
# removed because it's already in the snapshot
# sfdx force:package:install --package 04t3t000002s8kRAAQ -w 20 --noprompt
sfdx force:source:push
sfdx force:org:open