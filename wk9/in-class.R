allegheny_county_dog_licenses <- read.csv("~/DAT-204/allegheny_county_dog_licenses.csv", stringsAsFactors=FALSE)

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
qplot(x=allegheny_county_dog_licenses$Breed, )


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
