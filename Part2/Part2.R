# =====================================================================
# Day 3.1: Save & load data
# =====================================================================

library(dplyr)
library(tibble)
library(lubridate)
library(ggplot2)
#There are mainly 3 different ways you can save your data.
#If you are saving data.frame, you can use simple write.table function
#We know how to load the table - read.table or read.csv
CountyPopFilter<-read.table("CountyPopfilter.csv",sep=",",header=T)
CountyPopFilter <- select(CountyPop, County, Population, Per10K)

write.table(CountyPopFilter,file="CountyPopfilter.csv",sep=",",row.names = F)

#You can also save them by R object using saveRDS
#Let's bring our vaxRate plot from Part 1

CountyPopFilter <- select(CountyPop, County, Population, Per10K)

VaxDataMerged <- left_join(CountyPopFilter, CountyVaxDataCA, by = c("County"="county"))


VaxDataMerged$Population <- as.numeric(gsub(",","",VaxDataMerged$Population))

NormalizedVaxData <- VaxDataMerged %>% mutate(VaxDensity = fully_vaccinated/Per10K) %>% filter(VaxDensity > 10)%>% filter(!is.na(VaxDensity)) %>%
mutate(Population_category=ifelse(Population > 1000000, "high","low"))

VaccinationRate <- NormalizedVaxData %>%
  select(date, County, VaxDensity, fully_vaccinated, Per10K, at_least_one_dose, new_doses_administered) %>%
  filter(Per10K >= 100)

figure <- ggplot(VaccinationRate, aes(x = ymd(date), y = fully_vaccinated, color = County))+ geom_smooth(method = "auto") +
  labs(x = "Date", 
       y = "Fully Vaccinated (Total)", 
       title = "Vaccinations in Large Counties")
figure
#Save any object by saveRDS
saveRDS(figure,file="figure.rds")
rm(figure)
figure<-readRDS("figure.rds")

png(filename = "geom_smmooth_ex.png",width = 8,height=8,units = "in",res=300)
figure
dev.off()


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
# Day 3.2: R markdown
# =====================================================================
#Open up Part2.Rmd file for this section.