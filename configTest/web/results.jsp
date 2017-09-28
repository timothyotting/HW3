<%-- 
    Document   : results
    Created on : Sep 28, 2017, 3:01:45 PM
    Author     : otter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <%
        Double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        Double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        Double pretaxDeduct = Double.parseDouble(request.getParameter("prededuct"));
        Double posttaxDeduct = Double.parseDouble(request.getParameter("postdeduct"));
        Double overtime;
        Double overtimeRate;
        Double overtimePay;
        Double grossPay;
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
            regularPay = (regularHours*regularPay);
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
            taxAmount = (taxablePay*.22);
        }
        
        postTaxPay = (taxablePay-taxAmount);
        
        netPay = (postTaxPay-posttaxDeduct);

        
        
        
        
            
        
        
        %>
        <body>
        <h1>Results!</h1>
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                    <td>Wage:</td>
                    <td><%= hourlyPay %></td>
                    <td># Pre-tax Deductions:</td>
                    <td><%= pretaxDeduct %></td>
                    <td>Post Tax Deduction:</td>
                    <td><%= posttaxDeduct %></td>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
