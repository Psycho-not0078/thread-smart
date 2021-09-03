# thread-smart

#Test-Case1:<br>
<b>Test name:</b> Create new order<br><br>

<b>Test Description:</b> As a Customer, I must be able to call the function mkOrder() with the desired type and quantity<br><br>

<b>Desired outcome:</b> I should be get the order id for checking if the order is created<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case2:<br>
<b>Test name:</b> Pay for an order<br><br>

<b>Test Description:</b> As a Customer, I must be able to call the function mkPayment() for the specified order id<br><br>

<b>Desired outcome:</b> I should be get the payment id for checking if the paymentis done<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case3:<br>
<b>Test name:</b> Add a new user as admin<br><br>

<b>Test Description:</b> As admin i must be able to call the addUser() function with the required parameters<br><br>

<b>Desired outcome:</b> I should be get the user id for checking if the user is created<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case4:<br>
<b>Test name:</b> Add a new user as Customer<br><br>

<b>Test Description:</b> As Customer i must not be able to call the addUser() function with the required parameters<br><br>

<b>Desired outcome:</b> I should be get an error message saying the function is not callable<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case5:<br>
<b>Test name:</b> acknowledge new order as admin user or a user with role as 1<br><br>

<b>Test Description:</b> As admin a user with role as 1 i must be able to call the acOrder() with parameter order id<br><br>

<b>Desired outcome:</b> I should be get no errors if executed correctly<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case6:<br>
<b>Test name:</b> acknowledge new order as an user with role as 2<br><br>

<b>Test Description:</b> As user with role as 2 i must not be able to call the acOrder() with parameter order id<br><br>

<b>Desired outcome:</b> I should be get an error message saying the function is not callable<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case7:<br>
<b>Test name:</b> acknowledge new payment for existing order as an user with role as 1<br><br>

<b>Test Description:</b> As an user with role as 1 i must be able to call the function acPayment with the orderid, and paymentid as parameter<br><br>

<b>Desired outcome:</b>I should be get no errors if executed correctly<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case8:<br>
<b>Test name:</b> acknowledge new payment for existing order as an user with role as 2<br><br>

<b>Test Description:</b> As an user with role as 2 i must not be able to call the function acPayment with the orderid, and paymentid as parameter<br><br>

<b>Desired outcome:</b>I should be get an error message saying the function is not callable<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case9:<br>
<b>Test name:</b> Create new payment<br><br>

<b>Test Description:</b> As a Customer, I must be able to call the function mkPayment() with the desired type and quantity<br><br>

<b>Desired outcome:</b> I should be get the payment id for checking if the order is created<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>

#Test-Case10:<br>
<b>Test name:</b> View order/payment Status for an order that doesnt exist<br><br>

<b>Test Description:</b> I must be able to call the function view_orderStat()/view_payStat() with the desired orderid/paymentid which is greater than the possible order id<br><br>

<b>Desired outcome:</b> I should be get an error<br><br>

<b>Actual outcome:</b> On testing, I validated that the actual outcome matches the desired
outcome<br><br>

<b>Result:</b> Pass<br><br>