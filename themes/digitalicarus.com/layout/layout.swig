<!DOCTYPE html>
<html>
	<head>
		<!-- TODO: move google fonts to local -->
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300italic,300,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
		{{ css('css/style') }}
	</head>
	<body>
		<header class="site-header">
			<nav class="site-main">
				<button class="menu-btn">&#9776;</button>
				<h1>
					<button class="logo wing-bg" inline-svg-from-class>&nbsp;</button>
					<span class="title-one">digital</span>icarus
				</h1>
				<ul>
                    <li class="selected"><a href="#about">about</a></li>
                    <li><a href="#games">games</a></li>
                    <li><a href="#blog">blog</a></li>
                    <li><a href="#resume">resume</a></li>
                    <li><a href="#lists">lists</a></li>
				</ul>
			</nav>
		</header>
		<main>
			{{ body }}
		</main>
		<footer class="pure-g">
            <section class="attribution pure-u-1-2 pure-u-md-1-4">            
                <a href="http://thenounproject.com/noun/wing/#icon-No7562" target="_blank">Wing</a> designed by <a href="http://thenounproject.com/misirlou" target="_blank">Benjamin Orlovski</a> from The Noun Project
            </section>
            <section class="social pure-u-1-2 pure-u-md-1-4">
                <ul>
                    <li><a href="http://www.linkedin.com/in/adamhorton"><abbr title="linkedIn">l</abbr></a></li>
                    <li><a href="https://www.facebook.com/digitalicarus"><abbr title="facebook">F</abbr></a></li>
                    <li><a href="https://twitter.com/#!/digitalicarus"><abbr title="twitter">t</abbr></a></li>
                    <li><a href="https://youtube.com/user/digitalicarus"><abbr title="youtube">y</abbr></a></li>
                    <li><a href="https://github.com/digitalicarus"><abbr title="github">G</abbr></a></li>
                    <li><a href="https://plus.google.com/u/0/102130083344807519500"><abbr title="google plus">g&#8314;</abbr></a></li>
                    <li><a href="http://steamcommunity.com/profiles/76561197989899392"><abbr title="steam">S</abbr></a></li>
                </ul>                     
            </section>
            <div class="clearfix">&nbsp;</div>              
		</footer>
		{{ js('js/vendor/jquery-2.2.2.min.js') }}
		{{ js('js/main.js') }}
	</body>
</html>
