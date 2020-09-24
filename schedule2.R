keeling_Data <- read.csv(file = 'co2_mm_mlo.csv',header = T)
colnames(keeling_Data)
head(keeling_Data)
tail(keeling_Data)
head(keeling_Data,3)
tail(keeling_Data,4)
keeling_Data$co2
min(keeling_Data$co2)
max(keeling_Data$co2)
range(keeling_Data$co2)
mean(keeling_Data$co2)
median(keeling_Data$co2)
hist(keeling_Data$co2)
summary(keeling_Data$co2)
keeling_Data$co2[1:10]
keeling_Data$year[200:210]
keeling_Data$co2[0]
plot(keeling_Data$decimal_date,keeling_Data$co2)
plot(keeling_Data$decimal_date,keeling_Data$co2, ylim=c(300,420),type='l')
Year <- keeling_Data$decimal_date
co2_ppm <- keeling_Data$co2
co2_ppm[which(co2_ppm == -99.99)] <- NA
plot(Year,co2_ppm,type='l')
mean(co2_ppm)
mean(co2_ppm, na.rm = T)

#Data Type
keeling_Data$co2[1:10]*1e3
keeling_Data$month[1:10] + keeling_Data$co2[1:10]
typeof(keeling_Data$co2)
typeof(keeling_Data$month)
typeof(keeling_Data$quality)
x <- 1<=2
typeof(x)
typeof(1)
typeof(1L)
typeof(1+1i)

#Data Structure
class(keeling_Data)
vectore_1 <- vector(length=3)
vectore_1
vectore_2 <- vector(mode='character',length=3)
vectore_2
str(vectore_2)
vector_3 <- c(1,2,3)
vector_3
vector_4 <- c(1,2,3,'4')
vector_4
vector_5 <- c('a',TRUE)
vector_5
vector_6 <- c(0,TRUE)
vector_6
vector_7 <- c('0','2','4')
vector_7
str(vector_7)
vector_8 <- as.numeric(vector_7)
vector_8
vector_9 <- as.logical(vector_8)
vector_9

keeling_Data$quality[1:10]
keeling_Data$quality <- as.logical(keeling_Data$quality)
# NEW Data
keeling_Data$quality[1:10]
length(keeling_Data$quality)                     
x <- 1:26
x <- x*2
names(x) <- LETTERS
x
str(keeling_Data$month)
keeling_Data$month <- factor(keeling_Data$month)
class(keeling_Data$month)
str(keeling_Data$month)
typeof(keeling_Data$month)

#List
list_1 <- list(1,'a',TRUE,1+4i)
list_1
list_2 <- list(title = 'Number',number = 1:10,data = TRUE)
list_2
typeof(keeling_Data)
keeling_Data[,1]
keeling_Data[,2]
typeof(keeling_Data[,1])
str(keeling_Data[1,])
matrix_1 <- matrix(0, ncol=6, nrow=3)

matrix_1




#Exercise1
keeling_Data[2]
keeling_Data[[2]]
keeling_Data$month
keeling_Data['month']
keeling_Data[2,2]
keeling_Data[,2]
keeling_Data[2,]

#Exercise2
matrix_ex2 <- matrix(1:50,ncol=5,nrow=10)
matrix_ex2
?matrix
matrix_ex3 <- matrix(1:50,10,5,TRUE)
matrix_ex3


#Exercise3
data_228 <- read.csv('2281305.csv')
names(data_228)
BaoAn_T=data_228['TMP']
head(BaoAn_T)
tail(BaoAn_T)
typeof(BaoAn_T)
Obs_Time = data_228$DATE
head(BaoAn_T)
tail(BaoAn_T)
head(Obs_Time)
tail(Obs_Time)

typeof(BaoAn_T)
BaoAn_T[,1]
BaoAn_T_value=substr(BaoAn_T[,1],1,5)
BaoAn_T_flag = substr(BaoAn_T[,1],7,7)
print(BaoAn_T_flag)
print(BaoAn_T_value)

BaoAn_T_value2=as.numeric(BaoAn_T_value)
BaoAn_T_value2
BaoAn_T_flag2=as.logical(as.numeric(BaoAn_T_flag))
BaoAn_T_flag2

BaoAn_T_value2[which(BaoAn_T_value2==9999)] <-NA
BaoAn_T_value2
BaoAn_T_value3=BaoAn_T_value2*0.1
BaoAn_T_value3

Obs_Time2=as.Date(Obs_Time)


plot(Obs_Time2,BaoAn_T_value3,lwd=0.5,type='l',col='blue')

tem_min=min(BaoAn_T_value)
tem_min
tem_max=max(BaoAn_T_value)
tem_max
temp_min=which.min(BaoAn_T_value)
temp_min
temp_max=which.max(BaoAn_T_value)
temp_max
xxx=3
yyy=4

