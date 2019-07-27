
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Edit Details</title>
        </head>
        <body>
            <form:form id="regForm" modelAttribute="user" action="editUserDetails" method="post">
                <table align="center">
                    <tr>
                        <td>
                            <form:label path="username">User Name</form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                            <form:hidden path="uid" name="uid" id="uid" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">Password</form:label>
                        </td>
                        <td>
                            <form:input path="password" name="password" id="password" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="firstname">First Name</form:label>
                        </td>
                        <td>
                            <form:input path="firstname" name="firstname" id="firstname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="lastname">Last Name</form:label>
                        </td>
                        <td>
                            <form:input path="lastname" name="lastname" id="lastname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="email">Email</form:label>
                        </td>
                        <td>
                            <form:input path="email" name="email" id="email" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="address">Address</form:label>
                        </td>
                        <td>
                            <form:input path="address" name="address" id="address" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <form:label path="phone">Phone</form:label>
                        </td>
                        <td>
                            <form:input path="phone" name="phone" id="phone" />
                        </td>
                    </tr> 
                    <tr>
                        <td></td>
                        <td>
                            <form:button id="update" name="update">Update</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="index.jsp">Home</a>
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