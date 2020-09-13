/*
1. 관계 데이터 모델의 릴레이션에 대한 설명 중 옳지 않은 것은?
1) 릴레이션은 릴레이션 스키마와 릴레이션 인스턴스로 구성된다. - 맞음
2) 릴레이션 스키마를 외연(extension)이라고 한다. - 틀림, 내포(intension)임
3) 릴레이션 스키마는 정적인 성질을 가진다. - 맞음
4) 릴레이션 인스턴스는 동적인 성질을 가진다. - 맞음

2. 릴레이션의 특징으로 알맞은 것은?
1) 중복된 투플이 존재한다. - 아님.
2) 투플 간의 순서가 정의된다. - 아님. 순서 없음.
3) 속성 간의 순서가 정의된다. - 아님. 상관 없음.
4) 모든 속성 값은 원자값이다. - 맞음.

3. 하나의 속성이 가질 수 있는 값을 총칭하여 무엇이라고 하는가?
도메인

4. 외래키(Foreign Key)에 대한 설명으로 옳은 것은?
1) 릴레이션 R1에 속한 속성 집합 FK가 다른 릴레이션 R2의 기본키인 것을 말한다. - 맞음
2) 외래키와 기본키가 정의된 도메인은 다를 수도 있음. - 틀림. 다르면 안 됨. 참조 무결성 제약조건
3) 외래키는 NULL 값을 가질 수 없다. - 가질 수 있음.
4) 둘 이상의 후보키 중에서 하나를 선정하여 대표로 삼은 키를 말한다. - 기본키(Primary Key)에 대한 설명.

5. 한 릴레이션의 기본키를 구성하는 어떠한 속성 값도 NULL 값이나 중복값을 가질 수 없다는 것을 의미하는 제약조건은?
개체 무결성 제약조건(Entity Integrtiy Constraint)

6. 릴레이션에서 특정 속성에 해당하는 열을 선택하는 데 사용하며, 릴레이션의 수직적 부분 집합을 반환하는 관계대수 연산자는?
projection

7. 릴레이션 C가 릴레이션 A(X,Y)와 B(Y,Z)를 natural join한 결과일 때 다음 중 맞는 설명을 모두 고르시오.
1) C의 카디날리티는 A의 카디날리티보다 많다. - 아님. 작거나 같음.
2) C의 카디날리티는 A의 카디날리티보다 적다. - 아님. 작거나 같음.
3) C의 차수는 A의 차수보다 많다. - 맞음. X,Y,Z
4) C의 차수는 A의 차수보다 적다. - 아님.
5) 모두 틀리다. - 아님.

8. 다음 용어를 설명하시오.
1) 릴레이션 - 행과 열로 구성된 테이블
2) 스키마 - 관계 데이터베이스에서 릴레이션이 어떻게 구성되는지 어떤 정보를 담고 있는지에 대한 기본적인 구조
3) 릴레이션 인스턴스 - 정의된 스키마에 따라 테이블에 실제로 저장되는 데이터의 집합
4) 릴레이션 차수와 카디날리티 - 차수는 속성의 개수, 카디날리티는 튜플의 개수
5) 도메인 - 어떤 속성이 가질 수 있는 모든 값의 집합
6) 투플 - 릴레이션의 행

9. 릴레이션에 대한 다음 물음에 답하시오.
1) 릴레이션 스키마와 릴레이션 인스턴스의 차이점을 설명하시오.
스키마는 구조 그 자체라서 값이 없고 속성만 있음. 인스턴스는 스키마 내 속성에 실제 값이 채워진 데이터의 집합.
2) 도메인 제약조건을 설명하시오.
한 속성에 들어갈 수 있는 값은 도메인 내에 반드시 있어야 되는 제약.
3) 기본키 제약조건과 외래키 제약조건을 설명하시오.
기본키 제약조건은 어떤 튜플의 기본키가 반드시 유일하고 NULL이 아니어야 한다는 조건.
외래키 제약조건은 자식 릴레이션의 외래키는 부모 릴레이션의 기본키와 도메인이 동일해야 하며, 자식 릴레이션 값이 변경될 때 부모 릴레이션의 제약을 받는다는 것.
4) 참조 무결성 제약조건의 옵션 네 가지를 설명하시오.
Restricted : 자식 릴레이션에서 참조하고 있는 경우 부모 릴레이션의 삭제 작업 거부
Cascade : 자식 릴레이션의 관련 투플 다 같이 삭제
Default : 자식 릴레이션의 관련 투플을 미리 지정해둔 값으로 변경
NULL : 관련 투플을 NULL 값으로 설정

10. 사원(주민등록번호, 사원번호, 사원이름, 주소, 생년월일) 릴레이션이 있다. 기본키는 (사원이름, 생년월일)이고, 그 밖의 대체키 1은 주민등록번호, 대체키 2는 사원번호이다. 다음 물음에 답하시오.
1) (주민등록번호, 주소)는 후보키인가? 그 이유는 무엇인가?
후보키 아님. (주민등록번호, 주소)는 최소조건을 만족 못 하기 때문. 그냥 슈퍼키임.
2) 사원번호는 수퍼키인가? 그 이유는 무엇인가?
수퍼키 맞음. 후보키이기 때문.
3) 생년월일은 NULL값을 가질 수 있는가?
못 가짐. 기본키는 NULL 안 됨.
4) 주소는 NULL 값 가질 수 있는가?
가질 수 있음.









*/