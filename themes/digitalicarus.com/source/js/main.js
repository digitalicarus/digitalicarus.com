(function ($) {
	$.fn.extend({
		inlineSvgFromClass: function (params) {
			function getMarkup (src) {
				var deferred      = $.Deferred()
				,   base64Matches = src.match(/url\("?data:image\/svg\+xml;?(base64)?,(.*?)"?\)/)
				;
				if (base64Matches && base64Matches.length > 2) {
					deferred.resolve((matches[1] === 'base64') ? 
						atob(matches[2]) : decodeURIComponent(matches[2]));
				} else {
					$.get({
						url: src.replace(/url\(["']?(.*?)["']\)/, function (match, $1) { return $1; }),
						dataType: 'text'
					}).then(function (data) {
						console.log("GET", arguments);
						deferred.resolve(data);
					});
				}
			
				return deferred.promise();
			}

			return this.each(function () {
				var $target = $(this)
				,   src = $target.css('background-image')
				;
				console.log("TARGET", $target);
				getMarkup(src)
					.then(function (svgSrc) {
						$target.css('background-image', 'none');
						$target.html(svgSrc);
					});
			});
		}
	});

	$('[inline-svg-from-class]').inlineSvgFromClass();
	$('.site-header button.menu-btn').on('click', function () {
		$('.site-header .site-main ul').toggleClass('active');
	});
/*
    setTimeout(function(){
				var matches = ele.css('background-image')
					.match(/url\("?data:image\/svg\+xml;?(base64)?,(.*?)"?\)/);

				if (matches.length > 2) {
					var svg = ;
					ele.css('background-image', 'none');
					ele.html(svg);
				}
			},1)
*/
	console.log('asdf');
})(jQuery)
