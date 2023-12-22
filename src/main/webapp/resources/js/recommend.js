const rowInt = document.querySelector('.rowInt').dataset.idx;

function showPoint() {
    Promise.all([goodCount(), badCount()])
    .then(([goodResult, badResult]) => {
        // Ensure that goodResult and badResult are valid numbers
        const good = parseFloat(goodResult);
        const bad = parseFloat(badResult);

        // Check if both good and bad are valid numbers
        if (!isNaN(good) && !isNaN(bad)) {
            countPoint.innerHTML = good - bad;
        } else {
            // Handle the case where either good or bad is NaN
            countPoint.innerHTML = "Error: Invalid counts";
        }
    })
    .catch(error => {
        console.error("Error fetching counts:", error);
        countPoint.innerHTML = "Error: Failed to fetch counts";
    });
};

function goodCount() {
	return fetch(url + 'goodCount?board_idx=' + rowInt + '&good=1', {method: 'GET'})
	.then(response => response.text())
};

function badCount() {
	return fetch(url + 'badCount?board_idx=' + rowInt + '&good=2', {method: 'GET'})
	.then(response => response.text())
};

const url = 'recommend/';
let countPoint = document.getElementsByClassName('recCount')[0];
let recommender = document.getElementsByName('writer')[0].value;
var isCheck = 0;

showPoint();

const recommendButton = document.querySelectorAll('.recommend button');

// Add a click event listener to the recommend button
recommendButton[0].addEventListener('click', () => {
	if(recommender === '') {
		alert('로그인 한 유저만 추천 기능을 사용할 수 있습니다');
	}
	else{
        // Check if the button has the 'good' class
        const isGood = recommendButton[0].classList.contains('good');
        
        // Set isChecked based on the class presence
        const isCheck = isGood ? 1 : 0;

        // Fetch API to send the POST request
        fetch(url + 'recommendGood', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                board_idx: rowInt,
                recommender: recommender,
                isCheck: isCheck,
            }),
        })
        .then(response => response.json())
        .then(newSessionValue => {
        	if(newSessionValue === 1) {
        		recommendButton[0].classList.add('good');
        	}
        	if(newSessionValue === 2) {
        		recommendButton[0].classList.remove('good');
        	}
            showPoint();
        })
	}
});

recommendButton[1].addEventListener('click', () => {
	if(recommender === '') {
		alert('로그인 한 유저만 추천 기능을 사용할 수 있습니다');
	}
	else{
        // Check if the button has the 'good' class
        const isGood = recommendButton[1].classList.contains('bad');
        
        // Set isChecked based on the class presence
        const isCheck = isGood ? 2 : 0;

        // Fetch API to send the POST request
        fetch(url + 'recommendBad', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                board_idx: rowInt,
                recommender: recommender,
                isCheck: isCheck,
            }),
        })
        .then(response => response.json())
        .then(newSessionValue => {
        	if(newSessionValue === 1) {
        		recommendButton[1].classList.add('bad');
        	}
        	if(newSessionValue === 2) {
        		recommendButton[1].classList.remove('bad');
        	}
            showPoint();
        })
	}
});