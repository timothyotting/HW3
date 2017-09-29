<%-- 
    Document   : Form
    Created on : Sep 27, 2017, 7:11:55 PM
    Author     : otter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <link rel="stylesheet" type="text/css"href="stylesheet.css"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <link rel = "stylesheet" type = "text/css" href = "styles.css"/>
    <body>
        <h1>Calculate salary here!</h1>
        
        <form name="salary" action="results.jsp" method="post">
           
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50"></td>
                    </tr>
               
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="prededuct" value="" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td>Post-Tax Deduct:</td>
                        <td><input type="text" name="postdeduct" value="" size="50"></td>
                    </tr>
                
                </tbody>
            </table>
          
            <input type="reset" value="Clear" id="clear"/>
            <input type="submit" value="Submit" id="submit"/>
        </form>
        
    </body>
</html>
