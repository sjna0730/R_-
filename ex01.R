#조건문에 대해 알아보기

jobtype <- 'A'

# if문은 () 값이 참일떄 블럭 실행함
if(jobtype == 'B'){
  bonus <- 200
} else{   # else, else if 문은 반드시 if 구문의 } 옆에 써야함함
  bonus <- 100
}
print(bonus)

# 점수를 가지고 학점 주기
score <- 85

if( score>90 ) {
  Grade <- 'A'
} else if( score > 80) {
  Grade <- 'B'
} else if( score > 70) {
  Grade <- 'C'
} else if( score > 60) {
  Grade <- 'D'
} else {     # else 구문 옆에는 조건식이 오면 안됨
  Grade <- 'F'
}
print(Grade)


# 조건문 안에 논리연산자( &, | ) 사용해보기
a <- 10
b <- 20
if( a>5 & b>5) {   # and 사용 ( 조건이 둘다 충족해야 아래 명령문이 실행됨)
  print(a+b)
}
if( a>5 | b>30) {    # or 사용 ( 조건이 하나만 충족해도 아래 명령문이 실행됨)
  print(a*b)
}

a <- 10
b <- 20
# ifelse( 조건 , 참, 거짓) 조건이 참이면 a를 
#거짓이면 b를 적용함
c <- ifelse(a>b, a, b)
print(c)
# 결과는 동일하게 20. 위와 동일한 효과를 내지만 
#코드가 엄청 짧아졌다.


