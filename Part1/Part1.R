# =====================================================================
# Welcome to the UCLA Collaboratory Intro to R course. 
# =====================================================================

# R is one of the most commonly used and powerful statistical 
# programming languages and is used to analyze and manipulate 
# data for virtually every professional industry. Over the last 
# 10 years, powerful new tools within R have emerged to make data 
# manipulation and visualization an easier and more accessible 
# process. R is an open source software which means that it will 
# remain freely available to those who need to use it, but also
# may change its capabilities and improve over time. 

# How does R work?

# R reads your data (e.g., from an excel or text file) and makes 
# an image of it, which is stored in temporary memory. When you 
# edit your data, you are only editing an image of it; the original 
# dataset is unaffected.  You can then create and alter the datasets 
# within R, which can then be written back to a permanent file. 
# This is called 'nondestructive editing'. You can also create 
# objects (like matrices) from directly within R, as opposed to 
# reading them in from a file.

# R can do almost anything you can think of doing with your data, 
# which greatly expands the amount of creativity you can apply to 
# your analyses. By using scripts (".R" files, such as this one), 
# you can keep a record of everything you've done to manipulate and 
# analyze your data. Those benefit you later, and can be published 
# or shared with colleagues.
print("Hello R")


# This course is designed for learners who have little to no experience 
# with R programming, but want to learn. Over the course of this three 
# day workshop we will cover the topics described below. 

## Day1: Introduction to R Studio, how to find help, Rstudio cheat 
## sheets, variables, if else statements, loops, functions, installing packages, loading libraries, data structures and classes, importing data, examining data sets.

## Day2: Filtering, selecting and calculating columns with tidyr and dplyr, 
## grammar of graphics in ggplot, basic data visualization with ggplot2.

## Day3: R markdown basics. 

# Take notes and annotate within this document by using the hashtag / pound #
# symbol




# =====================================================================
# Day 1.1: The layout, soft-wrapped code, and saving files
# =====================================================================

# The initial phases of this course will move slowly to be sure that 
# everyone's machines are working properly for the lessons to come. 
# Once Rstudio is open the first thing to do is take a look around the 
# user interface. 

# In RStudio's default setting, the left side is the terminal. Once you 
# open an R source file, codes and scripts are displayed in the top 
# left hand corner. The bottom left remains as is the terminal where 
# code can be typed or copied. 

# The top right is the "Global Environment" which is where information
# about objects and variables is stored. 
a=1



# The bottom right panel is arguably the most important panel: take a 
# look at the series of tabs. The 'Files' tab can be used to navigate 
# and set directories. The 'Plots' tab is where generated plots will 
# show up. The 'Packages' tab shows which R packages are installed in 
# your environment. The 'Help' tab is where to search for usage 
# information for R commands that are currently installed. The 'Viewer' 
# tab is for viewing local web content or web-based graphics.

# There is certainly plenty to explore in the Rspace. There are some 
# global options that you may want to review before beginning. First, 
# allowing for 'soft-wrap' will make it significantly easier to view 
# code in the top left window. To change this setting, go to the 'Tools' 
# menu, and select "Global Options" this should open a new window with 
# many options. Under the 'Code' tab, there will be a box that says 
# "soft-wrap R source files". Select that box, if it is not already 
# selected.

# Creating new R projects, R source files, and R markdown documents.
# (look for the + at the top left)


# =====================================================================
# Day 1.2: if else statements
# =====================================================================


# > greater than
# < less than
# >= greater or equal
# <= lesser or equal
# == equal
if( b=="R is cool"){
  print("yes")
  
}else if(b<0.05){
  print("R is good")
   
}else{
  print("no")
}





# =====================================================================
# Day 1.3: Loops
# =====================================================================
a<-c(1,2,3,4,5)
b<-c(5,4,3,2,1)



for(i in a){
  if(i == 1){
    c=c+i
  }else if(i == 3){
    c=c*i
  }
}

for(i in b){
  if(i == 1){
    c=c+i
  }else if(i == 3){
    c=c*i
  }
}





c<-1
while(c<10){
  c=c+6
  print(c)
}



# =====================================================================
# Day 1.4: Functions
# =====================================================================
test_function <- function(data){
  c<-10
  for(i in data){
    if(i == 1){
      c=c+i
    }else if(i == 3){
      c=c*i
    }
  }
  return(c)
}

