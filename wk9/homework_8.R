# Kayla Bracall
# Homework 8
# I worked through the classwork and then began homework below it


allegheny_county_dog_licenses <- read.csv("allegheny_county_dog_licenses.csv", stringsAsFactors=FALSE)

head(allegheny_county_dog_licenses)

# what is the most common breed of dog?
breeds <- unique(allegheny_county_dog_licenses$Breed)
head(breeds)

breed_counts <- vector()
for (breed in breeds) {
  count <- sum(allegheny_county_dog_licenses$Breed == breed)
  breed_counts <- c(breed_counts, count)
}
# names(breed_counts) <- breeds

# breed_counts <- sort(breed_counts, decreasing=TRUE)
# head(breed_counts)

df <- data.frame("Breeds" = breeds, "Count" = breed_counts)
head(df)

df_brief <- head(df)
df_brief

library(ggplot2)
qplot(x=allegheny_county_dog_licenses$Breed)


#breeds where count > 1

library(stringr)

oodles_tf <- str_detect(allegheny_county_dog_licenses$Breed, "OODLE")
sum(oodles_tf)
oodle_df <- allegheny_county_dog_licenses[oodles_tf, ]
head(oodle_df)
qplot(x=oodle_df$Breed, geom="bar", color=oodle_df$Breed) +  theme(axis.text.x = element_text(angle = 60, hjust = 1))

qplot(x=oodle_df$DogName, geom="bar") +  theme(axis.text.x = element_text(angle = 60, hjust = 1))


dogNames <- unique(oodle_df$DogName)


name_counts <- vector()
for (name in dogNames) {
  count <- sum(oodle_df$DogName == name)
  name_counts <- c(name_counts, count)
}

names(name_counts)<- dogNames

name_counts <- name_counts[name_counts > 20]
qplot(x=names(name_counts), y=name_counts)

zip_tf <- oodle_df$OwnerZip == "15108"
sum(zip_tf)
oodle_zip <- oodle_df[zip_tf, ]
qplot(x=oodle_zip$Breed, geom="bar") +theme(axis.text.x = element_text(angle = 60, hjust = 1))

weilers_tf <- str_detect(allegheny_county_dog_licenses$Breed, "ROTTWEILER")
sum(weilers_tf)
weiler_df <- allegheny_county_dog_licenses[weilers_tf, ]
weilers_in_verona <- sum(weiler_df$OwnerZip == "15147")
weilers_in_verona
remy <- weiler_df$DogName == "REMI" & weiler_df$OwnerZip == "15147"
sum(remy)


### BEGIN HOMEWORK ###

rosie_tf <- str_detect(allegheny_county_dog_licenses$DogName, "ROSIE") #pull out dogs named Rosie
sum(rosie_tf) # there are 121, hooray!
rosie_df <- allegheny_county_dog_licenses[rosie_tf, ] # create df
head(rosie_df)


doodle_rosie_tf <- str_detect(rosie_df$Breed, "GOLDENDOODLE") # pull out goldendoodles named Rosie
sum(doodle_rosie_tf) # there are 8, double hooray! 
doodle_rosie_df <- rosie_df[doodle_rosie_tf, ] # create df 
head(doodle_rosie_df)

# let's plot by color! 
qplot(x=doodle_rosie_df$Color, geom="bar", fill=doodle_rosie_df$Color) +theme(axis.text.x = element_text(angle = 60, hjust = 1))
# brown is the most common color - unusal for "golden"doodles 

rosalie_tf <- str_detect(allegheny_county_dog_licenses$DogName, "ROSALIE") #pull out dogs named Rosalie 
sum(rosalie_tf) # there are none. My Rosalie is truly unique! 

# pull out all the Lhasapoos - Lhasa Apso + Poodle 
lhasapoo_tf <- str_detect(allegheny_county_dog_licenses$Breed, "LHASAPOO") 

sum(lhasapoo_tf) # there are none :(

# Pull out all the Lhasa Apso mixes instead 
lhasa_mix_tf <- str_detect(allegheny_county_dog_licenses$Breed, "LHASA APSO MIX")
sum(lhasa_mix_tf) # there are 21 Lhasa Apso mixes
lhasa_mix_df <- allegheny_county_dog_licenses[lhasa_mix_tf,]


# pull out names of the Lhasa Apso mixes 
lhasas_names <- unique(lhasa_mix_df$DogName)
lhasas_names # there are 21 names in this vector, so each Lhasa Apso mix in AC has a unique name!



### Looking for my friend's greyhound, but he wasn't there, so I commented
#it out. Data may be from before they got him.###

# ollie_tf <- str_detect(allegheny_county_dog_licenses$DogName, "OLLIE") #Pull out all the dogs named Ollie
# sum(ollie_tf)
# ollie_df <- allegheny_county_dog_licenses[ollie_tf, ] # create df
# head(ollie_df)
# 
# ollie_greyhound_tf <- str_detect(ollie_df$Breed, "GREYHOUND") #pull out all the greyhounds named Ollie
# sum(ollie_greyhound_tf) # there aren't any :( 
# dope <- ollie_df[ollie_greyhound_tf,]
# dope
