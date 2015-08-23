# Coursera_get_clean_data_project
Repository to upload the R script to cover the coursera  course "getting and cleansing data"'s  project

pre-requisites: I have used the dplyr, reshape2 and plyr package to perform this script. R.code contains the lines to install these packages in the computer but they are inactive.

Structure of the script: 
1- We read the files , convert to tables and put them together using rbind. At the end of this set of instructions we have one Join table for each of the files we have loaded: x_join, y_join etc...

2- We read Features table to have the descriptions for our observations

3-  We add descriptions to X_join(the ones from "features") and y_join and Subject tables

4- For each feature it extract the values for mean and sd and create one data set for each (i thought it would be useful, but in reality this could be avoided)

5- finally we create a data set with all the different features including activity and subject --> all_data_join

6- To create the summary by Activity and Subject i ues melt and ddply functions 
i have followed the below blog as Reference for this step: http://www.r-bloggers.com/using-r-quickly-calculating-summary-statistics-from-a-data-frame/

7- all_data_join_melted contains the mean for each observation summarized by the combination of activity and subject

More comments:
1. Due to lack of time i have not been able to make a small script to ask for the installation of the package in the computer (so user can decide if package is loaded). These lines are therefore inactive in the script.
2. Script can download and unzip the file. Assuming we are all using the same files and the files will be in the working directory these steps are inactive as well

