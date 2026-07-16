#!/bin/zsh

# hardcode the name of the tex file 
tex_file='case_for_temperature.tex'

# this grabs the ID of the last commit 
last_commit=$1

# make a name for the tmp file  
last_tex_file='manuscript'$last_commit.tex

# now let's get the content of the file that we want from the latt  
git show $last_commit:$tex_file >>  $last_tex_file 

# now try and do a latexdiff...
latexdiff-vc $last_tex_file $tex_file --pdf 

# move some files 
mv $last_tex_file ./version_diffs/$last_tex_file
mv 'manuscript'-diff* ./version_diffs/.
