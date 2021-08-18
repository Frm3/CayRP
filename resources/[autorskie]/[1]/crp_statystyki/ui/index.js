window.addEventListener('message', (event) => {
	let data = event.data
	if(data.action == 'show') {
		document.querySelector("body > div").style = "display:block"
		document.querySelector("body > div > div > p:nth-child(4)").innerText = "Imię: "+data.imie
		document.querySelector("body > div > div > p:nth-child(1) > img").src = "https://source.unsplash.com/random"
		document.querySelector("body > div > div > div:nth-child(8) > div > div").style = "width: "+data.stamina+"%"
		document.querySelector("body > div > div > div:nth-child(9) > div > div").style = "width: "+data.sila+"%"
		document.querySelector("body > div > div > div:nth-child(10) > div > div").style = "width: "+data.pp+"%"
		document.querySelector("body > div > div > div:nth-child(11) > div > div").style = "width: "+data.zj+"%"
		document.querySelector("body > div > div > div:nth-child(12) > div > div").style = "width: "+data.zl+"%"
		document.querySelector("body > div > div > div:nth-child(13) > div > div").style = "width: "+data.zs+"%"
	} else if(data.action == 'hide') {
		document.querySelector("body > div").style = "display:none"
	}
})
