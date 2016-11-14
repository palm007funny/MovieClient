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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <script> 
        $(document).ready(function(){
            $("#que2").click(function(){
                $("#panel1").hide();
                $("#panel1-result").hide();
                $("#panel2").show();
                $("#panel2-result").show();
            });

            $("#que1").click(function(){
                $("#panel2").hide();
                $("#panel2-result").hide();
                $("#panel1").show();
                $("#panel1-result").show();
            });
            $("#idTwo1, #idTwo2").click(function(){
                $("#to").show();
            });
            $("#idOne1, #idOne2").click(function(){
                $("#to").hide();
            });
        });
        </script>
            
    </head>
    <body>
        <div id="header">
            <h1><a>Movie Service<span>By Seriously group3</span></a></h1>
		
            <ul id="navigation">
                <li>
                    <a href="Home.jsp">Home</a>
                </li>
		<li class="current">
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
            <h2>Search Movie</h2>
            <button id="que1" class="button2">Normal Search</button>
            <button id="que2" class="button2">Query Time Search</button>
            <br><br><br>
            <div id="panel1" class="centxt">Seriously Group3
                        <form>
                        <select name="category" class="button1">
                            <option value="title">Title</option>
                            <option value="year">Year</option>
                            <option value="types">Type</option>
                            <option value="director">Director</option>
                        </select>
                            <input type="text" name="search" width="30px">

                        <input class="button1" type="submit" value="Search">
                    </form>
            </div>
            
            <div id="panel2" class="centxt">Seriously Group3
                        <form>
                        <select name="category" class="button2">
                            <option value="time">Running Time</option>
                            <option value="year">Year</option>
                        </select>
                        <select name="condition" class="button2">
                            <option id ="idOne1" value="more">More Than</option>
                            <option id ="idOne2" value="little">Little Than</option>
                            <option id="idTwo1" value="between">Between</option>
                            <option id="idTwo2" value="non-between">Non Between</option>
                        </select>                        
                        <input type="text" name="first" size="4" />
                        <div id="to">
                            To:
                            <input type="text" name="second" size="4" />
                        </div>
                        <input type="hidden" name="send" value="Search">
                        <input class="button2" type="submit" value="Search">
                    </form>
            </div>
            <br><br>
            <h2>Result</h2>
            <!-- Footer fragment -->
            <div id="panel1-result">
                <jsp:include page="/Fragments/normalSearch.jsp"></jsp:include>
            </div>
            <div id="panel2-result">
                <jsp:include page="/Fragments/QuerySearch.jsp"></jsp:include>
            </div>

        </div>
        
    
          
          <!-- Footer fragment -->
        <div class="fregment">
            <jsp:include page="/Fragments/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
