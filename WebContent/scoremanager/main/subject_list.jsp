<%-- 学生一覧JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/common/base.jsp">
	<c:param name="title">
		得点管理システム
	</c:param>

	<c:param name="scripts"></c:param>

	<c:param name="content">
		<section class="me-4">
			<h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">科目管理</h2>
			<div class="my-2 text-end px-4">
				<a href="#">新規登録</a>
			</div>
			<c:choose>
				<c:when test="${subjects.size()>0}">
					<table class="table table-hover">
						<tr>
							<th>科目コード</th>
							<th>科目名</th>
							<th></th>
							<th></th>
						</tr>
						<c:forEach var="sub" items="${subjects}">
							<tr>
								<td>${sub.cd}</td>
								<td>${sub.name}</td>
								<td><a href="#">変更</a></td>
								<td><a href="#">削除</a></td>
							</tr>
						</c:forEach>
					</table>
				</c:when>
				<c:otherwise>
					<div>学生情報が存在しませんでした</div>
				</c:otherwise>
			</c:choose>
		</section>
	</c:param>
</c:import>

