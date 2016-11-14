<%-- 
    Document   : normalSearch
    Created on : Nov 5, 2016, 6:14:18 PM
    Author     : nuyuyii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Search Page</title>       

    </head>
    <body>
        
        <%-- start web service invocation --%>    
        <div class="page1-box2 centxt">
            <%
            try {
                String category_name = request.getParameter("category");
                String search_name = "all";
                //select all 
                if(request.getParameter("search")!=""){
                   search_name = request.getParameter("search");                
                }
                serverpack.MvWebService_Service service = new serverpack.MvWebService_Service();
                serverpack.MvWebService port = service.getMvWebServicePort();
                // TODO initialize WS operation arguments here
                java.lang.String category = category_name;
                java.lang.String search = search_name;
                // TODO process result here
                java.lang.String result = port.searchQue1(category, search);
                out.println("<h3>Category = " + category_name);
                out.println("</h3><h3><br>Search = " + search_name+"</h3>");%>
        </div>
        <%
            String show = result;
            
            for (String s: show.split("---")){                
                
                String[] NodeID = s.split("::",3);
         %>
    
           <div class="page1-box3">
               <%if (NodeID[0].equals("Selete Search Pls.")){
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
