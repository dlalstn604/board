$(document).ready(function(){
	$("#button").click(function() {
		if($(".id").val().trim() == '') {
			alert("아이디가 공란입니다.");
			return false;
		} else if($(".pass").val().trim() == '') {
			alert("비밀번호가 공란입니다.");
			return false;
		} else if($(".pass").val().trim().length < 8) {
			alert("비밀번호를 8자 이상으로 만들어주세요.");
			return false;
		} else if($(".passcheck").val() != $(".pass").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}  else if($(".phone").val().trim() == '') {
			alert("전화번호가 공란입니다.");
			return false;
		} else if($(".phone").val().indexOf("-") != -1) {
			alert("전화번호는 '-' 없이 입력해주세요.");
			return false;
		} else if($(".email").val().trim() == '') {
			alert("이메일이 공란입니다.");
			return false;
		} else  if($(".email").val().indexOf("@") == -1) {
			alert("이메일이 형식에 맞지 않습니다.");
			return false;
		} else if($(".name").val().trim() == '') {
			alert("이름을 적어주세요.");
			return false;
		};
	});
});