<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.ResultSet"%><!-- ����ϱ����� ����Ʈ. -->
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.Connection"%><!-- ����ϱ����� ����Ʈ. -->
<%@page import="java.sql.Statement"%>
<%@page import="webTest2.JDBCTEST"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con = null;

	Statement stmt = null;

	ResultSet rs = null;

	String driver = "org.postgresql.Driver";

	String url = "jdbc:postgresql://localhost/realtest";

	String user = "postgres";

	String upw = "1234";

	String sql = "SELECT * FROM board";

	try {

		Class.forName(driver);

		con = DriverManager.getConnection(url, user, upw);

		stmt = con.createStatement();

		rs = stmt.executeQuery(sql);

		while (rs.next()) {
			int board_no=rs.getInt(1);
        	String board_title=rs.getString(2);
        	out.println(board_no +board_title);
        	

		}

	}

	catch (Exception e) {
        e.printStackTrace();
		System.out.println("ERROR: " + e.getMessage());

	}
	%>
</body>
</html>