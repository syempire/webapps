<%-- 
    Document   : response.jsp
    Created on : Jun 19, 2014, 10:42:04 AM
    Author     : Scott Young
    Assignment : Homework 1, Project 1
    Class      : Web-Based Application Development, Muhlenberg College
    Description: accepts student name & 3 grades to calculate avg & provide letter grade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String student = request.getParameter("Name");
   String grade1 = request.getParameter("Grade1");
   String grade2 = request.getParameter("Grade2");
   String grade3 = request.getParameter("Grade3");
   float a = Float.parseFloat(grade1);
   float b = Float.parseFloat(grade2);
   float c = Float.parseFloat(grade3);
   float total = (a + b + c);
   float avg = total/3;

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Grades</title>
    </head>
    <body>
        
        <%--Display title --%>
        <h1>Student Grade Report</h1>
        
        <%--Display last name from user input --%>
        Student Last Name: <%= student %><br>
        
        <%-- commented out because it was not an output requirement for assignment
        <%--Display Results of 3 student grade inputs-%>
        Grade 1: <%= grade1 %><br>
        Grade 2: <%= grade2 %><br>
        Grade 3: <%= grade3 %><br>
        <br>
        --%>
        
        <%--Display the Grade Average--%>
        Grade Average: <%= avg %><br>
        
        <%--If/Else ladder to determine letter grade based on result of grade average--%>
        <% if(avg >= 90){ %>
        Letter Grade: A
        <% } else if(avg >= 80){ %>
        Letter Grade: B
        <% } else if(avg >= 70){ %>
        Letter Grade: C
        <% } else if(avg >= 60){ %>
        Letter Grade: D
        <% } else { %>
        Letter Grade: F
        <% } %>

    </body>
</html>
