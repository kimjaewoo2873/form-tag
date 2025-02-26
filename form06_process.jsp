<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head><title>form processing</title></head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
			
			Enumeration paramNames = request.getParameterNames();
			while(paramNames.hasMoreElements()){
				String name = (String)paramNames.nextElement();
				out.print("<tr><td>" + name + "</td>\n");
				if(name.equals("hobby")){
					String paramValue[]=request.getParameterValues("hobby");
					for(int i=0;i<paramValue.length;i++){
						if(i == 0){
							out.print("<td>" + paramValue[i]);
						}
						else{
							out.print(", " + paramValue[i]);
						}
					}
					 out.print("</td>\n");
				}
				else {
					String paramValue=request.getParameter(name);
					out.println("<td> " + paramValue + "</td></tr>\n");
				}
			}
		%>
	</table>
</body>
</html>