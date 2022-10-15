var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookies, $cookieStore, $http) 
{
		
	
/****************************************************************************/
/**************************User Cookies **********************************/	
/****************************************************************************/	
	
	$scope.cook_user_email = $cookieStore.get("cook_user_email");
	$scope.cook_admin_email = $cookieStore.get("cook_admin_email");
	
	
/****************************************************************************/
/************************** User Logout ************************************/
/****************************************************************************/		
	$scope.user_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_admin_email = "";
			$cookies.cook_user_email = "";
			$cookies.cook_user_type = "";
			$cookies.cook_user_dept = "";
			$cookies.cook_survey_id = "";
			$cookies.cook_survey_name = "";
			$cookies.cook_res_field_1 = "";
			$cookies.cook_res_field_2 = "";
			$cookies.cook_res_field_3 = "";
			$cookies.cook_res_field_4 = "";
			window.location = "index.html";
			return;
		}
		else
		{
			return false;
		}
	}

/*****************************************************************/
/************************Home page*********************************
/*****************************************************************/
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
/************************** Get Inputs **********************************/
/****************************************************************************/
$http.post('http://10.0.2.2/projects/cricket/web/get_site.php')
	.success(function(data, status, headers, config) 
	{
			$scope.site_details = data.details;
	});
	
	$http.post('http://10.0.2.2/projects/cricket/web/get_dept.php')
	.success(function(data, status, headers, config) 
	{
			$scope.dept_details = data.details;
	});
	
	$http.post('http://10.0.2.2/projects/cricket/web/get_area.php')
	.success(function(data, status, headers, config) 
	{
			$scope.area_details = data.details;
	});
	
	
	
	$http.post('http://10.0.2.2/projects/cricket/web/get_survey.php')
	.success(function(data, status, headers, config) 
	{
			$scope.survey_details = data.details;
	});
	
	
/****************************************************************************/
/**************************Get Sum and Count**********************************/
/****************************************************************************/
	
	$scope.cook_email = $cookieStore.get("cook_email");
	$scope.cook_field_3 = $cookieStore.get("cook_field_3");

	$http.post('http://10.0.2.2/projects/cricket/web/sum_get.php', {
			'email': $scope.cook_email,'field_3': $scope.cook_field_3})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.res_details = data.products;
			}
			else
			{
				$scope.res_details = "No Data found";
			}
			
        });
	
/****************************************************************************/
/**************************Get Sum and Count**********************************/
/****************************************************************************/

	$scope.cook_email_percent = $cookieStore.get("cook_email_percent");
	$scope.cook_field_3_percent = $cookieStore.get("cook_field_3_percent");

	$http.post('http://10.0.2.2/projects/cricket/web/sum_get.php', {
			'email': $scope.cook_email_percent,'field_3': $scope.cook_field_3_percent})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.percent_res_details = data.products;
			}
			else
			{
				$scope.percent_res_details = "No Data found";
			}
			
        });
	
	/****************************************************************************/
/**************************Get Comment View**********************************/
/****************************************************************************/

	$scope.cook_email_comment = $cookieStore.get("cook_email_comment");
	$scope.cook_field_3_comment = $cookieStore.get("cook_field_3_comment");

	$http.post('http://10.0.2.2/projects/cricket/web/get_comment.php', {
			'email': $scope.cook_email_comment,'field_3': $scope.cook_field_3_comment})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.comment_details = data.details;
			}
			else
			{
				$scope.comment_details = "No Data found";
			}
			
        });
		/****************************************************************************/
/**************************Get Choice View **********************************/
/****************************************************************************/

	$scope.cook_email_choice = $cookieStore.get("cook_email_choice");
	$scope.cook_field_3_choice = $cookieStore.get("cook_field_3_choice");

	$http.post('http://10.0.2.2/projects/cricket/web/get_choice.php', {
			'email': $scope.cook_email_choice,'field_3': $scope.cook_field_3_choice})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.choice_details = data.products;
			}
			else
			{
				$scope.choice_details = "No Data found";
			}
			
        });

/****************************************************************************/
/**************************Get Yes No View **********************************/
/****************************************************************************/

	$http.post('http://10.0.2.2/projects/cricket/web/get_yesno.php', {
			'email': $scope.cook_email,'field_3': $scope.cook_field_3})
		.success(function(data, status, headers, config) 
		{
			$scope.yesno_details = data.products;
        });
	/****************************************************************************/
/**************************Get Rate Comment **********************************/
/****************************************************************************/

	$http.post('http://10.0.2.2/projects/cricket/web/get_ratecomment.php', {
			'email': $scope.cook_email,'field_3': $scope.cook_field_3})
		.success(function(data, status, headers, config) 
		{
			$scope.ratecomment_details = data.products;
			$scope.sum_details = data.details;
        });
/****************************************************************************/
/**************************Get All Results**********************************/
/****************************************************************************/
	$scope.cook_survey_id = $cookieStore.get("cook_survey_id");
	$scope.cook_survey_name = $cookieStore.get("cook_survey_name");

		
		
	
});