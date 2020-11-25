<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="리스트" />
<%@ include file="../../part/head.jspf"%>



<div class="list-box big-box con flex flex-jc-sb">
	<div class="word-box lit-box  ">
		<div class="border-bottom"></div>
		<div class="title">단어 / 문장</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents">${article.title}</div>
		</c:forEach>
	</div>
	<div class="mean-box lit-box  ">
		<div class="border-bottom"></div>
		<div class="title">의미</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents">${article.body }</div>
		</c:forEach>
	</div>
	<div class="mean-box lit-box plus  ">
		<div class="border-bottom"></div>
		<div class="title"><i class="far fa-hand-point-right"></i></div>
		<c:forEach items="${articles}" var="article">
			<div class="contents"> <a href="../article/detail?id=${article.id }" class="pointer">-</a></div>
		</c:forEach>
	</div>
</div>





<%@ include file="../../part/foot.jspf"%>