a<-c(1,2,3,4,5)
b<-c(1,4,2,6,3)

test_function(a)
test_function(b)




# packages as collection of functions
# =====================================================================
# Day 1.5: Installing and loading packages
# =====================================================================

# Almost all R programming will require loading or installing specific 
# R packages in order to execute particular functions. For the purposes 
# of this workshop we will need to use several packages. In order to do 
# that you must use the 'install.packages()' command. 

# The packages: 
# tidyr
# dplyr
# tibble
# RColorBrewer
# ggplot2
# lubridate

install.packages('tidyr') 
install.packages('dplyr') 
install.packages('tibble') 
install.packages('RColorBrewer') 
install.packages('ggplot2') 
install.packages('lubridate') 

install.packages(c('tidyr','dplyr','tibble','RColorBrewer','ggplot2','lubridate'))

# In order to run code from an Rsource file, go to the line or highlight
# the code that you want to run and hit Command/Control + Return. This 
# will execute the line(s) of code in the console. Install the rest of 
# the packages listed above. Notice if you get any warning or error messages. 

# Packages are bits of code that are built in order to perform specific tasks
# in R. For example: the tidyr, dplyr and tibble packages are built organize 
# and clean data that you are working with. The packages ggplot2 and RColorBrewer 
# are used for data visualization and color blending. The lubridate package is
# used for working with dates and times when plotting. Each of these will 
# will come in handy by the end of the workshop.

# Once packages are installed you can see them listed under the 'Packages' 
# tab in the bottom right hand panel. In order to use the installed 
# packages, they need to be loaded in the R session. To do this use the 
# 'library()' command. See examples below.

library('tidyr')
library('dplyr')
library('tibble')
library('RColorBrewer')
library('ggplot2')
library('lubridate')

package.to.load<-c('tidyr','dplyr','tibble','RColorBrewer','ggplot2','lubridate')
lapply(package.to.load, library, character.only = TRUE)


# Use the library() command for all the packages you just installed. 
# Are there other ways to load libraries in R?
# Notice any errors or warnings.

# =====================================================================
# Day 1.6: Finding Help
# =====================================================================

# There are a lot of options when it comes to finding help in R. 
# The quickest way is to go to the bottom right hand corner under 
# the 'Help' tab and use the search box to search the commands you 
# need help with. We will practice this as we start working with code.

# Sadly, the documentation for some packages in R is absolutely 
# horrific and unintelligible. So our next best friend is the internet. 
# But before going into the abyss - a good place to start are the 
# RStudio cheat-sheets. These cheat sheets are made for some of the most 
# commonly used and useful packages in R and they outline the command 
# options and syntax for those packages. For this particular workshop 
# I recommend a few listed below:

# data import: 
# https://evoldyn.gitlab.io/evomics-2018/ref-sheets/R_data-import.pdf
# data transformation: 
# https://4.files.edl.io/b9e2/07/12/19/142839-a23788fb-1d3a-4665-9dc4-33bfd442c296.pdf
# data visualization with ggplot2: 
# https://github.com/smha118/qcb_intro_to_R/blob/main/CheatSheets/data-visualization-2.1.pdf

# RStudio has created a bunch of these cheat sheets and they can all 
# be accessed using RStudio Cloud or by searching RStudio cheat sheets. 
# There is no need to look at these in detail during the workshop yet. 
# Relevant commands will be provided through instruction. However, I highly
# recommend reviewing these cheat sheets to see the breadth of capabilities
# of RStudio's selected packages at some point.

# Otherwise, a large majority of data wrangling and visualization questions
# have been asked or discussed on various forums. One strategy is to just 
# describe what you are trying to do in the google search bar and see if any 
# forums pop up. Common forums include 'StackOverflow', 'R-bloggers' and for 
# the life sciences 'Biostars'.

# Before we begin, lets take a moment to do some jargon busting. Are there
# you have heard around data analysis or R that you would like to learn more
# about? List them here and search the definitions. If new terms come up, 
# write them down here to look up later.

# =====================================================================
# Day 1.7: Importing Data
# =====================================================================

# ---------------------------------------------------------------------
# The working directory
# ---------------------------------------------------------------------

