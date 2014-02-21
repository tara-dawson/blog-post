<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
	
		<script src="http://code.jquery.com/jquery.min.js"></script>
		<link href="http://getbootstrap.com/dist/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<script src="http://getbootstrap.com/dist/js/bootstrap.js"></script>
		<meta charset="utf-8">
		<style>
		@media screen and (max-width: 720px) {
  			.adjustable {
    			font-size: 24px;
  			}
		}
		@media screen and (min-width: 721px) and (max-width: 1999px) {
	  		.adjustable {
	    		font-size: 18px;
	  		}
		}
		@media screen and (min-width: 1200px) {
	  		.adjustable {
	    	font-size: 12px;
	  		}
		}
		</style>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		
		
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
		
	</head>
	<body>
		<div id="grailsLogo" role="banner"><h1 style="font-size:40px; font-weight:bold">Tara's Blog</h1></div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
	</body>
</html>
