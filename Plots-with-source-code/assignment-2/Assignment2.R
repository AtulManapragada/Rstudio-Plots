library(readr)
library(ggplot2)
diabetic_data <- read_csv("/Users/atulmanapragada/Downloads/dataset_diabetes/diabetic_data.csv")
View(diabetic_data)
question_c <- group_by(diabetic_data,race,gender)
summarise(question_c, medical_sp = mean(medical_specialty, na.rm = TRUE))

question_c <- group_by(diabetic_data,race,gender)
summarise(question_c, payer_code = mean(payer_code, na.rm = TRUE))

question_c <- group_by(diabetic_data,race,gender)
summarise(question_c, weight = mean(weight, na.rm = TRUE))

question_c <- group_by(diabetic_data,race,gender)
select(question_c, medical_specialty = mean(medical_specialty, na.rm = TRUE))

question_E<- data = diabetic_data+
group_by(diabetic_data,race = 'AfricanAmerican', age == '[10,20)')+
select(diabetic_data, num_medications, number_diagnoses)
ggplot(question_E, mapping =  aes(x = num_medications, y = number_diagnoses, colour = gender ))+
  geom_point()

question_f<-ggplot(data = diabetic_data)+
  + geom_histogram(mapping = aes(x = number_outpatient, fill = "red", alpha = gender))%/%
 geom_histogram(mapping = aes(x = number_inpatient, fill = "blue", alpha = gender))
print(question_f + ggtitle("Histogram of number_outpatient and number_inpatient"))

question_g<-diabetic_data %>%
  mutate(race=as.character(race),
char_column=sample(letters[1:2], nrow(diabetic_data), replace=TRUE))
sum(sapply( is.character))
answer_G<- question_g %>%
  mutate_if(sapply(question_g, is.character), as.factor)
sapply(answer_G, class)
  
question_h<-diabetic_data %>%
  mutate(max_glu_serum=as.character(max_glu_serum),
         char_column=sample(letters[1:2], nrow(diabetic_data), replace=TRUE))
sum(sapply( is.character))
answer_h<- question_g %>%
  mutate_if(sapply(question_h, is.character), as.factor)
sapply(answer_h, class)
  
  
question_i<-data = diabetic_data%>%
  group_by(race,gender,age)%>%
  summarise(avg_medication = mean(num_medications))
print(question_i)

question_j<- (data = diabetic_data)%>%
group_by(diabetic_data, age == '[10,20)')%>%
  summarise(avg_medication = mean(num_medications))
  

  
  