# Similar to other command-line operations, setting the working directory 
# simplifies importing and exporting data. When you ask R to import (read) 
# a file, or export (write) a file, it will point automatically to the 
# working directory, so you don't have to type in a directory path.

# To see what directory you are currently in type getwd().

getwd()
setwd("C:/data1/git/qcb_intro_to_R/Part1/")
# The easiest way to set the directory is by navigating to the folder of 
# interest in the 'Files' tab on the bottom right and then click on 'More' 
# which allows you to set the working directory, or return to the current 
# working directory.

# NOTE: you can use the command setwd() to set the working directory to any 
# other file path you want. The "~" points to your current directory. When 
# in doubt, type the full file path instead of "~".

# To see the contents of the working directory type dir()

dir()

# ---------------------------------------------------------------------
# Importing Data
# ---------------------------------------------------------------------

# In order to work with data in R it needs to be imported from an outside 
# source. There are some data sets bulit into R, but In a typical research 
# workflow this will come from a dataset that you create, or one that you 
# find in a publicly available database. 

# For this particular lesson we will pick apart some public health related 
# data. In this case we will import a few different data sets. The first is a
# table of CA county population information that I made in Excel and I saved 
# as a CSV. The second is a data set is from the Calfornia Department of
# Public Health (CDPH) COVD19 vaccination data collection project I've 
# downloaded the data set so that we can import it. The third data 
# set is sourced from the Tidy Tuesday community looking at measles 
# vaccination rate at schools across the country. We are going to use 
# these data sets to learn about the functionality of R, and ask some 
# basic public health questions throughout this lesson. 

# --------------------------------------------------------------------- 
# Import data from a local directory
# ---------------------------------------------------------------------

# For this lesson our goal is to work with some of our imported data to
# create some visualizations for the information that we are working with. 
# We will import some public COVID19 data along with some information about 
# CA county populations. We will use some data manipulation, cleaning and 
# visualization tools in order to plot the number of COVID19 vaccinations   
# administered per 10,000 residents for every CA county listed. We will refer
# to this metric as 'vaccination density'.

# Move into the 'Data' folder within this directory. Below is an example of 
# what the code would look like (this code wont work).

setwd("~/Path/To/Working/Directory/210126-IntroToR/Day1/Data") 

# Now we're going to load our first data set into R. The base R 
# command for reading a table is the read.table() command. We can read 
# the table into an object using the assignment "<-" operator. 
#For tab separated files use '\t' instead of ','
CountyPop <- read.table("CountyData.csv", header = T, sep = ",")
CountyPop.csv<-read.csv("CountyData.csv",header=T)
CountyPop$County[2]

# The read.csv() and read.csv2() commands can also be used for importing 
# this data. Look at the documentation for read.table(). Notice the syntax,
# or the way the code is written. There are 3 arguments in this command
# separated by commas. First we tell the command which file we are loading
# written in quotations, second we indicate that the file contains headers,
# in this case, variable names, and last we indicate the separator.

# Using this example we can analyze the contents of the table that was imported 
# using the View() command. You can either click on your new data frame in the 
# global environment or type View(dataframe) to see it. 


View(CountyPop)


# There are a lot of strategies that can be used to assign variable/object
# names. Generally it is best-practice to assign things with names that are 
# short, but descriptive and without spaces. Here are some example naming 
# conventions

# YouCanNameThingsLikeThis
# maybelikethis
# or.like.this
# even_like_this
# but-not-like-this (the dash is also used for subtraction)
# 4nor_likeThis (numbers are okay to use, but only at the end)

# Lets load in our other data sets. In this case, we have the California
# department of public health COVID vaccination totals data set. If we run
# We can see in our working directory that there is a csv file called
# "us_states_covid19_daily.csv". Use the read.csv command and the assignment
# operator <- to assign it to a variable.

CountyVaxDataCA <- read.csv("cdph-vaccination-county-totals.csv", header = T, sep = ",")



# --------------------------------------------------------------------- 
# Import data from an online directory
# ---------------------------------------------------------------------

# Another common mechanism to load data into R is by directly using the
# path for an online directory. In this case we will be using a dataset
# from a dataset collected by the TidyTuesday community. If you are looking
# to get some extra practice in R after this, I recommend checking out their
# data sets, or participating in a TidyTuesday event. For more info check out:
# https://github.com/rfordatascience/tidytuesday

