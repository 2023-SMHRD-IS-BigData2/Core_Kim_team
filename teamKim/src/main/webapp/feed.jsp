<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMMENT</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fc;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .card {
            max-width: 1000px;
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #4e73df;
            color: #fff;
            padding: 15px;
            border-bottom: 1px solid #ddd;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .card-body {
            padding: 20px;
        }

        .table-bordered {
            border: 1px solid #ddd;
            table-layout: fixed; /* Added to fix the table layout */
        }

        .feed-image {
            width: 
			100%;
            height: 550PX; /* Increased image height */
            object-fit: cover;
        }

        .comment-form {
            margin-top: 20px;
            display: flex;
            align-items: center; /* Align items vertically */
        }

        .comment-form input[type="text"] {
            flex: 1; /* Take remaining width */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-right: 10px;
        }

        .send {
            padding: 10px;
            background-color: #4e73df;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .send:hover {
            background-color: #375abb;
        }

        .comment-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .comment-list li {
            margin-bottom: 10px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                <a href="MessageWrite.jsp">
                    <i class="fas fa-envelope fa-fw float-right" style="color: #62ac2e"></i>
                </a>
                <a href="FriendService?id=">
                    <i class="fas fa-user fa-fw float-right" style="color: #62ac2e"></i>
                </a>
            </h6>
        </div>
        <div class="card-body">
            <div class="container-fluid">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" style="width: 100%;" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="text-center">피드</th>
                                <th class="text-center">댓글</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <img alt="" src="img/your_feed_image.jpg" class="feed-image">                    
                                </td>
                                <td>
                                    <div style="overflow-y: scroll; max-height: 500px;">
                                        <ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                        <ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                        <ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                         </ul><ul class="comment-list">
                                            <li><strong>Your Commenter:</strong> Comment 1</li>
                                        </ul>
                                        
                                        
                                    </div>
                                    <div class="comment-form">
                                        <input type="text" name="C_COMMENT" placeholder="댓글을 입력하세요">
                                        <input type="submit" value="전송" class="send">
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
            