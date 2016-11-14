<%-- 
    Document   : Delete
    Created on : Oct 30, 2016, 9:05:38 AM
    Author     : nuyuyii
--%>

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
		<li class="current">
                    <a href="Delete.jsp">Delete</a>
		</li>
		<li>
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
            <h2>Delete Movie</h2>
            <div class="page1-box2 centxt">  
            <form>
                <h3>Enter NodeID
                <input type="text" name="number"/> 
                <input class="button2" type="submit" value="Delete"/>
                </h3>
            </form>
            <br><br>
            </div>


            <%-- start web service invocation --%>    
            <br />
            <br />
            <%
            try {
                serverpack.MvWebService_Service service = new serverpack.MvWebService_Service();
                serverpack.MvWebService port = service.getMvWebServicePort();
                 // TODO initialize WS operation arguments here
                int nodeID = Integer.parseInt(request.getParameter("number"));
                // TODO process result here
                java.lang.String result = port.deleteMovie(nodeID);%>
            <h2>Result</h2>
            <div class="page1-box1">
            <%
                out.println("<p>"+result+"</p>");
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
            %>
            </div>
            <%-- end web service invocation --%>
            
        </div>

        <!-- Footer fragment -->
        <div class="fregment">
            <jsp:include page="/Fragments/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
