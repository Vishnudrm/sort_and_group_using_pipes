data("ToothGrowth")
View(ToothGrowth)

#without using nested function

filtered_tg<-filter(ToothGrowth,dose==0.5)
arrange(filtered_tg,len)

#using nested function
arrange(filter(ToothGrowth,dose==0.5),len)

#using pipe function

filtered_toothgrowth<- ToothGrowth%>% 
  filter(dose==0.5) %>% 
  arrange(len)
filtered_toothgrowth

#grouping the data

filtered_toothgrowth<- ToothGrowth%>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>%
  summarise(mean_len=mean(len,na.rm=T), .group="drop")
filtered_toothgrowth


