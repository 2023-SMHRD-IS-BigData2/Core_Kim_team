<%@page import="com.smhrd.model.FeedDAO"%>
<%@page import="com.smhrd.model.Feed"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>feed</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="css/Feed.css" rel="stylesheet" />
</head>

<body class="bg-gray-100">
<script type="text/javascript">
      function MessageWrite() {
         window.open("MessageWrite.jsp", "MessageWrite",
               "width=400, height=500, top=10, left=10")
      }
   </script>
    <div class="container mx-auto p-4">
        <!-- Header -->
        <div class="header mb-6">
            <a href="./Feed.jsp"><img src="img\futsal062.png" alt="Logo" class="h-15 w-40"></a>

            <div class="flex-space-x-4">
            <a href="./Feed.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">FEED</button></a>
                <a href="./MyPage.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">MY PAGE</button></a>
                <a href="./FeedWrite.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">피드작성</button></a>
                <a href="./MatchCalendar.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 등록</button></a>
                <a href="./ViewCalendar.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">매치용병 보기</button></a>


            </div>
            <div class="flex space-x-2">
                <a href="javascript:MessageWrite()"><button class="rounded-button login-button p-4 text-lg" style="color: black;">쪽지</button></a>
                <a href="./login.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;">로그인</button></a>
            </div>
        </div>
      <hr class="mb-6 border-b">

        <!-- Main Content -->
        <div class="flex">
            <!-- Left Column -->
            <div class="flex-1 pr-4">

                <!-- 피드 카드 -->
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