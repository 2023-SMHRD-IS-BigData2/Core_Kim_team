<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>futsal062</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .search-bar::placeholder {
            color: #9CA3AF;
        }
    </style>
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-4">
        <!-- Header -->
        <div class="flex justify-between items-center mb-6">
            <div class="flex space-x-4">
                <div class="bg-gray-300 h-8 w-32 rounded">main</div>
                <div class="bg-gray-300 h-8 w-20 rounded">my page</div>
                <div class="bg-gray-300 h-8 w-24 rounded">피드작성</div>
                <div class="bg-gray-300 h-8 w-28 rounded"></div>
            </div>
            <div class="flex space-x-2">
                <div class="bg-gray-300 h-10 w-10 rounded-full"></div>
                <div class="bg-gray-300 h-10 w-10 rounded-full"></div>
                <div class="bg-gray-300 h-10 w-10 rounded-full"></div>
            </div>
        </div>

        <!-- Main Content -->
        <div class="flex">
            <!-- Left Column -->
            <div class="flex-1 pr-4">
                <!-- Search Bar -->
                <div class="flex items-center mb-6">
                    <input type="text" placeholder="Search" class="search-bar form-input w-full px-4 py-2 rounded border border-gray-300">
                </div>

                <!-- Profile Card -->
                <div class="bg-white p-4 rounded-lg shadow mb-6">
                    <div class="flex items-center mb-4">
                        <div class="bg-gray-300 h-12 w-12 rounded-full mr-4"></div>
                        <div>
                            <div class="bg-gray-300 h-4 w-32 mb-2 rounded"></div>
                            <div class="bg-gray-300 h-3 w-24 rounded"></div>
                        </div>
                    </div>
                    <div class="bg-gray-300 h-4 w-full mb-4 rounded"></div>
                    <div class="bg-gray-300 h-48 w-full rounded-lg mb-4"></div>
                    <div class="flex justify-between items-center">
                        <div class="bg-gray-300 h-3 w-20 rounded"></div>
                        <div class="bg-gray-300 h-3 w-16 rounded"></div>
                    </div>
                </div>

                <!-- Q&A Section -->
                <div class="bg-white p-4 rounded-lg shadow">
                    <div class="bg-gray-300 h-4 w-48 mb-4 rounded"></div>
                    <div class="space-y-4">
                        <div class="bg-gray-300 h-3 w-full rounded"></div>
                        <div class="bg-gray-300 h-3 w-full rounded"></div>
                        <div class="bg-gray-300 h-3 w-full rounded"></div>
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