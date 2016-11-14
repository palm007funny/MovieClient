<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="user-scalable=0, width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Seriously G3</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<script type='text/javascript' src='js/mobile.js'></script>
    </head>
    <body>
        <div id="header">
            <h1><a>Movie Service<span>By Seriously group3</span></a></h1>
		
            <ul id="navigation">
                <li>
                    <a href="Home.jsp">Home</a>
                </li>
		<li>
                    <a href="Search.jsp">Search</a>
                    <ul>
                        <li><a href="Search.jsp">Category</a></li>
                        <li><a href="SearchQ.jsp">Query</a></li>
                    </ul>
                </li>
		<li>
                    <a href="Add.jsp">Add Movie</a>
		</li>
		<li>
                    <a href="Delete.jsp">Delete</a>
		</li>
		<li class="current">
                    <a href="Edit.jsp">Edit</a>
		</li>
                <li>
                    <a href="Blog.jsp">Blog</a>
                    <ul>
                        <li><a href="../MovieWebService/movies.xml">XML File</a></li>
                        <li><a href="../MovieWebService/mvWebService?WSDL">WSDL File</a></li>
                        <li><a href="../MovieWebService/mvWebService?Tester">Test Soap</a></li>
                    </ul>
                </li>
            </ul>
	</div>
        <div id="body">
            <h2>Edit Complete</h2>
                    <div class="page1-box2">           

    <%-- start web service invocation --%>
    <%
    try {
        
	serverpack.MvWebService_Service service = new serverpack.MvWebService_Service();
	serverpack.MvWebService port = service.getMvWebServicePort();
	 // TODO initialize WS operation arguments here
        int nodeID = Integer.parseInt(request.getParameter("number"));
	java.lang.String title = request.getParameter("editTitle");
        java.lang.String year = request.getParameter("editYear");
        java.lang.String types = request.getParameter("editTypes");
        java.lang.String time = request.getParameter("editTime");
        java.lang.String director = request.getParameter("editDir");
        // TODO process result here
        //out.println("Result::"+title+"<br>"+year+"<br>"+types+"<br>"+time+"<br>"+director);
        java.lang.String result = port.save(nodeID, title, year, types, time, director);
        String[] show = result.split("--",6);
    
    %>
            <table width="428">
                <tr>
                    <th width="181"><div align="left">NodeID: </div><br/></th>
                    <td width="231"><input type="hidden" name="number" value="<%=request.getParameter("number")%>" />
                        <%=request.getParameter("number")%></td>
                </tr><br/>
                <tr>
                    <th width="181"><div align="left">Title: </div><br/></th>
                    <td ><%=show[1]%></td>
                </tr>
                <tr>
                    <th width="181"><div align="left">Year: </div><br/></th>
                    <td ><%=show[2]%></td>
                </tr>
                <tr>
                    <th width="181"><div align="left">Types: </div><br/></th>
                    <td ><%=show[3]%></td>
                </tr>
                <tr>
                    <th width="181"><div align="left">Time: </div><br/></th>
                    <td ><%=show[4]%></td>
                </tr>
                <tr>
                    <th width="181"><div align="left">Director: </div><br/></th>
                    <td ><%=show[5]%></td>
                </tr>
            </table>
                <form action="Edit.jsp" method="POST">
                    <input type="hidden" name="number" value="<%=request.getParameter("number")%>" />
                    <input class="button2 fright" name="act" type="submit" value="Edit Again" />
                </form>
                
    
    <%
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>
            </div>
        </div>

          <!-- Footer fragment -->
        <div class="fregment">
            <jsp:include page="/Fragments/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
