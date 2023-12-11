<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>feed</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link href="css/ViewMatch.css" rel="stylesheet" />
    </head>

    <style>
       
    
    </style>
</head>

<body class="bg-gray-100">
    <div class="container mx-auto p-4">
        <!-- Header -->
        <div class="header mb-6">
            <a href="./feed.html"><img src="img\futsal062.png" alt="Logo" class="h-15 w-40"></a>

            <div class="flex-space-x-4">
                <a href="./feed.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">FEED</button></a>
                <a href="./MyPage.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">MY PAGE</button></a>
                <a href="./FeedWrite.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">피드작성</button></a>
                <a href="./enroll.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 등록</button></a>
                <a href="./ViewMatch.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 보기</button></a>

            </div>
            <div class="flex space-x-2">
                <button class="rounded-button login-button p-4 text-lg" style="color: black;">쪽지</button>
                <a href="./login.jsp"><button class    ="rounded-button login-button p-4 text-lg" style="color: black;">로그인</button></a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="flex">
            <!-- Left Column -->
            <div class="flex-1 pr-4">
                <div class="bg-white p-4 rounded-lg shadow mb-6">
                    <!-- 대기 중인 용병 매치 섹션 -->
                    <div class="waiting-matches bg-white p-4 rounded-lg shadow mb-6">
                        <h2 class="text-2xl font-bold mb-4">대기 중인 매칭 목록</h2>

                        <!-- 용병매치 카드 예시 -->
                        <div class="match-card border-b-2 pb-4 mb-4" style="align-content: center;">
                            <p>닉네임: 김명준</p>
                            <p>시작시간: 오후 3시</p>
                            <p>종료시간: 오후 5시</p>
                            <p>수준: 중</p>
                            <p>인원수: 6명</p>
                            <p>별점: 5점</p>
                            <p>남기실 말: 즐겁게 풋살 합시다</p>
                            <p>매치신청: </p>
                            <button class="apply-button bg-green-600 text-white py-2 px-4 rounded-full">참가 신청</button>
                        </div>

                        <!-- 다른 용병매치 카드 예시 -->
                        <h2 class="text-2xl font-bold mb-4">대기 중인 용병 목록</h2>
                        <div class="match-card border-b-2 pb-4 mb-4">
                            <p>닉네임: 김명준</p>
                            <p>시작시간: 오후 3시</p>
                            <p>종료시간: 오후 5시</p>
                            <p>수준: 중</p>
                            <p>인원수: 6명</p>
                            <p>별점: 5점</p>
                            <p>남기실 말: 즐겁게 풋살 합시다</p>
                            <p>매치신청: </p>
                            <button class="apply-button bg-green-600 text-white py-2 px-4 rounded-full">참가 신청</button>
                        </div>

                        <!-- 추가적인 용병매치 카드는 위와 같은 형식으로 반복해서 추가합니다. -->
                    </div>

                </div>

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