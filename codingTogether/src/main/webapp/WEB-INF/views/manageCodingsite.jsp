<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="./resources/css/rmanageCodingsite.css" />
<script src="./resources/js/manageCodingsite.js"></script>

	<%@ include file="./inc/header.jsp"%>
	<div>
		<h6 style="margin: 20px;">Coding Site Management</h6>
	</div>

	<div class="row">

		<div class="col-1"></div>
		<div class="col-2">
			<button id="addsite-button"
				class="btn-small waves-effect waves-light green button">추가</button>
			<button id="editclick"
				class="btn-small waves-effect waves-light green button">편집</button>
			<br>
			<table id="table">
				<tr>
					<th>사이트 이름</th>
					<th>URL</th>
					<th></th>
					<th></th>
				</tr>

				<tr>
					<td>백준</td>
					<td><a href="https://www.acmicpc.net/">https://www.acmicpc.net/</a></td>
					<td><button class="edit">수정</button></td>
					<td><button class="edit">삭제</button></td>

				</tr>
				<tr>
					<td>백준</td>
					<td><a href="https://www.acmicpc.net/">https://www.acmicpc.net/</a></td>
					<td><button class="edit">수정</button></td>
					<td><button class="edit">삭제</button></td>

				</tr>
				<tr>
					<td>백준</td>
					<td><a href="https://www.acmicpc.net/">https://www.acmicpc.net/</a></td>
					<td><button class="edit">수정</button></td>
					<td><button class="edit">삭제</button></td>

				</tr>
			</table>
		</div>

	</div>

	<%@ include file="./inc/footer.jsp"%>
	<!—  Scripts—>
	<script>
		$(document).ready(function() {
			var variants = {
				'addsite-button' : {
					args : [ {
						content : '<p>사이트추가 폼 모달</p>',
						title : '새로운 사이트 추가',
						showCloseButton : true,

						buttons : [ {
							label : '등록',
							classes : 'green',
							action : function() {
								return $.sweetModal('새로운 사이트 등록');
							}
						} ]
					} ]
				}
			};
			var variant = variants['addsite-button'];

			$('#addsite-button').on('click', {
				variant : variant
			}, function(e) {
				var variant = e.data.variant;

				variant.fn = variant.fn || $.sweetModal;
				variant.fn.apply(this, variant.args);
			});

			$('#editclick').click(function() {
				if ($(".edit").css("display") == "none") {
					$('.edit').show();
				} else {
					$('.edit').hide();
				}

				if ($(this).html().substring(0, 4) == '편집완료') {
					$(this).html('편집');
				} else {
					$(this).html('편집완료');
				}
			});

		});
	</script>