
	$(document).ready(function() {
		var variants = {
				'title': {
					args: [
						{
							content: '<div>\
			    	<table>\
				    	<tr>\
				    		<th>문제</th>\
				    		<td><input type="text" id="site" value="백준" readonly /></td>\
				    		<td><input type="text" id="title" value="소수 판별" readonly /></td>\
				    		<td><input type="text" id="level" value="3" readonly /></td>\
				    		<td><label><input type="checkbox" name="done" value="done"></label></td>\
				    	</tr>\
				    	<tr>\
				    		<th>태그</th>\
				    		<td>반복문</td>\
				    		<td>정렬</td>\
				    		<td>소수</td>\
				    		<td>배열</td>\
				    	</tr>\
				    	<tr>\
				    		<th>내용</th>\
				    		<td colspan="4"><input type="textarea" id="content" value="백준 100문제 모음집입니다." readonly /></td>\
				    	</tr>\
						<tr>\
				    		<th>추천</th>\
				    		<td colspan="4"><input type="button" id="recom" value="추천" /></td>\
				    	</tr>\
			    	</table>\
				</div>',
							title: '100문제',
							showCloseButton: true,

							buttons: [
								{
									label: '확인',
									classes: 'green',
									action: function() {
										//여기서 ajax 처리!
										/*return $.sweetModal({
											content: '<p style = "font-weight:800; font-size:15px; padding-top: 15px;">데이터가 등록 되었습니다~:)</p>',
											icon: $.sweetModal.ICON_SUCCESS
										});*/
									}
								}
							]
						}
					]
				}
		};
		var variant = variants['title'];
		
		$('#title').on('click', { variant: variant }, function(e) {
			var variant = e.data.variant;

			variant.fn = variant.fn || $.sweetModal;
			variant.fn.apply(this, variant.args);
		});
		
	});
