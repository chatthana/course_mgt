# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'click', '#adderer', (e) ->
	e.preventDefault()
	$('.modal').modal()

$(document).on 'click', '#create-new-category', ->
	name = $('input[name=category_name]').val()
	description = $('textarea[name=category_description]').val()
	default_status = $('select[name=category_default_status]').val()

	$.ajax 'createcategory',
		type: 'POST',
		async: false,
		dataType: 'json',
		data: {name:name, description:description, default_status:default_status},
		success: (response) ->
			$('select[name="category[category]"]').append $('<option>', {value: response.id, text: response.name})
			$('select[name="category[category]"]').val response.id
			$('.modal').modal('hide')

		
