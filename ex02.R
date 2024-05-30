#2024-05-27 R수업 초급 2-1 3차시 조건문, 반복문, 함수(이론-2)
#반복문에 대해서 알아보자
#for문

# for(변수 in 범위)
for(i in 1:5){
  print('*')
}

for(i in 1:10){
  print(i)
}

#구구단 반복문
#cat() 문장을 만들어서 출력하고자 할때 쓰는 함수
# \n 는 줄넘기기 기능
for(i in 1:9){
  cat('2 *', i, '=', 2*i, '\n')
}

c <- 20
cat("c의 값은", c, '\n')

for(i in 1:20){
  # 짝수인지 확인하는 조건
  if((i%%2) == 0){
  cat("1~20까지 중 짝수:", i, "\n ")
  }
}

# 값을 누적하기
sum <- 0  # 누적할 함수 초기화화
for(i in 1:100){
  sum <- sum + i
}
cat("1~100까지 누적값 : ", sum)

head(iris)

num <- nrow(iris)
mylabel <- c()
for(i in 1:num){
  # 꽃잎의 길이에 따라 레이블 결정됨됨
  if(iris$Petal.Length[i] <= 1.6){
    mylabel[i] <- 'L'
  }else if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <- 'H'
  }else{
    mylabel[i] <- 'M'
  }
}
mylabel
# 새로운 데이터프레임을 만들어냄
#기존 iris 꽃잎길이 데이터에 크기별 사이즈를 붙임
df_new_iris <- data.frame(iris$Petal.Length, mylabel)
class(df_new_iris)
df_new_iris

# while문(통상 무한루프를 돌릴때 많이 사용함)
sum <- 0
i <- 1
while (i<=100) {
  sum <- sum + i #값 누적하기
  i <- i+1 # while문은 조건이 없으면 무한반복하므로 주의해야한다.
}
print(sum)

#break문(어떠한 조건을 만족하면 반복문을 빠져나옴)
sum <- 0
for(i in 1:10){
  sum <- sum+i
  if(i>=5)
    break
}
print(sum)

#next문(바로 앞 조건을 만족하면 반복문을 넘어감)
sum <- 0
for(i in 1:10){
  if(i%%2==0){
    next # 위 조건 즉 짝수일때는 sum + i 를 넘어감
  }
  # 홀수만 더하는 형태
  sum <- sum+i
}
print(sum)
