#Analysis

Two files CodeBook.md and run_analysis.R contain the variable descriptions and procedure for tidying the data set repsepctively.

There were no hard and fast rules as to how to tidy the data set so I decided to place both the subject and acivity as the first and second columns and group all the other variables by these using the **group_by** function. There were 79 observational variables. 

To illustrate my tidy data set, I will explain what I did for one subject. 
For example, for subject 1, there were 95 obervations while walking, 53 observations while walking upstairs, 49 observations while walking downstairs, 47 observations while sitting, 53 observations while standing, and 50 observations while laying; 347 observations total. 

Therefore I created a data frame for subject 1 with 347 rows and 79 columns. The tidy set was produced by averaging all variables by for each activity thereby creating a data frame with only 6 rows and 79 columns. I then did this for every subject. 
