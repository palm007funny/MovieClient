<%-- 
    Document   : Home
    Created on : Oct 30, 2016, 7:29:44 AM
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
			<li class="current">
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
		<div id="tagline">
                    <h1>Movie <br/> Service</h1>
                </div>
            <br/><br/>
            <h1 style="text-align: center;">สมาชิกในกลุ่ม  <br/>Group3 Seriously</h1>
            <br/>
            <table align="center">
                <tr>
                    <td>จิรภาส วิชัยดิษฐ์  </td>
                    <td>5601012620013</td>
                </tr>
                <tr>
                    <td>นพรัตน์ ไพโรจน์พัฒนกุล </td>
                    <td>5601012620072</td>
                </tr>
                <tr>
                    <td>ธนาสันต์ เสพสุข</td>
                    <td>5601012630141</td>
                </tr>
                <tr>
                    <td>ธนวัฒน์ อิ่นแก้ว</td>
                    <td>5601012620153</td>
                </tr>
                <tr>
                    <td>นสิทธิ์ จูรอด </td>
                    <td>5601012630175</td>
                </tr>
                <tr>
                    <td>ศิริลักษณ์  แง่พรม</td>
                    <td>5601012630248</td>
                </tr>
            </table>
		
	</div>      

          <!-- Footer fragment -->
        <div class="fregment">
            <jsp:include page="/Fragments/footer.jsp"></jsp:include>
        </div>
    </body>
</html>