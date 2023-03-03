/*global $:false */
$(document).ready(function() {
	
	"use strict";		
	
	$('.accordion-body.in').parent().addClass('active');

	$('.accordion-toggle').click(function() { 
		$('.accordion-group').removeClass('active'); 
		$(this).parent().parent().addClass('active');
	});
	
	$('.dropdown').each(function () {
		$(this).parent().eq(0).hoverIntent({
			timeout: 100,
			over: function () {
				var current = $('.dropdown:eq(0)', this);
				current.slideDown(300);
			},
			out: function () {
				var current = $('.dropdown:eq(0)', this);
				current.fadeOut(100);
			}
		});
	});

	$('.rating li').click(function(){
		if ($(this).hasClass('nr_1')) {
				$(this).siblings('li').removeClass('active');
				$(this).siblings('.nr_1').addClass('active');
			}
		if ($(this).hasClass('nr_2')) {
				$(this).siblings('li').removeClass('active');
				$(this).siblings('.nr_1').addClass('active');
				$(this).siblings('.nr_2').addClass('active');
			}
		if ($(this).hasClass('nr_3')) {
				$(this).siblings('li').removeClass('active');
				$(this).siblings('.nr_1').addClass('active');
				$(this).siblings('.nr_2').addClass('active');
				$(this).siblings('.nr_3').addClass('active');
			}
		if ($(this).hasClass('nr_4')) {
				$(this).siblings('li').removeClass('active');
				$(this).siblings('.nr_1').addClass('active');
				$(this).siblings('.nr_2').addClass('active');
				$(this).siblings('.nr_3').addClass('active');
				$(this).siblings('.nr_4').addClass('active');
			}
		if ($(this).hasClass('nr_5')) {
				$(this).siblings('li').removeClass('active');
				$(this).siblings('.nr_1').addClass('active');
				$(this).siblings('.nr_2').addClass('active');
				$(this).siblings('.nr_3').addClass('active');
				$(this).siblings('.nr_4').addClass('active');
				$(this).addClass('active');
			}
	});
	
	$('.rating li').mouseenter(function(){
		if ($(this).hasClass('nr_1')) {
				$(this).siblings('li').removeClass('hover');
				$(this).siblings('.nr_1').addClass('hover');
			}
		if ($(this).hasClass('nr_2')) {
				$(this).siblings('li').removeClass('hover');
				$(this).siblings('.nr_1').addClass('hover');
				$(this).siblings('.nr_2').addClass('hover');
			}
		if ($(this).hasClass('nr_3')) {
				$(this).siblings('li').removeClass('hover');
				$(this).siblings('.nr_1').addClass('hover');
				$(this).siblings('.nr_2').addClass('hover');
				$(this).siblings('.nr_3').addClass('hover');
			}
		if ($(this).hasClass('nr_4')) {
				$(this).siblings('li').removeClass('hover');
				$(this).siblings('.nr_1').addClass('hover');
				$(this).siblings('.nr_2').addClass('hover');
				$(this).siblings('.nr_3').addClass('hover');
				$(this).siblings('.nr_4').addClass('hover');
			}
		if ($(this).hasClass('nr_5')) {
				$(this).siblings('li').removeClass('hover');
				$(this).siblings('.nr_1').addClass('hover');
				$(this).siblings('.nr_2').addClass('hover');
				$(this).siblings('.nr_3').addClass('hover');
				$(this).siblings('.nr_4').addClass('hover');
				$(this).siblings('.nr_5').addClass('hover');
			}
	});
	
	$('.rating li').mouseleave(function(){
		$(this).siblings('li').removeClass('hover');
		$(this).removeClass('hover');
	});
			
});