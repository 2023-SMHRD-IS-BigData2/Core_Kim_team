<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Career.ly Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Additional styles if needed */
    </style>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('eefca775da363abc546f57a131ec1863'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
</script>
    
</head>
<body class="bg-gray-50">
    <div class="min-h-screen flex flex-col items-center justify-center">
        <div class="w-full max-w-md p-8 space-y-6 bg-white shadow-lg rounded-lg">
            <div class="flex justify-center mb-2">
                <a href="./feed.jsp"><img src="img\futsal062.png" alt="Logo" class="h-15 w-40"></a>
            </div>
            <h2 class="text-2xl font-semibold text-center mb-8">로그인</h2>
            <div class="space-y-4">
                <div class="flex flex-col space-y-4">
                    <button class="bg-yellow-400 text-gray-800 rounded-md py-2" onclick="loginWithKakao()">카카오로 로그인하기</button>
                </div>
            </div>
        </div>
    </div>
    <script>
		function loginWithKakao() {

			Kakao.Auth.login({
				success : function(authObj) {
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {

							let properties = response.properties;
							let id = response.id;
							let pic = properties.profile_image;
							let nick = properties.nickname;

							console.log(id);
							console.log(pic);
							console.log(nick);

							document.token_value.id.value = id;
							document.token_value.pic.value = pic;
							document.token_value.nick.value = nick;
							document.token_value.submit();

						},
						fail : function(error) {
							console.log(error);
						}
					});
				},
				fail : function(err) {
					alert(JSON.stringify(err))
				},
			})
		}
	</script>

	<form action="LoginService" name="token_value" method="post">
		<input type="text" name="id" value=""> <input type="text"
			name="pic" value=""> <input type="text" name="nick" value="">
	</form>
</body>
</html>