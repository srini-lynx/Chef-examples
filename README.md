Chef-examples

###Configuration of GIT ... so that we can push local changes to GIT HUB 

1> Ensure you Create Empty/New repository in GITHUB

2> In the Local Machine (in this case Vagrant M/C.) Initialize repository 

$[vagrant@chef-node$] git init 

3> Make sure to Create .gitignore file and add the .vagrant/ Folder to it (We don't want to push the files which Vagrant 

maintaining internally for the machine )

$[vagrant@chef-node$]touch .gitignore 

cat .gitignore 

.vagrant 

4> Add the remote repository to local M/C

$[vagrant@chef-node$] git remote add origin https://github.com/srini-lynx/Chef-examples.git 

(remote repository ... which is empty is added to local m/c)

5> Stage any local changes 

$[vagrant@chef-node$] git add .
$[vagrant@chef-node$] git status 

6> Commit all the Local changes (Vagrant machine) with appropriate Comments 
$[vagrant@chef-nodes$] git commit -m "Initial commit"

7> Push All the local changes to the Master (Github ) 

$[vagrant@chef-nodes$] git push -u origin master 

8> Check-out the changes in the GIT hub, if all the local changes are reflecting . 

9> Any time We need to do the local Change, First the changes has to be pulled from master , and then only the changes has to be 
made to local m/c and it has to be pushed back to master as a "standard practise"


