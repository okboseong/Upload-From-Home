## SVG 

---

```

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>SVG로 그리기</title>
	</head>
	<script src="d3.v3.min.js"></script>
	<body>
		<h1>문자의 글꼴 지정</h1>
		<svg>
			<text x="25" y="40" font-size="24px" style="fill:black">SVG 텍스트 예제</text>
			<text x="25" y="80" font-size="24px" font-family="바탕" style="fill:black">SVG 텍스트 예제</text>
			<text x="25" y="120" font-size="24px" font-family="궁서" style="fill:black">SVG 텍스트 예제</text>
		</svg>
		
		<script>
			d3.select('svg').selectAll('text').data(["달리", "더치", "도넛"]).text(function(d, i){
				return d;
			});
		</script>
	</body>
</html>

```

SVG로 그리기 일종의 canvas 같은 종류