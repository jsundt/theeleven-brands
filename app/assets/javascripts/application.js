// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require svg_inliner/svg4everybody
//= require_tree .

svg4everybody({
  fallback: function (src, svg, use) {
    return 'fallback.png'; // always return fallback.png
  },
  nosvg: false, // shiv <svg> and <use> elements and use image fallbacks (requires legacy version of svg4everybody)
  polyfill: true // polyfill <use> elements for External Content
});