# Lets load in the measles vaccination dataset You can find more info about
# the data set by following this url:
# https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-02-25/readme.md

# The data set itself can be loaded like a CSV file using the read.csv command 
# by replacing the file-type with the following URL: 
# https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv

# Give it a try. 

MMRVaccineRate <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv', header = T, sep = ",")


# --------------------------------------------------------------------- 
# Data Structures, Types and Summaries
# ---------------------------------------------------------------------

# R works most efficiently with data in the form of vectors, which you 
# can think of as lists of info that fall under a particular class. When
# multiple vectors of the same length are joined up together they create
# a data frame, which might look similar to a table you would see in excel.
# A data frame can have multiple classes of data, in contrast, a data matrix
# can also like a data frame, with the exception that matricies are limited 
# to only one class of data.

# R recognizes several classes of data that can be 'packaged' into vectors. 
# Characters are strings of alphanumeric charaters that have quotation marks 
# around them. Integers and Numerics, which are different classifications 
# of numbers, Integers represent whole numbers and Numerics also include
# decimals and numbers in scientific notation. Logicals are TRUE / FALSE 
# designations which are very useful for creating loops and for filtering
# or selecting data. 

# There are a lot of ways view aspects of your data set. Depending on the 
# number of columns, or rows that you have, you might want to use one
# or more strategies. The quickest way to view a data set is to use the
# head(dataframe) command to see the first several lines of a data set
# or use tail(dataframe) to see the last several lines the data set. 
# Try it out with the data sets that we imported.





# You can also look at the 'class' of the data sets and their various
# components. This is very important because certain commands are often 
# designed to work with specific classes of data. Looking up the class
# of data that you are working with can give a clue when it comes time
# to troubleshoot. In this case the class of data we are working with 
# so far is dataframes. Use the class() command on the objects stored in 
# our global environment and you can see. You can also use the str()
# command to look at the class of variables within a data frame

class(CountyVaxDataCA$county)

str(CountyVaxDataCA)


# The classification is important because some operations can only function 
# when the classifications match, or are of a particular type. You can change
# classifications using base R commands such as:

# as.character() - interprets object as character class
# as.integer() - interprets object as whole-number integer class
# as.numeric() - interprets object as decimal number class
# as.logical() - interprets object as logical (TRUE/FALSE) value

example<-"1"
example<-as.numeric(example)
class(example)

class(CountyPop$Population)
CountyPop$Population <- as.integer(CountyPop$Population)
CountyPop$Population


genes<-c("gyrB","Apoe1","Apoe2","Ttr1","GAPOE")

for(i in genes){
  if(grepl("^Apoe",i,ignore.case = T)){
    print(i)
  }
}

# Fill in the XXXX with a column in the data sets we imported. Try using
# the auto-complete feature here.

class(MMRVaccineRate$state)
class(MMRVaccineRate$lat)

class(CountyVaxDataCA$XXXXXX)
str(MMRVaccineRate)
# Notice that some of these variables are listed as factors. This won't
# be a problem for us now, but let's practice changing these some of these
# factors in to characters. Using the examples below change the class.

#Convert into a character, or another class and see what happens
CountyPop$County <- as.numeric(CountyPop$County)
CountyPop<-read.table("CountyData.csv",header=T,sep=",")


test<-str_replace(CountyPop$Population,",","")
as.numeric(test)


gsub(",","",CountyPop$Population)

#Check the class of the CountyPop$County data to check to see if it worked
XXXXXX(CountyPop$County)



# Check the class of some other columns and type them in here.




# Variables in R are case sensitive, the most common reason why code does not 
# work is because there is a typo in the code that prevents R from recognizing
# what it is being tasked to do.

# You can use specific commands to take a look at the different column and 
# row.names within various data sets. 

colnames(CountyVaxDataCA)[1]<-"Date"
colnames(CountyVaxDataCA)
rownames(CountyPop)

# Protip: there are a wide variety of built in functions for summarizing data
# below, I list a few of the more useful commands. Look them up in the 
# Center: mean(), median()
# Spread: sd(), IQR()
# Range: min(), max(), quantile()
# Position: first(), last(), nth(), which()
# Count: n(), n_distint() 
# Summarize: summarize(), str()

