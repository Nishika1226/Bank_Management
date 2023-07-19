<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bms.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
 <%@include file="/include/navbar.jsp"%>
   <section id="" class="" style="background-color: #37517e;">

		<table border="2px" , align="center" style="background-color: white;margin-top:80px">
		<tr>
		<th>Type of Loans</th>
		<th align="center">Eligibility Criteria</th>
		<th>Interest Rates</th>
		</tr>
		<tr><th colspan="3">Secured Loans</th>
		</tr>
		<tr>
		<td>Home Loans</td>
		<td>
            Must be either a resident of India or a non-resident holding an Indian passport or a Person of Indian Origin (PIO) having a foreign passport or Overseas Citizen of India (OCI)
            <br>
            Minimum Age: 21 years <br>
            Maximum Age: 70 years <br>
            Maximum Loan Tenure: 30 years
		</td>
		<td>Starting from 8.25% per annum</td>
		</tr>
		
		<tr>
		<td>Gold Loans</td>
		<td>
    All the individuals who are true owners of gold jewellery or ornaments or specially minted gold coins that are sold by the banks.
    <br>
    The loan can be availed of for any purpose other than speculation <br>
    The maximum amount of loan: Rs. 25 lakhs <br>
    Type of Facility: Demand loan or cash credit <br>
    Tenure: 12 months. In the case of the EMI scheme, the loan tenure can be maximum of 36 months
		</td>
		<td>Starting from 9.75% per annum</td>
		</tr>
		
		<tr>
		<td>Vehicle Loans – Car Loan</td>
		<td> Can be availed of by salaried employees, professionals, businessmen, farmers, directors of any company, partners in partnership firms or LLP, corporates, firms, NRIs or PIOs
           <br> Purpose: It should be availed of for buying new vehicles such as passenger cars, multi-utility vehicles (MUVs) and SUVs for personal use</td>
		<td>Starting from 8.50% per annum</td>
		</tr>
		
		<tr>
		<td>Vehicle Loans – Two-wheeler Loan</td>
		<td>The loan can be availed of by salaried employees, businessmen, farmers, professionals, staff or ex-staff

<br> Purpose: For buying a new two-wheeler for personal use

<br>Eligibility based on income criteria

<br>For salaried employees: Average of last 3 months' gross monthly income

<br>For others: Average of the past 2 years' gross annual income</td>
		<td>Starting from 13% per annum</td>
		</tr>
		
		<tr>
		<td>Mortgage Loan</td>
		<td> Can be availed of by both resident and non-resident individuals
The minimum gross annual income should be Rs. 3 lakhs in case of resident individuals and Rs. 5 lakhs in case of non-resident individuals
<br>Minimum Age: 21 years
<br>Maximum Age: 60 years</td>
		<td>Starting from 10.15% per annum</td>
		</tr>
		
		<tr>
		<td>Loan Against Security</td>
		<td>
    Any individual (whether resident or non-resident) including the staff members who are engaged in a profitable business having a regular source of income
   <br> Two or more individuals
    <br>The securities can be held either individually or jointly. In the case of joint holding, all the holders shall be applicants or co-applicants.
    <br>In case the co-applicant is not the owner, then he/she should be a close relative
    <br>At least one applicant or co-applicant should be involved in any profitable activity, generating a regular source of income
    <br>The total amount outstanding per individual should not cross the limits under the ticket size of the entire banking system.
		</td>
		<td>Starting from 9.25% per annum</td>
		</tr>
		
		<tr>
		<th colspan="3">Unsecured Loans</th>
		</tr>
		
		<tr>
		<td>Personal Loans</td>
		<td>
    Employees with a continuous service of 1 year, insurance agents doing business for a minimum period of 2 years, self-employed professionals with a minimum 1-year stable business, self-employed business persons with a minimum 1-year stable business
   <br> No co-applicant is allowed
    <br>The minimum age should be 21 years
    <br>The maximum age should be 60 years in case of salaried people and 65 years in case of non-salaried people
		</td>
		<td>Starting from 10.25% per annum</td>
		</tr>
		
		<tr>
		<td>Education Loans</td>
		<td>
    It is for graduation, post-graduation and certificate courses abroad
    <br>The student should be an Indian national
    <br>The student should have secured admission to the technical or professional course abroad through an entrance test or merit-based selection process
		</td>
		<td>Starting from 9.25% per annum</td>
		</tr>
       </table>
</section>
</div>

		
<%@include file="/include/services.jsp"%>
    <%@include file="/include/contact.jsp"%>
 
	<%@include file="/include/footer.jsp"%>
	
</body>
</html>