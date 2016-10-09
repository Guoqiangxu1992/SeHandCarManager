<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var i = 0;
var ul = 0;

var musics = [
	'Bob Marley',
	'Ponto de Equilibrio',
	'Current Swell',
	'Groundation',
	'Sublime',
	'Novos Baianos',
	'Sticky Fingers',
	'SOJA',
	'Chico Buarque'
]

function checkArray(){
	if(musics.length < 6){
		musics.forEach(function(data){
			musics.push(data);
		})
		checkArray();
	}
}

checkArray();

window.addEventListener('load', function(){
	var first = createElement();
	first.className = "anim";
	document.querySelector('.text').appendChild(first);
	var nextEl = createElement();
	document.querySelector('.text').appendChild(nextEl);
	setInterval(loop, 900);
})


function createElement(){
	var list = document.createElement('ul');
	musics.forEach(function(data){
		var li = document.createElement('li');
		li.textContent = data;
		list.appendChild(li);
	});
	
	return list;
}

function loop(){
	if(document.querySelectorAll(".anim li").length - 1 < i){
		document.querySelector('.text').appendChild(createElement());
		i = 0;
	}
	
	var last = !document.querySelector('.anim').style.marginTop.split('px')[0] ? 0 :
		document.querySelector('.anim').style.marginTop.split('px')[0];
		document.querySelector('.anim').style.marginTop = last - 39 + "px";
	i++;
}
</script>

<style type="text/css">
		body, html {
  background: #000;
  font-size: 10px;
  height: 100%;
}

.content {
  height: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.text {
  width: 300px;
  height: 230px;
  color: #fff;
  -webkit-mask-image: -webkit-gradient(linear, left top, left bottom, from(black), to(transparent));
  overflow: hidden;
}
.text ul {
  list-style: none;
  text-align: center;
  margin: 0;
  padding: 0;
  font-size: 2.5rem;
}
.text ul.anim {
  -webkit-transition: all 0.6s cubic-bezier(0.19, 1, 0.22, 1);
  transition: all 0.6s cubic-bezier(0.19, 1, 0.22, 1);
  margin-top: 10px;
}
.text ul li {
  margin-bottom: 1rem;
}
</style>
</head>
<body>
这是我的！！！你已经通过权限验证

<div class="content">
	<div class="text">
		
	</div>
</div>
</body>
</html>