mean(CountyVaxDataCA$population)

summarise(CountyVaxDataCA,mean=mean(population),min = min(population), n = n())




# Removing items from your Global Environment. If you are working with a 
# lot of different objects in the global environment it may be helpful to 
# periodically view or clear it out. To list everything your global 
# environment use ls(), to clear out individual objects use rm(). To clear 
# the whole global environment use rm(list=ls()). Or click on the little
# broom next to "Import Dataset" in the Global environment.

# ---------------------------------------------------------------------
# Test what you learned
# ---------------------------------------------------------------------

# For our example research question, we want to find a way to visualize the 
# number of vaccinations density of COVID19 for every state in the US. We 
# need to import some COVID19 vaccination data for analysis. 

# How many observations and variables are there in the full 'CountyVaxDataCA'
# data set? Write your answer in the space below:




# What variables do you see in the COVID Vaccination Data table? Use colnames()
# to list of all the column names. What do each of these column names mean?
# Hint: Information about datasets is generally called metadata. Most data 
# repositories require metadata for their submissions. In this case you You can
# look up the metadata at the source listed below: 
# https://github.com/datadesk/california-coronavirus-data



# Our next step will be to merge two tables together take a look at the states
# table and the CovidData table. To do that, we will need to tell R where the data
# sets align. Which two columns are the same between the two data frames?



# In your own practice you will most likely have to create dataframes
# and rename columns to make your work easier. Keep in mind that when you name
# columns make sure that there is enough information for the name 
# to be useful. If you have to share or troubleshoot your work someone else 
# might have to look through the code and make sense of it. Same thing with 
# loading data sets, knowing what the variables mean within data sets can help 
# inform how you interpret the information. Likewise, looking at the full 
# context of the research ultimately helps determine how the data can be 
# interpreted. Failing to understand the full context of the data you are 
# using for an analysis can lead to very significant real-world consequences 
# (see reading recommendations below)

#Finally, Let's learn how to save data in to csv format.
write.csv(CountyPop,file="countypop2.csv")


# =====================================================================
# Day 2.1: More data wrangling with dplyr
# =====================================================================

# The term 'data wrangling' describes the process of reshaping data into 
# forms that are more readily useful for visualization. This could be taking 
# raw data and performing some form of quantification or computation. 
# This could be merging data sets, pivoting data sets, selecting or 
# subsetting data, performing calculations to make new columns, and summarizing 
# data in some way. In this section we will explore some common and 
# powerful data wrangling tools. For more information on different 
# operations that can be used check out the RStudio data transformation 
# cheat sheets using dplyr() and tidyr(). 
as.numeric(CountyPop$Population)
gsub(CountyPop$Population)


package.to.load<-c('tidyr','dplyr','tibble','RColorBrewer','ggplot2','lubridate')
lapply(package.to.load, library, character.only = TRUE)


CountyVaxDataCA <- read.csv("cdph-vaccination-county-totals.csv", header = TRUE)


CountyPop <- read.table("CountyData.csv", header = TRUE, sep = ",")

CountyPopFilter <- select(CountyPop, County, Population, Per10K)

?gsub
CountyPop$Population<-as.numeric(gsub(",","",CountyPop$Population))


# ---------------------------------------------------------------------
# Cleaning Data with Dplyr
# ---------------------------------------------------------------------

# The easiest way to start working with and clean data frames is with the 
# dplyr and tidyr packages. These packages offers a wide variety commands to 
# filter and clean data frames in order to make data sets more manageable to
# work with and visualize. We loaded them earlier so we can get started using
# them.

# We can use the select() command to select specific columns from any table.

CountyPopFilter <- select(CountyPop, County, Per10K)

# Notice that in the Global Environment, CountyPopFilter only has 2 variables 
# instead of 4. We removed the 'Rank' variable and the non-normalized
# 'Population' variable. 

# We can use the filter() command to pick on specific rows characteristics.

VaccineCA <- filter(MMRVaccineRate, state == "California")
VaccineCA
# Protip: Keep an eye on the observations and variables as you process 
# through your data. This can help keep track of what is happening to the 
# shape of your data. When you have lots of variables you have a wide data 
# set. When you have lots of observations you have a longer data set. The 
# data needs to be shaped in different ways for different data visualization 
# packages.

