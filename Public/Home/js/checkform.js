// JavaScript Document


var checkFormLogin=function()
{
	var name=document.formlogin.name.value;
	var password=document.formlogin.password.value;
	var verify=document.formlogin.verify.value;
	if(name=="")
	{
	  alert("用户名不能为空！");
	  document.formlogin.name.focus();
	  return false;
	}

	if(password=="")
	{
	  alert("密码不能为空！");
	  document.formlogin.password.focus();
	  return false;
	}
	if(verify=="")
	{
		  alert("验证码不能为空！");
		  document.formlogin.verify.focus();
		  return false;
		}

	return true;
}
var checkFormReg=function()
{
	var username=document.formregister.username.value;
	var password=document.formregister.password.value;
	var password2=document.formregister.password2.value;
	var email=document.formregister.email.value;
	var age=document.formregister.age.value;
	var position=document.formregister.position.value;
	var degree=document.formregister.degree.value;
	var revenue=document.formregister.revenue.value;


	var inputvalidate=document.formregister.inputvalidate.value;
	if(username=="")
	{
	  alert("用户名不能为空！");
	  document.formregister.username.focus();
	  document.getElementById("usernametable").className='table now';
	  return false;
	}else{
		document.getElementById("usernametable").className='table';
	}

	if(password=="")
	{
	  alert("密码不能为空！");
	  document.formregister.password.focus();
	  document.getElementById("passwordtable").className='table now';
	  return false;
	}else{

	  document.getElementById("passwordtable").className='table';
	}
	if(password2=="")
	{
	  alert("确认密码不能为空！");
	  document.formregister.password2.focus();
	  document.getElementById("password2table").className='table now';
	  return false;
	}else{

	  document.getElementById("password2table").className='table';
	}
	if(password!=password2){

	  alert("密码和确认密码不一致，请重新输入！");
	  document.formregister.password2.focus();
	  document.getElementById("password2table").className='table now';
	  return false;
	}else{
		document.getElementById("password2table").className='table';
	}
	if(email=="")
	{
	  alert("邮箱地址不能为空！");
	  document.formregister.email.focus();
	  document.getElementById("emailtable").className='table now';
	  return false;
	}else{
		document.getElementById("emailtable").className='table';
	}
	re = new RegExp("\\w+@(\\w+.)+[a-z]{2,3}");
	if(!re.test(email))
	{
	  alert("邮件地址格式错误！");
	  document.formregister.email.focus();
	  document.getElementById("emailtable").className='table now';
	  return false;
	}else{
		document.getElementById("emailtable").className='table';
	}
	if(inputvalidate=="")
	{
	  alert("验证码不能为空！");
	  document.formregister.inputvalidate.focus();
	  document.getElementById("inputvalidatetable").className='table now';
	  return false;
	}else{
		document.getElementById("inputvalidatetable").className='table';
	}


	if(age=="")
	{
	  alert("年龄不能为空！");
	  document.formregister.age.focus();
	  document.getElementById("agetable").className='table now';
	  return false;
	}else{

	  document.getElementById("agetable").className='table';
	}

	if(position=="")
	{
	  alert("职位不能为空！");
	  document.formregister.position.focus();
	  document.getElementById("positiontable").className='table now';
	  return false;
	}else{

	  document.getElementById("positiontable").className='table';
	}
	if(degree=="")
	{
	  alert("学历不能为空！");
	  document.formregister.degree.focus();
	  document.getElementById("degreetable").className='table now';
	  return false;
	}else{

	  document.getElementById("degreetable").className='table';
	}
	if(revenue=="")
	{
	  alert("年收入不能为空！");
	  document.formregister.revenue.focus();
	  document.getElementById("revenuetable").className='table now';
	  return false;
	}else{

	  document.getElementById("revenuetable").className='table';
	}


	return true;
}

var checkFormReg_1=function()
{
	var username=document.formregister.username.value;
	var password=document.formregister.password.value;
	var password2=document.formregister.password2.value;
	var email=document.formregister.email.value;

	var inputvalidate=document.formregister.verify.value;
	if(username=="")
	{
	  alert("用户名不能为空！");
	  document.formregister.username.focus();
	  document.getElementById("usernametable").className='table now';
	  return false;
	}else{
		document.getElementById("usernametable").className='table';
	}

	if(password.length < 6)
	{
	  alert("密码长度不能小于6个字符！");
	  document.formregister.password.focus();
	  document.getElementById("passwordtable").className='table now';
	  return false;
	}else{

	  document.getElementById("passwordtable").className='table';
	}
	if(password2.length < 6)
	{
	  alert("密码长度不能小于6个字符！");
	  document.formregister.password2.focus();
	  document.getElementById("password2table").className='table now';
	  return false;
	}else{

	  document.getElementById("password2table").className='table';
	}
	if(password!=password2){

	  alert("密码和确认密码不一致，请重新输入！");
	  document.formregister.password2.focus();
	  document.getElementById("password2table").className='table now';
	  return false;
	}else{
		document.getElementById("password2table").className='table';
	}
	if(email=="")
	{
	  alert("邮箱地址不能为空！");
	  document.formregister.email.focus();
	  document.getElementById("emailtable").className='table now';
	  return false;
	}else{
		document.getElementById("emailtable").className='table';
	}
	re = new RegExp("\\w+@(\\w+.)+[a-z]{2,3}");
	if(!re.test(email))
	{
	  alert("邮件地址格式错误！");
	  document.formregister.email.focus();
	  document.getElementById("emailtable").className='table now';
	  return false;
	}else{
		document.getElementById("emailtable").className='table';
	}
	if(inputvalidate=="")
	{
	  alert("验证码不能为空！");
	  document.formregister.verify.focus();

	  return false;
	}

	return true;
}

var checkFormReg_2=function()
{

	var phone=document.formregister.phone.value;
	var age=document.formregister.age.value;
	var position=document.formregister.position.value;
	var degree=document.formregister.degree.value;
	var revenue=document.formregister.revenue.value;


	if(phone=="")
	{
	  alert("联系电话不能为空！");
	  document.formregister.phone.focus();
	  document.getElementById("phonetable").className='table now';
	  return false;
	}else{

	  document.getElementById("phonetable").className='table';
	}
	if(age=="")
	{
	  alert("年龄不能为空！");
	  document.formregister.age.focus();
	  document.getElementById("agetable").className='table now';
	  return false;
	}else{

	  document.getElementById("agetable").className='table';
	}

	if(position=="")
	{
	  alert("职位不能为空！");
	  document.formregister.position.focus();
	  document.getElementById("positiontable").className='table now';
	  return false;
	}else{

	  document.getElementById("positiontable").className='table';
	}
	if(degree=="")
	{
	  alert("学历不能为空！");
	  document.formregister.degree.focus();
	  document.getElementById("degreetable").className='table now';
	  return false;
	}else{

	  document.getElementById("degreetable").className='table';
	}
	if(revenue=="")
	{
	  alert("年收入不能为空！");
	  document.formregister.revenue.focus();
	  document.getElementById("revenuetable").className='table now';
	  return false;
	}else{

	  document.getElementById("revenuetable").className='table';
	}


	return true;
}