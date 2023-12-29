<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매치, 용병등록</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="css/enroll.css" rel="stylesheet" />
</head>

    <style>
       
    
    </style>
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-4">
        <!-- Header -->
        <div class="header mb-6 flex justify-between items-center">
            <div>
                <a href="./feed.jsp"><img src="img\futsal062.png" alt="Logo" class="h-15 w-40"></a>
            </div>
            <div class="flex-space-x-4">
              <a href="./Feed.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">FEED</button></a>
                <a href="./MyPage.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">MY PAGE</button></a>
                <a href="./FeedWrite.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">피드작성</button></a>
                <a href="./MatchCalendar.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 등록</button></a>
                <a href="./ViewCalendar.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 보기</button></a>

            </div>
            <div class="flex space-x-2">
				<a href="javascript:TextMain()"><button class="rounded-button login-button p-4 text-lg" style="color: black;"><i class="fa-solid fa-user-plus"></i></button></a>
				 <a href="javascript:TextMain()"><button class="rounded-button login-button p-4 text-lg" style="color: black;"><i class="fa-regular fa-message"></i></button></a> 
				<a href="./Login.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;"><i class="fa-solid fa-right-to-bracket"></i></button></a>
			</div>
        </div>
        <hr class="mb-6 border-b">


        <!-- Main Content -->
        <div class="flex">
            <!-- Left Column -->
            <div class="flex-1 pr-4">
                <!-- 달력 카드 -->
                <div class="bg-white p-4 rounded-lg shadow mb-6">
                    <div class="calendar-container">
        <h1>⚽ 원하시는 날짜를 선택해주세요 ⚽</h1>
        <!-- Pagination -->
    <div class="pagination" id="pagination"></div>

        <table id="calendar-table">
            <thead>
                <tr>
                    <th>Sun</th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th>Sat</th>
                </tr>
            </thead>
            <tbody id="calendar-body"></tbody>
        </table>
    </div>

    <!-- Pagination Script -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const calendarContainer = document.querySelector(".calendar-container");
            const calendarBody = document.getElementById("calendar-body");
            const paginationContainer = document.getElementById("pagination");

            let currentMonth = new Date().getMonth() + 1; // 현재 월 (1-12)
            let currentYear = new Date().getFullYear();

            function generateCalendar(month, year) {
                calendarBody.innerHTML = "";

                // 월의 첫째 날 가져오기
                const firstDay = new Date(year, month - 1, 1).getDay();

                // 월의 마지막 날 가져오기
                const lastDay = new Date(year, month, 0).getDate();

                let dateCounter = 1;

                for (let i = 0; i < 5; i++) {
                    const row = document.createElement("tr");

                    for (let j = 0; j < 7; j++) {
                        const cell = document.createElement("td");
                        const dayLink = document.createElement("a");

                        if (i === 0 && j < firstDay) {
                            // 첫째 날 이전의 빈 셀 추가
                           dayLink.textContent = "";
                        } else if (dateCounter <= lastDay) {
                            // 캘린더에 날짜 추가
                            
                            dayLink.href = "#";
                            dayLink.textContent = dateCounter;
                            dayLink.href = "Matching.jsp?#"+year+"."+month+"."+dateCounter;									
                            /* dayLink.href = `Matching.jsp?#${year}.${month}.${dateCounter}`; */
                            
                                                if (month === 11 && dateCounter >= 19 && dateCounter <= 30) {

                                                    dayLink.classList.add("bold");
                                                }

                            
                            dateCounter++;
                        }

                        cell.appendChild(dayLink);
                        row.appendChild(cell);
                    }

                    calendarBody.appendChild(row);
                }
            }

            function displayPagination() {
                paginationContainer.innerHTML = "";

                for (let i = 1; i <= 12; i++) {
                    const pageLink = document.createElement("a");
                    pageLink.href = "#";
                    pageLink.textContent = i;

                    pageLink.addEventListener("click", function () {
                        currentMonth = i;
                        generateCalendar(currentMonth, currentYear);
                        highlightActivePage(i);
                    });

                    paginationContainer.appendChild(pageLink);
                }

                // 초기에 현재 월을 강조합니다.
                highlightActivePage(currentMonth);
            }

            function highlightActivePage(month) {
                const paginationLinks = document.querySelectorAll(".pagination a");
                paginationLinks.forEach(link => link.classList.remove("active"));

                const activeLink = document.querySelector(`.pagination a:nth-child(${month})`);
                if (activeLink) {
                    activeLink.classList.add("active");
                }
            }

            // 초기 표시
            generateCalendar(currentMonth, currentYear);
            displayPagination();

        });
    </script>
</body>
</html>