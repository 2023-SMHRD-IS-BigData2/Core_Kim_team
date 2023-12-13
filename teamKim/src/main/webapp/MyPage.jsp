<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>feed</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="css/MyPage.css" rel="stylesheet" />
    
</head>

<body class="bg-gray-100">
    <div class="container mx-auto p-4">
        <!-- Header -->
        <div class="header mb-6">
            <a href="./feed.html"><img src="img\futsal062.png" alt="Logo" class="h-15 w-40"></a>

            <div class="flex-space-x-4">
                <a href="./Feed.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">FEED</button></a>
                <a href="./MyPage.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">MY PAGE</button></a>
                <a href="./FeedWrite.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">피드작성</button></a>
                <a href="./MatchCalendar.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 등록</button></a>
                <a href="./ViewCalendar.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 보기</button></a>

            </div>
            <div class="flex space-x-2">
                <button class="rounded-button login-button p-4 text-lg" style="color: black;">쪽지</button>
                <a href="./login.html"><button class="rounded-button login-button p-4 text-lg" style="color: black;">로그인</button></a>
            </div>
        </div>
        <hr class="mb-6 border-b">

        <!-- Main Content -->
        <div class="flex">
            <!-- Left Column -->
            <div class="flex-1 pr-4">

                <!-- 피드 카드 -->
				<div class="card shadow mb-4">
					
					<div class="card-body">
						<div class="container-fluid">
							<div class="table-responsive">
                                <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile and Notification Modal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .modal {
            background-color: white;
            border-radius: 0.5rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }
    </style>
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">
    <div class="container mx-auto p-8">
        <div class="bg-white p-6 rounded-lg shadow-lg">
            <div class="flex items-center space-x-4">
                <img src="https://via.placeholder.com/100" alt="Profile" class="rounded-full">
                <div class="flex-grow">
                    <h2 class="text-xl font-bold">홍길동</h2>
                    <p class="text-gray-600">광주 풋살왕</p>
                    <div class="flex items-center mt-2">
                        <div class="bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2">팔로워 0</div>
                        <div class="bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700">팔로잉 0</div>
                    </div>
                </div>
                <div class="flex-shrink-0">
                    <button class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-l">
                        설정
                    </button>
                    <button class="bg-white-500 hover:bg-blue-700 text-black font-bold py-2 px-4 rounded-r border border-color-62ac2e">
                        팔로잉
                    </button>
                    
                </div>
            </div>
            <div class="mt-4">
                <button class="bg-white-500 hover:bg-blue-700 text-black font-bold py-2 px-4 rounded-r border border-green-500 border-color-62ac2e">
                    홍길동님을 평가해주세요
                </button>
                
            </div>
            <div class="border-t mt-6 pt-3">
                <h3 class="text-lg font-bold">프로필</h3>
                <p class="text-sm text-gray-600">게시물 0</p>
                <p class="text-sm text-gray-600">답변 0</p>
            </div>
        </div>
    </div>

    <script>
        // Add any JavaScript you need here
    </script>
</body>
</html>
							</div>
						</div>
					</div>
				</div>
                <!-- Q&A Section -->
                
            </div>

            <!-- Right Column -->
            <div class="w-80 pl-4">
                <!-- QR Code Widget -->
                <div class="bg-white p-4 rounded-lg shadow mb-6 flex justify-center items-center">
                    <div class="bg-gray-300 h-24 w-24"></div>
                </div>

                <!-- Top 10 List -->
                <div class="bg-white p-4 rounded-lg shadow">
                    <div class="bg-gray-300 h-4 w-32 mb-4 rounded"></div>
                    <div class="space-y-2">
                        <div class="flex items-center">
                            <div class="bg-gray-300 h-3 w-4 mr-2 rounded"></div>
                            <div class="bg-gray-300 h-3 w-full rounded"></div>
                        </div>
                        <!-- Repeat for each list item -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Any required JavaScript can be included here
    </script>
</body>

</html>