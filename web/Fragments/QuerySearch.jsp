<%-- 
    Document   : QuerySearch
    Created on : Nov 5, 2016, 6:13:50 PM
    Author     : nuyuyii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Page Search</title>
    </head>
    <body>
        <%-- start web service invocation --%>
        <div class="page1-box1 centxt">
        <%
        try {
            String category_name = request.getParameter("category");
            String condition_ = request.getParameter("condition");
            int firstInt = 0;      
            int secondInt = 0;
            if(request.getParameter("first")!=null){
                if(request.getParameter("first")!=""){
                    firstInt = Integer.parseInt(request.getParameter("first"));                
                }
                if(request.getParameter("second")!=""){
                    secondInt = Integer.parseInt(request.getParameter("second"));
                }                
            }           
            serverpack.MvWebService_Service service = new serverpack.MvWebService_Service();
            serverpack.MvWebService port = service.getMvWebServicePort();
             // TODO initialize WS operation arguments here
            java.lang.String category = category_name;
            java.lang.String conditon = condition_ ;
            int firstNum = firstInt;
            int secondNum = secondInt;
            // TODO process result here
            java.lang.String result = port.searchQue2(category, conditon, firstNum, secondNum);
            out.println("<h3>Category: " + category_name+" && Conditon: " + condition_);
            out.println("</h3><h3>FirstNumber: "+firstInt+" && SecodeNumber: "+secondInt+"</h3>");        

            %>
                
        </div>
        <%
            String show = result;
            
            for (String s: show.split("---")){                
                
                String[] NodeID = s.split("::",3);
         %>
    
           <div class="page1-box1">
               <%if (NodeID[0].equals("Error Search Condition")){
                      out.println(s);
                  }else{
               
               %>
               <table width="100%" ><tr><td width="60%">
               <%=s%>
                       </td><td align="right">
               <form action="Delete.jsp" method="POST">
               <input type="hidden" name="number" value="<%=NodeID[1]%>" />
               <input class="button2" name="act" type="submit" value="Delete" />
               </form>
               <form action="Edit.jsp" method="POST">
               <input type="hidden" name="number" value="<%=NodeID[1]%>" />
               <input class="button2" name="act" type="submit" value="Edit" />
               </form>
                       </td></tr>
               </table>
               <% } %>
               
           </div>
        <%  
        }
        //out.println(show);
        } catch (Exception ex) {
              // TODO handle custom exceptions here
        }
        %>

        <%-- end web service invocation --%>
    </body>
</html>