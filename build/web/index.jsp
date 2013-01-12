<%-- 
    Document   : index
    Created on : 08.01.2013, 16:25:40
    Author     : ianisko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <script src="library.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Javascript Loan Calculator</title>
        <style>
            .output{font-weight: bold;}
            #payment {text-decoration: underline;}
            #graph{border: solid black 1px;}
            th, td{vertical-align: top;}
        </style>
        
    </head>
    <body>
        <table>
            <tr><th> Enter Loan Data:</th>
                <td></td>
                <th>Loan Balance, Comulative Equity, and Interest Payments</th></tr>>
            <tr><td>Amount of the loan ($):</td>
                <td><input id="amount" onchange="calculate();"></td>
                <td rowspan=8>
                    <canvas id="graph" width="400" height="250"></canvas>
                </td></tr>
            <tr><td>Annual interest (%):</td>
                <td><input id ="apr" onchange="calculate();"></td></tr>
            <tr><td>Repayment period (years):</td>
                <td><input id ="years" onchange="calculate();"></td></tr>
            <tr><td>Zipcode (to find lenders):</td>
                <td><input id ="zipcode" onchange="calculate();"></td></tr>
            <tr><td>Approximate Payments:</td>
                <td><button onclick="calculate()">Calculate</button></td></tr>
            <tr><td>Montly payment:</td>
                <td>$<span class="output" id="payment"></span></td></tr>
            <tr><td>Total payment:</td>
                <td>$<span class="output" id="total"></span></td></tr>
            <tr><td>Total interest::</td>
                <td>$<span class="output" id="totalinterest"></span></td></tr>
            <tr><th>Sponsors:</th><td colspan="2">
                    Apply for your loan with one of these fine lenders:
                    <div id="lenders"></div></td></tr>
        </table>
    </body>
</html>
