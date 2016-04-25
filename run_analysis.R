## step 1
# read data
testlabels <- read.table("test/y_test.txt", col.names="label")
testsubjects <- read.table("test/subject_test.txt", col.names="subject")
testdata <- read.table("test/X_test.txt")
trainlabels <- read.table("train/y_train.txt", col.names="label")
trainsubjects <- read.table("train/subject_train.txt", col.names="subject")
traindata <- read.table("train/X_train.txt")

# formating: subjects, labels, everythingelse
data <- rbind(cbind(testsubjects, testlabels, testdata),
              cbind(trainsubjects, trainlabels, traindata))

## step 2
# read features
features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
# keep mean and standard deviation
features.mean.std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# select means and standard deviations
data.mean.std <- data[, c(1, 2, features.mean.std$V1+2)]

## step 3
# read labels
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
# replace labels in data with label names
data.mean.std$label <- labels[data.mean.std$label, 2]

## step 4
# column names and feature names
goodcolnames <- c("subject", "label", features.mean.std$V2)
# tidy list
# keep alphabetic character and convert to lowercase
goodcolnames <- tolower(gsub("[^[:alpha:]]", "", goodcolnames))
# use list as column names for data
colnames(data.mean.std) <- goodcolnames

## step 5
# calculate mean of each combination of subject and label
aggrdata <- aggregate(data.mean.std[, 3:ncol(data.mean.std)],
                       by=list(subject = data.mean.std$subject, 
                               label = data.mean.std$label),
                       mean)

## step nothing
# write the data for course upload
write.table(format(aggrdata, scientific=T), "tidyFinal.txt",
            row.names=F, col.names=F, quote=2)

