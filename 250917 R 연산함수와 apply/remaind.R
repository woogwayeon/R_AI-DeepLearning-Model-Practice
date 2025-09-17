setwd('D:\\2025_KoSeoyeon\\2 _Semester\\250917_R')

x = c(2, 4, 6, 8, 10)
length(x)

x[1]
x[1, 2, 3]
x[c(1, 2, 3)]
x[-c(1, 2, 3)] # 제외하고 출력
x[c(1:3)]

# 백터의 연산

x = c(1, 2, 3, 4)
y = c(5, 6, 7, 8)
z = c(3, 4)
w = c(5, 6, 7)

x+2
x+y
x+z
x+w # 정수배 아니면 오류

x = 1:10
all(x>5)
any(x>5)
head(x)
tail(x)
head(x, 3)
tail(x, 3)

x = c(1, 2, 3)
y = c(3, 4, 5)
z = c(3, 1, 2)

union(x, y)     # 합집합
intersect(x, y) # 교집합
setdiff(x, y)   # 차집합
setequal(x, y)  # 동일요소 비교
setequal(x, z)

x = array(1:5, c(2, 4))
x[1, ] # 행 인덱싱 (선택한 행 전부)
x[, 2] # 열 인덱싱 (선택한 열 전부)

x = 1:12
matrix(x, nrow=3)
matrix(x, nrow=3, byrow=T) # 데이터 행 단위로 배치

v1 = c(1, 2, 3, 4)
v2 = c(5, 6, 7, 8)
v3 = c(9, 10, 11, 12)

cbind(v1, v2, v3) # 컬럼 (열방향)
rbind(v1, v3, v3) # 로우 (행방향)

x = array(1:4, dim=c(2, 2))
y = array(5:8, dim=c(2, 2))

x+y
x-y

x*y
x%*%y    # 수학적인 행렬 곱셈
t(x)     # x의 전치 행렬
solve(x) # x의 역행렬
det(x)   # x의 행렬식

x = array(1:12, c(3, 4))

apply(x, 1, mean) # 1 : 행별로
apply(x, 2, mean) # 2 : 열별로

dim(x) # 차원의 수 (배열 크기)

sample(x) # 배열 요소를 임의로 섞어 추출함
sample(x, 10) # 배열 요소중 10개 골라서 꺼냄
sample(x, 10, prob = c(1:12)/24) # 각 요소별 추출 확률 다르게
sample(10)    # 단순히 숫자만 써서 샘플 추출 

name = c("철수", "춘향", "길동")
age = c(22, 20, 25)
gender = factor(c("M", "F", "M"))
blood.type = factor(c("A", "O", "B"))

patients = data.frame(name, age, gender, blood.type)

patients$name
patients[1,  ]
patients[ , 2]
patients[3, 1]
patients[patients$name == "철수"]
patients[patients$name == "철수", c("name", "age")]

patients[patients$gender == "M",]
patients[patients$age <= 20,]

head(cars)
str(cars)
speed

# 속성을 변수로 이용함
attach(cars)
speed

# 속성 변수 사용 해제
detach(cars)
speed

mean(cars$speed)
max(cars$speed)

with(cars, mean(speed)) # 데이터 프레임에 함수 적용
with(cars, max(speed))

subset(cars, speed>20)
subset(cars, speed>20, select = c(dist))
subset(cars, speed>20, select = -c(dist))

head(airquality)
head(na.omit(airquality))

str(airquality)
str(na.omit(airquality))

# merge()
patients1 = data.frame(name, age, gender)
patients2 = data.frame(name, blood.type)

patients= merge(patients1, patients2, by="name")

no.patients = data.frame(day=c(1:6), no=c(50, 60, 55, 52, 65, 58))

# 데이터 단순 추가 (인덱스로)
listPatients = list(patients, no.patients)

# 데이터에 이름을 부여하면서 추가
listPatients = list(patients=patients, no.patients=no.patients)

listPatients$patients
listPatients[[1]]
listPatients[["patients"]]

listPatients$no.patients
listPatients[[2]]
listPatients[["no.patients"]]

# 리스트 요소에 다양한 함수 적용 (lapply, sapply)
lapply(listPatients$no.patients, mean)
lapply(listPatients$patients, mean)

sapply(listPatients$no.patients, mean)
sapply(listPatients$no.patients, mean, simplify = F)


# save, load / .csv 데이터를 .Rdata 데이터로 저장  
# -> 데이터 변수를 R데이터 형태로 저장해서 시간 소모를 획기적으로 줄여줌
students = read.table("D:\\2025_KoSeoyeon\\2 _Semester\\250917_R\\students2.txt", header=T)
str(students)
