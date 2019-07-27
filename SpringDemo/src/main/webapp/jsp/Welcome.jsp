
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Welcome</title>
        </head>
        <body>
            <form:form id="regForm" modelAttribute="user" action="registerUser" method="post">
                <table align="center">
                   <tr>
                    
                    <td style="font-style: italic; color: green; font-size:20">Welcome, ${user.firstname}</td>
                </tr>
                    <tr>
                        <td>
                            <form:label path="firstname">First Name:</form:label>
                        </td>
                        <td>
                           <form:label path="firstname">${user.firstname}</form:label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="lastname">Last Name:</form:label>
                        </td>
                        <td>
                            <form:label path="lastname">${user.lastname}</form:label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="email">Email:</form:label>
                        </td>
                        <td>
                            <form:label path="email">${user.email}</form:label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="address">Address:</form:label>
                        </td>
                        <td>
                            <form:label path="address">${user.address}</form:label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <form:label path="phone">Phone:</form:label>
                        </td>
                        <td>
                            <form:label path="phone">${user.phone}</form:label>
                        </td>
                    </tr> 
                    <%-- <tr>
                        <td></td>
                        <td>
                            <form:button id="register" name="register">Register</form:button>
                        </td>
                    </tr> --%>
                    <tr></tr>
                    <tr>
                        
                        <td><a href="index.jsp">Home</a>
                        </td>
                         <td><a href="editUser?uid=${user.uid}">Edit Details</a>
                        </td>
                    </tr>
                </table>
                 <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${errMessage}</td>
                    <td style="font-style: italic; color: green;">${message}</td>
                </tr>
            </table>
            </form:form>
        </body>
        </html>