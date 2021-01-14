# type = password|email|text|textarea|multiselect|select|switch|radio|datapicker
import IMask from 'imask'

export default tag Form

	css &
		.textarea
			resize:none
		.selected-options-list
			d:flex
			align-items:center
			flex-wrap:wrap
		.selected-options
			d:flex
			m: .5rem .5rem 0 0
			align-items:center
			cursor@hover: default
			color: white
			font-size: .7rem
			h: 100%
			line-height: 1.5rem
			pl: .5rem
			pr: .3rem
			background:#007bff
			border-radius:.25rem
		.delete-option-icon
			font-size: .7rem
			cursor@hover:pointer
			transition: .15s ease-in-out
			border-radius:50%
			p: 2px
			bg@hover:#0069D9
		.select-scroll
			height:auto
			max-height:calc(3*2rem+1rem)
			overflow-y:scroll
		.selected-item
			color:#0069D9
		.cursor-pointer
			cursor: pointer
		::-webkit-scrollbar
			width:5px
		::-webkit-scrollbar-track 
			background:#f7f7f7
		::-webkit-scrollbar-thumb
			background:#d9d9d9
	
	prop field
	prop object
	prop text = ""
	prop input

	# Util

	def search
		let options = []
		for option in field.options
			options.push(option) if option
				.toLowerCase()
				.normalize("NFD")
				.includes(
					text
					.toLowerCase()
					.normalize("NFD")
				) 
		return options

	
	# Input Generators

	def genRadio
		<div.form-group>
			<label.w-100> field.name
			for option, i in field.options
				<div.custom-control.custom-radio.custom-control-inline>
					<input.custom-control-input #{"radio_{field.id}_{i}"} type="radio" name="radio_{field.id}" value=option bind=object[field.id]>
					<label.custom-control-label for="radio_{field.id}_{i}"> option

	def genSelect
		let options = search()

		<div.form-group.dropdown>
			<label>	field.name
			<input.form-control	bind=object[field.id] data-toggle="dropdown">
			<div$dropdown.dropdown-menu.w-100 .select-scroll=(options.length > 3)>
				for option in options
					<a.dropdown-item.cursor-pointer @click=(do
						object[field.id] = option
						text = option
					)> option
				if options.length == 0
					<a.dropdown-item.disabled> "Nenhum resultado foi encontrado"

	def genMultiselect
		let options = search()
		let selected_options = object[field.id]
		
		<div.form-group.dropdown>
			<label>	field.name
			<input.form-control	bind=text data-toggle="dropdown">
			if selected_options.length > 0
				<ul.selected-options-list.m-0.p-0>
					for option in selected_options
						<li.selected-options>
							option
							<i.delete-option-icon.material-icons.float-right.ml-1 field=field @click=(do
								object[field.id] = selected_options.filter(do |selected_option| selected_option != option)
							)> "close"
			<div.dropdown-menu.w-100 .select-scroll=(options.length > 5)>
				for option in options
					if selected_options.includes(option)
						<a.dropdown-item.cursor-pointer.selected-item>
							option
							<i.material-icons.float-right> "check"
					else	
						<a.dropdown-item.cursor-pointer @click=(do object[field.id].push(option))> option
				if options.length == 0
					<a.dropdown-item.disabled> "Nenhum resultado foi encontrado"

	def genInput
		<div.form-group>
			<label> field.name
			if field.config
				<input$input.form-control type=field.type bind=object[field.id]>
				mask = IMask($input, field.config)
			else 
				<input.form-control type=field.type bind=object[field.id]>

	def genTextarea
		<div.form-group>
			<label> field.name
			<textarea.textarea.form-control bind=object[field.id] rows="4">

	def genSwitch
		<div.form-group>
			<div.custom-control.custom-switch>
				<input.custom-control-input bind=object[field.id] type="checkbox" #switch>
				<label.custom-control-label for="switch"> field.name

	def render
		
		let input
		<self>
			if field.type == "radio"
				genRadio()
			elif field.type == "textarea"
				genTextarea()
			elif field.type == "select"
				genSelect()
			elif field.type == "multiselect"
				genMultiselect()
			elif field.type == "switch"
				genSwitch()
			else
				genInput()
					
			