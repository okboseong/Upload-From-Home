#?,help 기능
?sum 
#하면 특정 함수에 대한 도움말을 얻을 수 있다. 

#str()기능
l<-c(1:10)
str(l)
#l 벡터 안에 1부터 10까지의 숫자를 넣고 str(l)하면 어떤 형인지, l 이란 변수 안 숫자가 몇부터 몇까지인지, 원소는 무엇인지 보여준다.

#class()기능
class(l)
#방금 만든 l이란 변수의 클래스가 무엇인지 출력해준다. 1부터 10까지의 숫자만 넣었으므로 "integer"형이 출력되겠다.

#getwd()기능
getwd()
#자신의 현재 working directory를 보여준다. 현재 이 파일 소스들을 저장하고 있는 저장소 위치를 알려준다. 

#setwd()기능
setwd("원하는 디렉토리 지정")
#현재 디렉토리에서 원하는 디렉토리로 변경해준다. 

#c()기능
l <- 10
#숫자 데이터 10을 x 변수에 할당 
#c()함수 : c는 combine(합치다)의 약어 , 데이터 값 여러 개를 변수로 구성할 때 사용한다. 반드시 소문자여야함 

#rep()기능 rep는 repeat의 약어
l<-rep(1:5,time=3)
l<-rep(1:5,each=3)
#time=3은 1~5까지 만든 l 이란 변수를 총 3번 출력해줘, 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 이런식으로 출력해준다. 
#each=3은 말그대로 각각 3번씩 출력해준다. 1 1 1 2 2 2 3 3 3 이런식

########### sort, rev, table, unique는 함수다.
#sort()기능
l<-c(2,43,7,1,4)
sort(l)
sort(l,decreasing=T)
#sort를 사용한다면 위에 만든 숫자 위치와 별개로 1 2 4 7 43 으로 정렬되어 출력된다.(오름차순)
#뒤에 decreasing = T 혹은 TRUE(반드시 대문자)를 사용하면 반대로 내림차순으로 정렬된다. 

#rev()기능 reverse
rev(l)
#l<-c(2,43,7,1,4) 위에서 이렇게 만든 순서를 반대로 출력해준다. 4 1 7 43 2 

#table기능
table(l)
#value를 세어준다.
#l
#1  2  4  7 43 
#1  1  1  1  1  이런식으로 결과가 나온다. 

#unique()기능
unique(l)
#l변수안 중복되어 있는 원소들을 제외하고 unique한, 즉 중복되지 않은 원소만 출력해준다. l 변수안에 중복값을 
#넣고 실험해보았다. 

###############여기까지 함수

l[4]
#l데이터 안 4번째 인덱스의 원소값을 출력
#JAVA와 다른점은 R의 인덱스는 1부터 시작이다 
#l<-c(2,43,7,1,4) l[4] 의 결과는 1이 되겠다. 

l[-4]
#4번째 인덱스 위치의 원소만 빼고 출력해준다.
#위에서 l[4]가 1이였으니 1이 빠져 결과는 2 43 7 4 가 된다.

l[2:4]
#2에서 4번째 인덱스의 원소만 뽑는다. 2 3 4 번째에 위치한 원소들만
#결과는 43 7 1 이 되겠다.

l[-(2:4)]
#위 결과와 반대로 2~4번째 원소들만 제외하고 출력해준다.
#결과는 2 4 가 되겠다. 

l[c(1,3)]
#1, 3번째에 위치한 원소들을 출력한다.
#결과는 2와 7이 되겠다. 

# 168쪽
#데이터 세트 구조 파악하기 
head(airquality)

#tolower() 함수로 변수명을 모두 소문자로 변경
names(airquality) <- tolower(names(airquality))
head(airquality)

#melt() 함수
install.packages("reshape2")
library(reshape2)
melt_test <- melt(airquality)
head(melt_test)
tail(melt_test)

melt_test2 <- melt(airquality, id.vars = c("month","wind"), measure.vars = "ozone")
head(melt_test2) 

#melt 함수 기본 식
# melt(데이터 세트, id.vars = "기준 열",measurs.vars = "변환 열")
# 예시로 id.vars ="이름", measure.vars=c("국어","컴퓨터) 이렇게 하면 이름을 기준으로 국어와 컴퓨터 점수가 세로로 배치 


