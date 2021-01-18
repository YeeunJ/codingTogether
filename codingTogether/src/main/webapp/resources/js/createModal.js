function createModel(content, titleValue, actionFunction){
		var variant = {
			args: [
				{
					content: $(content).html(),
					title: titleValue,
					showCloseButton: true,

					buttons: [
						{
							label: '등록',
							classes: 'green',
							action: function() {
								actionFunction();
								return $.sweetModal({
									content: '<p style = "font-weight:800; font-size:15px; padding-top: 15px;">데이터가 등록 되었습니다~:)</p>',
									icon: $.sweetModal.ICON_SUCCESS
								});
							}
						}
					]
				}
			]
		};
		
		variant.fn = variant.fn || $.sweetModal;
		variant.fn.apply(this, variant.args);
}

function updateModel(readContent, updateContent, titleValue, actionFunction){
		var variant = {
			args: [
				{
					content: $(readContent).html(),
					title: titleValue,
					showCloseButton: true,

					buttons: [
						{
							label: '수정',
							classes: 'green',
							action: function() {
								return $.sweetModal({
									content: $(updateContent).html(),
									buttons: [
										{
											label: '등록',
											classes: 'green',
											action: function() {
												actionFunction();
												return $.sweetModal({
													content: '<p style = "font-weight:800; font-size:15px; padding-top: 15px;">데이터가 수정 되었습니다~:)</p>',
													icon: $.sweetModal.ICON_SUCCESS
												});
											}
										}
									]
								});
							}
						}
					]
				}
			]
		};
		
		variant.fn = variant.fn || $.sweetModal;
		variant.fn.apply(this, variant.args);
}