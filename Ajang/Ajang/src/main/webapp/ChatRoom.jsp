<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chat Rooms</title>
</head>
<body>
    <h2>Available Chat Rooms</h2>

    <ul>
        <!-- 방 목록을 반복해서 출력 -->
        <c:forEach var="room" items="${rooms}">
            <li>
                ${room.ROOM_TITLE} - <a href="/chatRoom?roomIdx=${room.ROOM_IDX}">입장하기</a>
            </li>
        </c:forEach>
    </ul>

    <!-- 새로운 방 생성 폼 -->
    <form action="/createRoom" method="post">
        <input type="text" name="ROOM_TITLE" placeholder="방 제목" required>
        <input type="number" name="ROOM_LIMIT" placeholder="방 제한인원을 설정하세요" required>
        <input type="hidden" name="USER_ID" value="<%= session.getAttribute("id") %>">
        <input type="text" name="ROOM_IMG" placeholder="이미지 링크를 입력하세요">
        <button type="submit">방만들기</button>
    </form>
</body>
</html>
