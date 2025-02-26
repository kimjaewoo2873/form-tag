<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Result form</title></head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String p1 = request.getParameter("phone1");
		String p2 = request.getParameter("phone2");
		String p3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String hobby[] = request.getParameterValues("hobby");
	%>
	<p>아이디 : <%= userid %>
	<p>비밀번호 : <%= passwd %>
	<p>이름 : <%= name %>
	<p>연락처 : <%= p1 %>-<%= p2 %>-<%=p3 %>
	<p>성별 : <%= sex %>
	<p>취미 : <%
		for(int i=0;i<hobby.length;i++){
			if(hobby[i] != null){
				out.print(hobby[i] + " ");
			}
		}
	%>
</body>
</html>