<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link type="text/css" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<div class="container my-5" style="overflow: hidden">
	<!--Section: Content-->
	<section class="dark-grey-text">
		<div class="row pr-lg-5" style="width:800px">
			<div class="col-md-7 mb-4">
				<div class="viewpic" style="width:500px">
					<img src="${vo3.movieImgUrl }" class="img-fluid"
						class="img-fluid img-thumbnail" alt="poster" class="image"
						style="height: 600px; width: 400px;">
				</div>
			</div>
			<div class="col-md-5 d-flex align-items-center">
				<div>
					<form action="${cp }/fm/filminsert.do" method="post">
						<table border="1" class="movieinfo" style="width:700px;">
							<tr>
								<td colspan="2"><h3 class="font-weight-bold mb-4">${vo.filmName }</h3></td>
							</tr>
							<tr>
								<th>감독</th>
								<td>${vo.filmHead }</td>
							</tr>
							<tr>
								<th>장르</th>
								<td>${vo2.genreName }</td>
							</tr>
							<tr>
								<th>출연진</th>
								<td>${vo1.castName }</td>
							</tr>
							<tr>
								<th>줄거리</th>
								<td>${vo.filmStory }</td>
							</tr>
							<fmt:formatDate value="${vo.filmStart }" pattern="yyyy-MM-dd"
								var="filmStart" />
							<tr>
								<th>개봉일</th>
								<td>${filmStart }</td>
							</tr>
							<fmt:formatDate value="${vo.filmEnd }" pattern="yyyy-MM-dd"
								var="filmEnd" />
							<tr>
								<th>종료일</th>
								<td>${filmEnd }</td>
							</tr>
							<tr>
								<th>상영기간</th>
								<td><input type="text" placeholder="상영기간을 선택하세요."
									id="datepicker" name="filmDeadline"></td>
							</tr>
							<tr>
								<th>판권가</th>
								<td>${vo.filmPrice }</td>
							</tr>
							<tr>
								<th>상태</th>
								<td>${vo.filmStatus }</td>
							</tr>
						</table>
						<input type="hidden" name="filmNum" value="${vo.filmNum }">
						<!-- value값 수정 지점 시퀀스 -->
						<input type="hidden" name="branchNum" value="1">
						<button type="submit"
							class="btn btn-orange btn-rounded mx-0 btn-lg">구매</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--Section: Content-->
</div>
<script type="text/javascript">
	$(function() {
		$("#datepicker")
				.datepicker(
						{
							dateFormat : 'yy-mm-dd',
							minDate : new Date('${filmStart}'),
							maxDate : new Date('${filmEnd}'),
							showOtherMonths : true,
							showMonthAfterYear : true,
							changeYear : true,
							changeMonth : true,
							showOn : "both",
							buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
							buttonImageOnly : true,
							yearSuffix : "년",
							monthNamesShort : [ '1', '2', '3', '4', '5', '6',
									'7', '8', '9', '10', '11', '12' ],
							monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
									'7월', '8월', '9월', '10월', '11월', '12월' ],
							dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
							dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일',
									'금요일', '토요일' ]
						});
		$("#datepicker").datepicker();
	});
</script>