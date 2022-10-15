var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookieStore, $cookies, $http) 
{
	
/****************************************************************************/
/************************** User Login *************************************/
/****************************************************************************/
	// sign in button
	$scope.user_login = function() 
	{		
        $http.post('user_login.php', 
			{'email': $scope.email, 'password':$scope.password})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Login Successful");
				$cookieStore.put("cook_admin_email",data.field_1);
				window.location = "home.html";  // Home Page
				return;				
			}
			else if(data.success == 3)
			{
				alert("Login Successful");
				$cookieStore.put("cook_user_mail",data.email);
				$cookieStore.put("cook_user_mob",data.mobile);
				$cookieStore.put("cook_user_name",data.name);
				$cookieStore.put("cook_user_email",data.field_1);
				$cookieStore.put("cook_user_type",data.field_2);
				$cookieStore.put("cook_user_dept",data.field_3);
				$cookieStore.put("cook_user_desg",data.field_4);
				$cookieStore.put("cook_user_site",data.field_6);
				$cookieStore.put("cook_user_area",data.field_7);
				window.location = "user_home.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 4)
			{
				alert("Please Install New Version!");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }
	
/************************** Cookies **********************************/	
	$scope.cook_user_mail = $cookieStore.get("cook_user_mail");
	$scope.cook_user_mob = $cookieStore.get("cook_user_mob");
	$scope.cook_user_name = $cookieStore.get("cook_user_name");
	$scope.cook_user_desg = $cookieStore.get("cook_user_desg");
	$scope.cook_user_email = $cookieStore.get("cook_user_email");
	$scope.cook_admin_email = $cookieStore.get("cook_admin_email");
	$scope.cook_user_type = $cookieStore.get("cook_user_type");
	$scope.cook_user_dept = $cookieStore.get("cook_user_dept");
	$scope.cook_user_site = $cookieStore.get("cook_user_site");
	$scope.cook_user_area = $cookieStore.get("cook_user_area");
	
	
/****************************************************************************/
/************************Home page*********************************
/****************************************************************************/
	if(!$cookies.cook_admin_email)
	{
		$scope.UserHomeVar = false; //hide
		$scope.HomeVar = true; //hide
	}
	else 
	{
		$scope.UserHomeVar = true; //show
		$scope.HomeVar = false; //hide
	}

		
/****************************************************************************/
/************************** User Logout ************************************/
/****************************************************************************/	

	$scope.user_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_user_area = "";
			$cookies.cook_user_site = "";
			$cookies.cook_user_desg = "";
			$cookies.cook_user_name = "";
			$cookies.cook_user_mob = "";
			$cookies.cook_user_mail = "";
			$cookies.cook_user_email = "";
			$cookies.cook_admin_email="";
			$cookies.cook_user_type = "";
			$cookies.cook_user_dept = "";
			window.location = "index.html";
			return;
		}
		else
		{
			return false;
		}
	}

/****************************************************************************/
/************************** Admin Login *************************************/
/****************************************************************************/
	// sign in button
	$scope.admin_login = function() 
	{		
        $http.post('admin_login.php', 
			{'email': $scope.email, 'password':$scope.password})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Login Successful");
				$cookieStore.put("cook_admin_email",data.email);
				window.location = "admin_home.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }
	/****************************************************************************/
/************************** Admin Logout ************************************/
/****************************************************************************/		
	$scope.admin_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_user_email = "";
			$cookies.cook_staff_email = "";
			$cookies.cook_admin_email = "";
			window.location = "login.html";
			return;
		}
		else
		{
			return false;
		}
	}
	
/************************** Cookies Login **********************************/	
	

//************************** admin_register **********************************/	

	$scope.admin_register = function() 
	{		
		$http.post('admin_register.php',{
		 'name':$scope.name,'email':$scope.email,
		 'password':$scope.password,'mobile': $scope.mobile})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Registered successfully");
				window.location = "doctor_login.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
/************************** Update Admin Info **********************************/

		$http.post('get_admin_info.php')
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.details = data.details;
			}
          });
		
/************************** Update User Info **********************************/
		
		$http.post('get_user_info.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.userdetails = data.details;
			}
          });
		  
		  
	 $scope.myinfovar = true;

	 $scope.update_info = function(email,password,name,mobile) 
	{
		$scope.myinfovar = false;
		$scope.email = email;
		$scope.password = password;
		$scope.name = name;
		$scope.mobile = mobile;
		//window.location = "home.html";
	}	
	
	$scope.save_info = function() 
	{		
		$http.post('admin_update.php',{
		 'name':$scope.name,'email':$scope.email,
		 'password':$scope.password,'mobile': $scope.mobile})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "admin_post_info.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

	 /****************************************************************************/
/************************** User Login *************************************/
/****************************************************************************/
	// sign in button
	$scope.newpassword = function() 
	{		
        $http.post('newpassword.php', 
			{	'email': $scope.email, 'password':$scope.password,
				'field_3': $scope.field_3, 'field_4':$scope.field_4
				})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Password Reset Successful");
				window.location = "index.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }

	 
	
});