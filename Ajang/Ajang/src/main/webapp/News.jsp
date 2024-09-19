<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>도감</title>
<link rel="stylesheet" href="assets/css/News.css">
</head>
<body>
<!-- 메뉴 바 포함 -->
   
    <div>
    <jsp:include page="Menu.jsp" /> 
    </div>
    
    <div class="container">
        <h1>세련된 목록</h1>
        <div class="item-list">
            <div class="item" onclick="openPopup('Item 1', '이것은 아이템 1에 대한 세부 정보입니다.')">아이템 1</div>
            <div class="item" onclick="openPopup('Item 2', '이것은 아이템 2에 대한 세부 정보입니다.')">아이템 2</div>
            <div class="item" onclick="openPopup('Item 3', '이것은 아이템 3에 대한 세부 정보입니다.')">아이템 3</div>
        </div>
    </div>

    <div id="popup1" class="popup1">
        <div class="popup-content1">
            <span class="close" onclick="closePopup()">&times;</span>
            <h2 id="popup-title1"></h2>
            <p id="popup-description1"></p>
        </div>
    </div>
    
    <script src="assets/js/News.js"></script>
    
</body>
</html>