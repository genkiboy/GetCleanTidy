library(dplyr)
library(tidyr)
library(reshape2)

## read in all Test data files and rename columns for activity # and subject #
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt") %>%
        rename("actNo"=V1)
subTest <- read.table("./UCI HAR Dataset/test/subject_test.txt") %>%
        rename("subNo"=V1)

# combine data, actNo, and subNo for _test_
test <- bind_cols(subTest, yTest, xTest) %>%
        mutate("subgroup"="Test")

## read in all Train data files and rename columns for activity # and subject #
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt") %>%
        rename("actNo"=V1)
subTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt") %>%
        rename("subNo"=V1)

# combine data, actNo, and subNo for _train_
train <- bind_cols(subTrain, yTrain, xTrain) %>%
        mutate("subgroup"="Train")

# read in activity labels file
actLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# give descriptive names to variables in activity labels file
names(actLabels) <- c("actNo", "Activity")

# combine _test_ and _train_ into _full_
full <- bind_rows(test,train) %>%
#       and merge in the activity labels
        merge(actLabels)


## get measure ("feature"?) names from _features_
features <- read.table("./UCI HAR Dataset/features.txt") %>%
        rename("varNo"=V1,"varName"=V2) %>%
        mutate("varNew"=paste("V",varNo,sep="")
                ,"variable"=as.factor(varNew))

# melt _full_ into long, narrow database
fullMelt <- melt(full,id=c("subNo","actNo","Activity","subgroup")) %>%
#       merge in measure names from _features_
        merge(features) %>%
#       filter out every measure not containing "-mean()" or "-std()"
        filter(grepl("-mean()",varName, fixed=TRUE)>0
               | grepl("-std()",varName, fixed=TRUE)>0) %>%
#       and keep only the columns of interest
        select(subNo,Activity,subgroup,value,varName) 


finalData <- group_by(fullMelt,subNo,Activity,"Measure"=varName) %>%
        summarize(meanValue=mean(value, na.rm = TRUE))

write.table(finalData
            , file = "KES_GetClean_Step5_Tidy.txt"
            , row.names = FALSE
            , sep = "\t")
