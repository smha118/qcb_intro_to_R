# =====================================================================
# Day 3.1: Loops and if else
# =====================================================================

#Loops are used in programming to repeat a specific block of code
#If else - Allows user to execute certain command if condition is matched
#Loops and if else are fundamentals of all programming languages. The syntex is almost identical in different programming languages. (E.g Python, R, JAVA)


CountyVaxDataCA <- read.csv("cdph-vaccination-county-totals.csv", header = TRUE, sep = ",") 

CountyPop <- read.table("CountyData.csv", header = TRUE, sep = ",")

#We can pull out and print each element in data.frame by following code.
for (i in CountyPop){
  print(i)
}

#To print out specific column
for (i in CountyPop$County){
  print(i)
}
# or by index since County is second column in our data.frame
for (i in CountyPop[,2]){
  print(i)
} 

# You can also print by row by following code
# First, we can get index for rows with following command
# nrow() function will tell you how many total rows CountyPop has
nrow(CountyPop)
# 1:nrow(CountyPop) means generate a vector of integer that starts from 1 and increments by 1 until the number hits nrow(CountyPop), which is 58

index.for.rows=1:nrow(CountyPop)


for (i in 1:nrow(CountyPop)){
  #PRINT 
  print(CountyPop[i,])
} 


#now lets print only rows with Los Angeles and Orange County
CountyPop
for(i in 1:nrow(CountyPop)){
  # | means 'or'. You can also use & for 'and' for different conditions 
  if(CountyPop[i,2]=="Los Angeles" | CountyPop[i,2]=="Orange" ){
    print(CountyPop[i,])  
  }else{
    print(i)
    print("Not LA or Orange county")
  }
} 

#You can also change values in each row. 
#Let's try to change Los Angeles to abbreviated form LA
CountyPop
for(i in 1:nrow(CountyPop)){
  if(CountyPop[i,2]=="Los Angeles" ){
    CountyPop[i,2] = "LA"
  }
} 
  
  
# =====================================================================
# Day 3.2: Save & load data
# =====================================================================


#There are mainly 3 different ways you can save your data.
#If you are saving data.frame, you can use simple write.table function
CountyPopFilter <- select(CountyPop, County, Population, Per10K)
write.table(CountyPopFilter,file="CountyPopfilter.csv",sep=",",row.names = F)

#We know how to load the table - read.table or read.csv
rm(CountyPopFilter)
CountyPopFilter<-read.table("CountyPopfilter.csv",sep=",",header=T)

#You can also save them by R object using saveRDS
#Let's bring our vaxRate plot from Part 1
library(dplyr)
library(tibble)
library(lubridate)
library(ggplot2)
CountyPopFilter <- select(CountyPop, County, Population, Per10K)

VaxDataMerged <- left_join(CountyPopFilter, CountyVaxDataCA, by = c("County"="county"))

NormalizedVaxData <- VaxDataMerged%>% mutate(VaxDensity = fully_vaccinated/Per10K) %>% filter(VaxDensity > 10)%>% filter(!is.na(VaxDensity))

VaccinationRate <- NormalizedVaxData %>%
  select(date, County, VaxDensity, fully_vaccinated, Per10K, at_least_one_dose, new_doses_administered) %>%
  filter(Per10K >= 100)

figure <- ggplot(VaccinationRate, aes(x = ymd(date), y = fully_vaccinated, color = County))+ geom_smooth(method = "auto") +
  labs(x = "Date", 
       y = "Fully Vaccinated (Total)", 
       title = "Vaccinations in Large Counties")

#Save any object by saveRDS
saveRDS(figure,file="figure.rds")
#or save multiple objects like this
rm(figure)
figure
figure<-readRDS("figure.rds")
figure
#Load obj

#You can also save entire work environment
save.image("part2.Rdata")
rm(list=ls())
load("part2.Rdata")




# =====================================================================
# Day 3.3: R markdown
# =====================================================================

#Open up Part2.Rmd file to learn about the markdown file.