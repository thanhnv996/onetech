$(function() {
	$(".tree").treemenu({
		delay : 300
	});
});
/**
 * Number.prototype.format(n, x)
 * 
 * @param integer
 *            n: length of decimal
 * @param integer
 *            x: length of sections
 */
Number.prototype.format = function(n, x) {
	var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\.' : '$') + ')';
	return this.toFixed(Math.max(0, ~~n)).replace(new RegExp(re, 'g'), '$&,');
};
String.prototype.replaceAll = function(search, replacement) {
	var target = this;
	return target.split(search).join(replacement);
};
function getQueryVariable(variable) {
	var query = window.location.search.substring(1);
	var vars = query.split("&");
	for (var i = 0; i < vars.length; i++) {
		var pair = vars[i].split("=");
		if (pair[0] == variable) {
			return pair[1];
		}
	}
}
$(".header_search_input").val(decodeURIComponent(getQueryVariable('keyword').replaceAll('+', ' ')));