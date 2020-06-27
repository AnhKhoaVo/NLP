#Uploading Fake csv and create a column for nature for this df
Fake <- read.csv("Fake.csv")
Fake$nature <- as.factor("Fake")

#Uploading True csv and create a column for nature for this df
True <-read.csv("True.csv")
True$nature <- as.factor("True")

#Merge them together
News <- merge(Fake, True, all=TRUE)

#Shuffle the rows 
News <- News[sample(1:nrow(News)), ]

#Split the data?