# ---------------------------------------------------------------------
# Merging Tables
# ---------------------------------------------------------------------

# In order to carry forward with our analysis, we need to reorganize 
# the data in a way that aligns the county population information with 
# the number of vaccine doses. In order for R to merge tables - they 
# need to have some level of overlapping information so that it knows 
# how to align the tables. In this case we are going to match columns
# based on the state information. We can use the dplyr full_join() 
# command in order to bring the tables together and use the "by =" to 
# tell it what columns should be treated as equivalent.




VaxDataMerged <- left_join(CountyPopFilter, CountyVaxDataCA, by = c("County"="county"))


# Notice how the tables merge together. Did it work? How did this operation 
# merge the tables? 



# Check the documentation to see examples of arguments and syntax for 
# the command. What happens if we use inner_join() instead of left_join()? 
# What about right_join() or full_join()? What are the differences that 
# you observe?


#Good illustration about joins https://www.webtrainingroom.com/mysql/joins



# ---------------------------------------------------------------------
# Using pipes in dplyr
# ---------------------------------------------------------------------

# Pipes are operators that can be used to string together commands in dplyr. 
# They looks like this %>%. Using pipes enables stringing together multiple 
# dplyr operations in one step. Notice the syntax of this example. Organizing 
# the code in this way can help with readability of the code.

CountyPopFilter <- CountyPop %>% select(County, Population, Per10K) %>% filter(County=="Los Angeles")


NewDataFrame <- OldDataFrame %>%
  select(col1, col2, col3) %>% # select columns from OldDataFrame
  group_by(col3) %>% # group by the information contained in col3
  mutate(col4 = col2 * 2) %>% # create a new col4 by multiplying col2 * 2
  filter(col1 != "NA") # remove all rows containing NA values in col1

# For our example, we want to calculate the number of COVID vaccinations depending
# on the population density for every county. When we merged the table above, 
# the county population information (per10k residents) aligned with the number 
# of COVID19 vaccinations.  

colnames(VaxDataMerged)
NormalizedVaxData <- VaxDataMerged %>%
  mutate(VaxDensity = fully_vaccinated/Per10K) %>% 
  filter(VaxDensity > 10) 
unique(NormalizedVaxData$County)
# When performing calculations NA's can be introduced where calculations fail. It is a good practice to check your data every time you do a calculation to be sure everything works as expected. NA's sometimes trip up some commands in R so it is useful to know how to remove NA values from your table. 

# We can remove rows containing NA using the filter command. In this particular 
# command we use a function 'is.na()'. ! (Means 'Not'; so !is.na() means is not na) in front of is.na() will give list of logical values that are not NA
# when used in the filter command. What are some other relational operators used in R?




# What if we wanted to our plot to only show data from states once they reach 
# a threshold of 50 Cases per 10,000 residents. How would we rewrite the filter
# command to remove all VaxDensity values below 50?



# Lets break down a more sophisticated example where we simultaneously group by
# specific features, and summarize data. 
LastMonthSummarized <- CountyVaxDataCA %>%
  filter(date > ymd("2021-09-19")) %>%
  group_by(county) %>%
  summarize(MeanNewDoses = mean(new_doses_administered), 
            NewPfizerDoses = mean(new_pfizer_doses), 
            NewModernaDoses = mean(new_moderna_doses), 
            NewJJDoses = mean(new_jj_doses))
LastMonthSummarized

# =====================================================================
# Day 2.2: Plotting with ggplot2
# =====================================================================

# ggplot2 is based on what is called the 'grammar of graphics'. This is 
# the idea that you can build nearly every graph from the same components: 
# (1) a data set, (2) a coordinate system and (3) 'geoms' which are visual 
# marks that represent data points. ggplot2 is able to create a diverse set 
# of plots using these three characteristics. Here we will explore how to 
# construct a few example plots using ggplot2. For a more exhaustive list 
# of ggplot2 functions please review the ggplot2 cheat sheet linked here: 
# https://github.com/smha118/qcb_intro_to_R/blob/main/CheatSheets/data-visualization-2.1.pdf

# It is worth fully exploring ggplot2 documentation. There are many 
# customizable features for each geometry making ggplot2 one of the most 
# comprehensive packages for data visualization in R. 

