<%@ taglib uri="/WEB-INF/tags/lib/c.tld" prefix="c"%>
<div class="enrollment">
	<div class="title">Join Let me Booze free.</div>
	<div class="subTitle">Get Started! It takes only few minutes.</div>
	<div class="enrollFormContainer">
		<form action="" class="enroll smartForm" name="enrollForm">
			<div class="text">
				<label for="firstName">First Name*</label> <input type="text"
					name="firstName" />
			</div>
			<div class="text">
				<label for="lastName">Last Name*</label> <input type="text"
					name="lastName" />
			</div>
			<div class="text">
				<label for="email">E-mail Address*</label> <input type="text"
					name="email" />
			</div>
			<div class="text">
				<label for="primaryPhone">Primary Contact*</label> <input
					type="text" name="primaryPhone" />
			</div>
			<div class="select">
				<select name="state">
					<%-- <c:forEach items="${requestScope.location.states}" var="stateName">
						<option value = "${stateName}">${stateName}</option>
					</c:forEach> --%>
					<option value="DE">Select a State</option>
					<option value="KR">Karnataka</option>
					<option value="DL" selected="selected">Delhi</option>
					<option value="AP">Andhra Pradesh</option>
					<option value="KL">Kerela</option>
					<option value="TN">Tamil Nadu</option>
					<option value="RJ">Rajasthan</option>
					<option value="PB">Punjab</option>
				</select>
			</div>

			<div class="text">
				<label for="pincode">Pin Code*</label> <input type="text"
					name="pincode" />
			</div>
			<div class="text">
				<label for="password">Password*</label> <input type="password"
					name="password" />
			</div>
			<div class="buttonContainer blueGradient">
				<div class="button">
					<div class="buttonText">Join Now</div>
				</div>
			</div>
		</form>
	</div>
</div>