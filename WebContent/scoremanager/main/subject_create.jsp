<%-- 科目登録JSP --%>
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
			<h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">科目情報登録</h2>
			<form action="SubjectCreateExecute.action" method="post">
				<label>科目コード</label><br>
					<input class="form-control" type="text" name="cd" value="${cd}" maxlength="3" placeholder="科目コードを入力して下さい" required><br>
				<div class="mt-2 text-warning">${errors.get("cd")}</div>
				<label>科目名</label><br>
					<input class="form-control" type="text" name="name" value="${name}" maxlength="20" placeholder="科目名を入力して下さい" required><br>
				<button class="btn btn-primary">登録</button><br>
				<a href="SubjectList.action">戻る</a>
			</form>
		</section>
	</c:param>
</c:import>