# First lets pull some data from an earlier step. Lets filter on counties
# with more than one million residents, and plot a line graph using ggplot2 
# that shows the total number of positive cases beginning on the first day 
# of recorded COVID19 vaccinations for those counties. 

# ---------------------------------------------------------------------
# Creating a simple line plot with ggplot2
# ---------------------------------------------------------------------

VaccinationRate <- NormalizedVaxData %>%
  select(date, County, VaxDensity, fully_vaccinated, Per10K, at_least_one_dose, new_doses_administered) 

VaccinationRate <- VaccinationRate %>%
  filter(Per10K >= 100)

plot <- ggplot(VaccinationRate, aes(x = ymd(date), y = fully_vaccinated, color = County)) + 
  geom_smooth(method = "auto") + 
  geom_point()+
  #geom_line()+
  labs(x = "Date", 
       y = "Fully Vaccinated (Total)", 
       title = "Vaccinations in Large Counties")

#ymd(VaccinationRate$date)
plot
?geom_smooth()
# This is a typical example of a plot created by ggplot. Notice the syntax 
# in the example below. Within ggplot() we define the data frame to pull 
# information from, and list the 'aesthetics' aes() or the defining 
# characteristics for the plot. Within the aesthetics the x and y variables 
# are defined, along with other measurable characteristics. The arguments 
# are linked together with a + . This allows multiple layers to be stacked 
# on top of each other to create a plot. 

# Notice that on the x variable date is within ymd(). This is a command within 
# the lubridate package. Try and create the plot without ymd() around date - 
# what happens?

# The axis titles and legends are highly customizable. My best strategy so far 
# to figure out how to customize these components has been to Google search 
# something like "how to edit axis labels ggplot". Many people have posed blogs 
# or strategies they have used to overcome various challenges. For now, notice 
# that labels are edited under labs( x = "x label", y = "y label", 
# title = "chart title")

ExamplePlot <- ggplot(DataFrame, aes(X, Y)) + 
  geom_smooth() # this geom creates a linear model

# Now try to create an identical plot looking at case density for the large
# instead of total cases. I've copied over the syntax of the code, now fill in 
# the variables where we see XXXX to get the code to work.

VaxDensityPlot <- ggplot(VaccinationRate, aes(ymd(date), VaxDensity, color = County)) +
  geom_smooth(method = "auto")+ 
  labs(x = "Date", 
       y = "Full Vaccinations per 10k Residents", 
       title = "Vaccination Density in Large Counties")

VaxDensityPlot

# This plot is a bit hard to read - we can separate out the different counties
# by using the facet_wrap command. I've copied over the syntax of the code, fill
# in the variables where we see XXXX to get the code to work.

VaxDensityPlotFacets <- ggplot(VaccinationRate, aes(ymd(date), VaxDensity, color = County)) +
  geom_smooth(method = "auto") + 
  facet_wrap(facets = "County")
VaxDensityPlotFacets
VaxDensityPlotFacets <- ggplot(VaccinationRate, aes(ymd(date), VaxDensity, color = County)) +
  geom_smooth(method = "auto") + 
  facet_wrap(facets = "County")



# ---------------------------------------------------------------------
# Creating Violin plots with ggplot2
# ---------------------------------------------------------------------

# Having the data all divided up gives us a nice picture for all the
# different vaccination trajectories. Lets try to look at a small window
# (just the last month) of new confirmed cases. The example below shows
# how to filter dates. In this example

LastMonthVaccinations <- VaccinationRate %>%
  filter(ymd(date) >= ymd("2021-09-19"))

# What is happening in this filter step? Try running the script without 
# the ymd() command.
LastMonthVaccinations2 <- VaccinationRate %>%
  filter(date >= "2021-09-19")



# Below is some example code for creating a Violin Plot, Take a moment to look
# at the geom_violin() documentation and look at the different argument options.


VaxViolin <- ggplot(LastMonthVaccinations, aes(County, new_doses_administered, fill = County)) +
  geom_violin(scale = "width")+
  geom_dotplot(binaxis = "y", dotsize = 0.5, stackdir = "center", fill = "black") +
  scale_fill_brewer(palette = "Blues")+ 
  labs(title = "Doses Administered In Large Counties",
       y = "New Doses Administered")

