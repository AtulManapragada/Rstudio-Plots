#Initialising the data-set
library(mlbench)
data(PimaIndiansDiabetes)
#question b:scatterplot between insulin vs glucose
questionb<-ggplot(data = PimaIndiansDiabetes)+
  geom_point(mapping = aes(x = insulin, y = glucose))+
  print(questionb + ggtitle("Relation between Insulin VS Glucose"))

#question d: Scatter plot with color aesthetic
questiond<-ggplot(data = PimaIndiansDiabetes)+
  geom_point(mapping = aes(x = insulin, y = glucose, color = diabetes))+
  print(questiond + ggtitle("Insulin VS Glucose with Diabetes as Color Variable"))

#question e:Relation between Pressure and Age
questione<-ggplot(data = PimaIndiansDiabetes)+
  geom_point(mapping = aes(x = pressure, y = age))+
  print(questione + ggtitle("Pressure VS Age"))

#question F: facet with two subplots between insulin and glucose with age as a color variant
questionf<-ggplot(data = PimaIndiansDiabetes)+
  geom_point(mapping = aes(x = insulin, y = glucose, color = age))+
  facet_wrap(~diabetes)
  print(questionf + ggtitle("Scatterplots between Insulin and Glucose using Facet"))
  
#question g: Smooth curve plot between insulin and glucose
  questiong<-ggplot(data = PimaIndiansDiabetes)+
    geom_smooth(mapping = aes(x = insulin, y = glucose, color = age))+
    facet_wrap(~diabetes)
  print(questiong + ggtitle("Smoothcurve plot between Insulin and Glucose using Facet"))
  
  
 #question h: Smooth curve and scatterplot for insulin VS Glucose 
questionh<-ggplot(data = PimaIndiansDiabetes, mapping = aes(x = insulin, y = glucose, colour = age))+
  geom_point()+
  geom_smooth(se = TRUE)
print(questionh + ggtitle("Smooth and Scatterplots for Insulin Vs Glucose"))

#question i: Using ggplot2 color scheme options
questioni <-ggplot(data = PimaIndiansDiabetes, mapping = aes(x = insulin, y = glucose, colour = "red"))+
  geom_point()+
  geom_smooth(se = TRUE)
print(questioni + ggtitle("Changing of color scheme to red"))

#question j: Using title and labels 
questione<-ggplot(data = PimaIndiansDiabetes)+
  geom_point(mapping = aes(x = pressure, y = age))+
  print(questione+ ggtitle("Blood pressure variance from ages 0 to 80") + xlab("blood pressure (mm HG)") + ylab("age of the individual(yrs)"))

#question k:Using stat_summary
questionk <-ggplot(data = PimaIndiansDiabetes)+
  stat_summary(mapping = aes(x = insulin, y = glucose, color = age))+
  print(questionk + ggtitle("Stat Summary of insulin and glucose levels"))

#question l : Bar chart with no of samples to the age 
questionl <-ggplot(data = PimaIndiansDiabetes)+
  geom_bar(mapping = aes(x = age, color = diabetes))
print(questionl + ggtitle("Relation between Samples and their age with diabetes Status"))

 #bonus question
questionbonus<- ggplot(data = PimaIndiansDiabetes, mapping = aes(x = insulin, y = glucose))+
  geom_boxplot()
print(questionbonus + ggtitle("Boxplot of insulin vs glucose"))


