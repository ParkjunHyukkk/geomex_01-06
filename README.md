# geomex_01-06
<p>PostgreSQL=사내에서 사용하는 DB를 이용해서 이클립스에 JDBC를 설치 후 연결한 후 성공 여부를 확인 
및 사전에 만들어놓았던 테이블를 SELECT*FROM 테이블명을 통해 쿼리를 불러와 확인하였다.<p>
<p>이때, 새로 알게 된 사실들은 예외처리 구분은 객체의 개념이 들어가 있어
e.printStackTrace();을 통해 상세한 에러 코드를 확인해볼 수 있다. 
또한 CRTL+M을 통해 확대기능을 사용할 수 있다.</p>
<p>오늘 에러가 핵심이었던 것은 lib에 PostgreSQL이 제대로 설치되지 않으면
에러가 발생할 확률이 높다는 것을 알 수 있었다.</p>


<h2>업무내용</>
<p>
  1. PGSQL 설치
2. 개인 로컬 DB에 DB 생성 및 사용자 테이블 생성
> 사용자 테이블의 필드는 자유롭게 생성
3. JDBC Driver 연결 (인터넷 활용 가능)

1. PGSQL이 어떻게 생겨먹은 놈인지.
2. PgAdmin 툴을 이용해서 어떻게 테이블을 생성하는지. (DDL 직접 날려도 되구요.)
3. DBMS를 어떻게 자바에서 연결하는지

세가지가 키포인트 구요.

3번의 경우 자바 클래스에서 직접 작성하셔도 되고,
JSP 페이지 내에서 자바 코드를 직접 구현하셔도 됩니다.
</p> 
