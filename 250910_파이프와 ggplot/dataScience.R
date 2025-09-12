# 벡터 - 순서가 중요함, 방향성

setwd('D:\\2025_KoSeoyeon\\2 _Semester\\250910_R_ggplot')

x=1
y=2

z=x+y

# 대입연산자의 방향성
z <- x+y
x+y -> z


x = 1
y = 2

temp = x
x = y
y = temp


x=5
y=2
x/y

xi = 1+2i
yi = 1-2i
xi+yi

str = "Hello, World!"

blood.type=factor(c('A','B','O','AB'))

T
F

# 무한대 (infinite)
xinf=Inf
yinf=-Inf
xinf/yinf

# DataType 확인 및 변환 함수

x = 5
class(x)
typeof(x)
is.integer(x)
is.numeric(x)
is.complex(x)
is.character(x)
is.na(x)

as.factor(x)
as.integer(x)
as.numeric(x)
as.character(x)
as.matrix(x)
as.array(x)


# vector
1:7
7:1
vector(length = 5)


c(1:5)
c(1, 2, 3, c(4:6))
x = c(1, 2, 3)

y=c(5, 6) # 빈 벡터 만들고
y=c(y, c(1:3)) # 거기에 연결함


seq(from =1 , to=10, by=2)
seq(1, 10, by=2)

seq(0, 1, by=0.1)
seq(0, 1, length.out=11)


rep(c(1:3), times=2) # vector의 반복 횟수
rep(c(1:3), each=2)  # 요소의 반복 횟수

x = c(2, 4, 6, 8, 10)
length(x)
x[1]
x[1, 2, 3]
x[c(1,2,3)]
x[-c(1,2,3)]
x[c(1:3)]


x = c(1, 2, 3, 4)
y = c(5, 6, 7, 8)
z = c(3, 4)
w = c(5, 6, 7)

x+2
x+y
x+z # 배수관계로 늘려서 계산되면 3, 4 다시 배치해서 더함
x+w # length가 각각 2와 3으로 안됨
