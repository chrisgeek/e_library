
$(document).ready(

function(){
	$("#book-div .pagination  a").click( function(){
		$(".pagination").html('please wait...')
		$.getScript(this.href)
		return false
	})
})

$(document).ready(
	function(){
		$('#empty_search').hide()
}
	)

$(document).ready(

	function(){
		$("#button").click(function(){			
			$('#empty_search').show()
		})
	})
