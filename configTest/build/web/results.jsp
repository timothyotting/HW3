<%-- 
    Document   : results
    Created on : Sep 28, 2017, 3:01:45 PM
    Author     : otter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css"href="styles.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <%
        Double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        Double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        Double pretaxDeduct = Double.parseDouble(request.getParameter("prededuct"));
        Double posttaxDeduct = Double.parseDouble(request.getParameter("postdeduct"));
        Double overtime = 0.0;
        Double overtimeRate = 0.0;
        Double overtimePay = 0.0;
        Double grossPay = 0.0;
        Double taxAmount;
        Double netPay;
        Double regularHours;
        Double regularPay;
        Double postTaxPay;
        
        
        

        if (hoursWorked > 40)
        {
            regularHours = 40.0;
            overtime = (hoursWorked - 40);
            overtimeRate = (hourlyPay*1.5);
            overtimePay = (overtime*overtimeRate);
            regularPay = (regularHours*hourlyPay);
            grossPay = (regularPay + overtimePay);
        }
        else
        {
            grossPay = (hoursWorked*hourlyPay);
        }
        
        double taxablePay = (grossPay - pretaxDeduct);
        
        if (grossPay < 500)
        {
            taxAmount = (taxablePay * .18);
        }
        else
        {
            taxAmount = (taxablePay * .22);
        }
        
        postTaxPay = (taxablePay-taxAmount);
        
        netPay = (postTaxPay-posttaxDeduct);

        
        
        
        
            
        
        
        %>
 <link rel="stylesheet" type="text/css"href="styles.css"/>
 <div class="div1">
        <body>
        <h1>Results!</h1>
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td># of Overtime Hours:</td>
                    <td><%= overtime %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate: </td>
                    <td><%= overtimeRate %></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                <tr>
                    <td>Wage:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deductions:</td>
                    <td><%= pretaxDeduct %></td>
                </tr>
                <tr>
                    <td>Post Tax Deduction:</td>
                    <td><%= posttaxDeduct %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
  </div>
               
    </body>
</html>
