<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- write the code to display the loan status information 
	     received from usercontrollers' displaystatus method
	-->
	<jsp:include page="header.jsp" />
	<br>
	<div align="left">
	<form action="user?action=placeloan" method="post">
			<div>
				<label  style="color: blue" for=loanName>Loan Name</label> 	
				<input  style="color: black" type="text" name="loanName"></input>
			</div>
			<br>
			<div>
			<%@page import="java.util.*" %>
			<%
			Random rand = new Random();
			int n = rand.nextInt(90000) + 10000;
			%>
				<label  style="color: blue" for=loanAppNo>Application Number</label> 
					
				<input  style="color: black" type="text" name="loanAppNo" value="<%=n%>"></input>
			</div>
			<br>
			<div>
				<label  style="color: blue" for=loanAmt>Loan Amount</label> 	
				<input  style="color: black" type="text" name="loanAmt"></input>
			</div>
			<br>
			<div>
			
				<label  style="color: blue" for=loanAppDate>Loan Application Date</label> 	
				<input  style="color: black" type="text" name="loanAppDate" value="<%= (new java.util.Date()).toLocaleString()%>"></input>
			</div>
			<br>
			<div>
				<label  style="color: blue" for=businessStructure>Business Structure</label> 	
				<!--<input  style="color: black" type="text" name="businessStructure"></input>-->
			</div>
			<br>
			<div>
				<label  style="color: blue" for=billingIndicator>Billing Indicator</label> 	
				<!--<input  style="color: black" type="text" name="billingIndicator"></input>-->
			</div>
			<br>
			<div>
				<label  style="color: blue" for=taxIndicator>Tax Indicator</label> 	
				<!--<input  style="color: black" type="text" name="taxIndicator"></input>-->
			</div>
			<br>
			<div>
				<label  style="color: blue" for=contactAddress>Contact Address</label> 	
				<input  style="color: black" type="text" name="contactAddress"></input>
			</div>
			<br>
			<div>
				<label  style="color: blue" for=mobile>Mobile</label> 	
				<input  style="color: black" type="text" name="mobile"></input>
			</div>
			<br>
			<div>
				<label  style="color: blue" for=email>Email</label> 	
				<input  style="color: black" type="text" name="email"></input>
			</div>
			<br>
			

	<jsp:include page="footer.jsp"/>
	</form>
	</div>
</body>
</html>
