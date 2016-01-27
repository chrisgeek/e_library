
$(document).ready(
   function(){
	$("#book-div .pagination  a").on("click",function(e){
		$(".pagination").html('please wait...')
		$.getScript(this.href)
		e.preventDefault()
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
	var searchtxt=$("#search").val();

	if(searchtxt==""){
		$("#empty_search").show();
		alert("Enter text")
	}
		})
	})
