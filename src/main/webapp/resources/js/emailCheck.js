let email = document.getElementsByName('email')[0];
		
email.onblur = () => {
	fetch(url + 'Email?email=' + email.value, {method: 'GET'})
	.then(response => response.json())
	.then(data => {
		if(data.email != null) {
			h6[5].innerHTML = '이미 사용되고 있는 이메일입니다.';
			h6[5].style.color = 'red';
			
			email.value = '';
			email.focus();
		}
		else {
			h6[5].innerHTML = '';
		}
	})
}