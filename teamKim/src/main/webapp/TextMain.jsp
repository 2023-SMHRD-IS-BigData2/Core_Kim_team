<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* 스타일 지정 */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .notebox {
            position: absolute;
            width: 400px;
            height: 500px;
            top: 50%;
            left: 50%;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            padding: 20px;
            align-items: center;
            justify-content: center;
            transform: translate(-50%, -50%);
        }

        .comment-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
            overflow-y: scroll;
            max-height: 400px;
        }

        .comment-list li {
            margin-bottom: 10px;
        }

        .send-button {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
    <title>쪽지함</title>
</head>
<body>
    <!-- 쪽지함 영역 -->
    <div class="notebox">
        <!-- 쪽지함 내용은 여기에 추가하세요 -->
        <h1>쪽지함</h1>
        <div>
            <ul class="comment-list">
                <li><strong>Your Commenter:</strong> Comment 1</li>
                <p>현재 시간: <%= new java.util.Date() %></p>
            </ul>
        </div>
        <!-- 쪽지 보내기 버튼 -->
        <a href="./MessageWrite.jsp"><button class="send-button">쪽지 보내기</button></a>
    </div>
</body>
</html>
