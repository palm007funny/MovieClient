<%-- 
    Document   : Blog
    Created on : Nov 5, 2016, 12:39:01 AM
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
		<li>
                    <a href="Delete.jsp">Delete</a>
		</li>
		<li>
                    <a href="Edit.jsp">Edit</a>
		</li>
                <li class="current">
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
            <h2>Link Our Source</h2>
            <div class="content">
                <h3>สามารถดูไฟล์และดาวน์โหลดได้ที่</h3>
                <ul>
                    <li>เกิดข้อผิดพลาด: <a href="https://bitbucket.org/nuyuyii/stbkup/" target="_blank">Bitbucket </a></li>
                    <li>อัพเดทใหม่: <a href="https://bitbucket.org/nuyuyii/stbackupnew/" target="_blank">Bitbucket</a> </li>
                    <li>ไฟล์ .war เพื่อ deploy in Server: <a href="https://github.com/nuyuyii/war" target="_blank">GitHub </a></li>
                </ul>            
                <h3>  สิ่งที่ต้องเตรียมก่อนการเริ่มทำ Assignment</h3>
                <ul>
                    <li>Java jdk 8: ดูเพิ่มเติมที่<a href="https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get/">  www.digitalocean.com</a></li>
                    <li>Glassfish 4.1.1: ดูเพิ่มเติมที่<a href="http://idroot.net/linux/install-glassfish-ubuntu-16-04/">  http://idroot.net</a></li>
                    <li>NetBeans IDE 8.1: ดาวน์โหลดที่<a href="https://netbeans.org/downloads/">  https://netbeans.org</a></li>
                </ul>
                <h3>ประกอบด้วยโปรเจค Java web Application โดยโปรแกรม Netbean 2 โปรเจค</h3>
                <ul>
                    <li>MovieClient</li>
                    <li>MovieWebService</li>    
                </ul>
                <h3>ต้องแก้ไข path ใน MovieWebService ที่ source packages &gt; serverpack &gt; mvWebService.java</h3>
                <ul>
                    <li>path สำหรับ path ที่บันทึกเป็น xml ใน function SaveXML</li>
                    <li>xmlFile สำหรับ path ที่เป็นข้อมูลเริ่มต้น ใน function DeleteMovie, addMovie, movie(หน้า search), EditMovie, SaveMovie</li>
                    <li>ถ้าต้องการให้บันทึกข้อมูลที่แก้ไขในไฟล์เริ่มต้น ให้ใช้ path เดียวกัน</li>
                    <li>ทั้งสองตัวรับค่าจากตัวแปร url แก้ใน url</li>
                </ul>
                <h3>อัพเดทเชื่อมต่อโปรเจค</h3>
                <ul>
                    <li>เริ่มจาก Clean and Build before Deploy for MovieWebService</li>
                    <li>ตามด้วย Clean and Build before Deploy for MovieClient</li>
                    <li>จากนั้นที่ MovieClient &gt; web service references &gt; mvWebService &gt; Refresh.. &gt; check wsdl &gt; yes</li>
                    <li>Note: Clean and Build จะทำให้ได้ไฟล์ .war ใน directory dist in project </li>
                    <li>Note2: deploy จะทำให้สามารถเข้าถึงบริการจากจากเว็บได้</li>
                </ul>
                <h3>หน้าบริการต่างๆในเว็บ MovieClient</h3>
                <ul>
                    <li>Home.jsp   - หน้าแรก แสดงรายชื่อผู้จัดทำ</li>
                    <li>Search.jsp - หน้าค้นหารายการภาพยนตร์ จาก ชื่อภาพยนตร์, ปีที่สร้าง, ประเภท, ระยะเวลาและผู้กำกับภาพยนตร์</li>
                    <li>Add.jsp    - หน้าเพิ่มรายการภาพยนตร์</li>
                    <li>Delete.jsp - หน้าลบภาพยนตร์จาก ID</li>
                    <li>Edit.jsp   - หน้าแก้ไขภาพยนตร์จาก ID</li>
                </ul>
                <h3>ส่วนของการตกแต่งหน้าเว็บที่ MovieClient</h3>
                <ul>
                    <li>include folder css, images, js and file styles.css</li>
                    <li>ที่หน้าเว็บจะมี Fragments ประกอบด้วยไฟล์โค้ดที่เป็นส่วนแสดงผลของหน้าบริการต่างๆ </li>
                </ul>

            </div>
            
        </div>

          <!-- Footer fragment -->
        <div class="fregment">
            <jsp:include page="/Fragments/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
