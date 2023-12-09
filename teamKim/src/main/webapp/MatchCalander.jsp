<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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

                            // 각 날짜를 처리하는 논리를 여기에 추가하세요
                            // 필요한 경우 클릭 이벤트를 추가하거나 필요에 맞게 사용자 지정하세요
                            dayLink.href = `Matching.jsp?date=${year}.${month}.${dateCounter}`;
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