VaxViolin
?geom_violin
# The axis looks a bit ugly with the overlapping text in the x axis. Let's
# remove those labels to create a cleaner plot. Fill in the XXXX to get the
# code to work

VaxViolin2 <- ggplot(LastMonthVaccinations, aes(County, new_doses_administered, fill = County)) +
  geom_violin(scale = "width")+
  scale_fill_brewer(palette = "Blues")+ 
  theme(axis.text.x=element_blank())+
  labs(title = "Doses Administered In Large Counties",
       y = "New Doses Administered")

VaxViolin2

# We rarely create plots without looking at mean and standard deviation
# measurements. There are several ways to do that, but one way to do this
# is with the stat_summary function added to ggplot. Fill in the XXXX to 
# get the code to work.

VaxViolin3 <- ggplot(LastMonthVaccinations, aes(County, new_doses_administered, fill = County)) +
  geom_violin(scale = "width")+
  scale_fill_brewer(palette = "Blues")+
  stat_summary(fun.data = mean_sdl, fun.args = list(mult=1))+
  labs(title="New Doses Administered", 
       x = "County")+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 10))

?mean_sdl
VaxViolin3

VaxViolin3 <- ggplot(LastMonthVaccinations, aes(x=County,new_doses_administered, fill = County)) +
  geom_violin(scale = "width")+
  
  scale_fill_brewer(palette = "Blues")+
  stat_summary(fun.data = mean_sdl, fun.args = list(mult=1))+
  #stat_summary(fun.data = mean_sdl,fun)+
  #stat_summary(fun.data=)
  labs(title="New Doses Administered", 
       x = "County")+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 6))




# ---------------------------------------------------------------------
# Reflections and Connections
# ---------------------------------------------------------------------

# Look into the documentation for geom_smooth() look at the usage. 
# What does the method parameter do? What happens when you create 
# lines with different methods? What do these lines mean?



# Look into the documentation for geom_violin() what does the scale
# parameter do? 




# Look at the ggplot2 cheatsheet. If you wanted to add a dotplot on
# top of the violin plot, how might you do it?



# =====================================================================
# Day 2.3: Performing Basic Statistics in R
# =====================================================================

# We have gotten a taste of what R can do in data visualization. We 
# have plots and can see the mean values and their standard deviations.
# Now the question is how do we know that the different states are 
# significantly different? Using our data tables from before lets perform
# some t-tests to see if we can see significant differences between the 
# number of total new vaccinations doses given between two of the states 
# we looked atin the violin plot. For example, let's compare San Diego and
# Los Angeles.

  
  #mm-dd-yy
  "01-18-89">"01-19-88"
  
  mdy("01-18-89") > mdy("01-19-88")  
  
# Using the filter command create a data frame with the last month of
# vaccination doses administered per million for SD and LA.

LAvax <- LastMonthVaccinations %>%
  filter(County == "Los Angeles")

SDvax <- LastMonthVaccinations %>%
  filter(County =="San Diego")

# Use the t.test() function in order to compare the VaxDensity columns like this:

t.test(LAvax$VaxDensity, SDvax$VaxDensity)

VaxViolin3

# Los Angeles and San Diego are qualitatively different. This we can actually see
# on the plots that we created before. However, San Diego and Orange county look
# much more similar. Using the same approach, test to see if they are significantly
# different. I've copied over the code for this. Fill in the XXXXX in order to 
# get it to run

SDvax <- LastMonthVaccinations %>%
  filter(County  == "San Diego")

OrangeVax <- LastMonthVaccinations %>%
  filter(County  =="Orange")

t.test(SDvax$VaxDensity, OrangeVax$VaxDensity)

# R has a powerful suite of tools that can be used for statistical testing. 
# T-testing is barely scratching the surface. Here are some other commands 
# for common statistical tests:

# Pairwise tests: oneway.test(), pairwise.t.test()
# Testing distribution: aov_residuals()
# Chi-Squared: kruskal.test(), chisq.test()
# Linear Regression: lm()


# ---------------------------------------------------------------------
# End of Part 1
# ---------------------------------------------------------------------


# There are many ways to do things in R, plotting is no exception. Other 
# plotting libraries that could be of interest...

# gplots - general plotting library
# plotly -  general plotting library
# leaflet - mapping library
