<%@ taglib uri="/WEB-INF/tags/lib/c.tld" prefix="c"%>
<div class = "enrollment">
	<div class = "title">Join Let me Booze free</div>
	<div class = "subTitle">Get Started! It takes only few minutes.</div>
	<div class = "enrollFormContainer">
		<form action="" class = "enroll smartForm" name = "enrollForm">
			<div class = "text">
				<input type = "text" name = "firstName" placeholder="First Name*" required="required"/>
			</div>
			<div class = "text">
				<input type = "text" name = "lastName" placeholder="Last Name*" required="required"/>
			</div>
			<div class = "text">
				<input type = "text" name = "email" placeholder="E-mail Address*" required="required"/>
			</div>
			<div class = "text">
				<input type = "text" name = "primaryPhone" placeholder="Primary Contact*" required="required"/>
			</div>
			<div class = "select">
				<select name = "state">
					<c:forEach items="${requestScope.location.states}" var="stateName">
						<option value = "${stateName}">${stateName}</option>
					</c:forEach>
				</select>
			</div>
			<div class = "select">
				<select name = "city">
					<option value = "Select State">Select State</option>
				</select>
			</div>
			<div class = "text">
				<input type = "text" name = "pincode" placeholder="Pin Code*" />
			</div>
			<div class = "text">
				<input type = "password" name = "password" placeholder="Password*" required="required"/>
			</div>
		</form>
	</div>
</div>