import {fb} from '../util/Firebase'

export default tag Navbar
	
	css &
		.btn-width
			w:80px

	prop credentials = {
		nome: ""
		senha: ""
	}

	prop usuario
	prop loading = false

	def login
		loading = true
		await fb.auth.signInWithEmailAndPassword(credentials.nome, credentials.senha)
		window.location.assign("/#/perfil")
		loading = false

	def logout
		loading = true
		await fb.fazer_logout()
		window.location.assign("/#/")
		loading = false
	
	def mount
		fb.auth.onAuthStateChanged(do |user|
			if user
				usuario = await fb.obter_dados(user)
				usuario = usuario.data()
				document.querySelector('#logout').classList.add('d-md-block')
				document.querySelector('#login').classList.remove('d-md-block')
				render()
			else
				document.querySelector('#login').classList.add('d-md-block')
				document.querySelector('#logout').classList.remove('d-md-block')
		)

	def render				
		<self>
			<nav.navbar.navbar-expand-md.navbar-dark.bg-primary.sticky-top>
				<a.navbar-brand> "SITE DE EMPREGOS"
				<div.w-100.d-md-none.mt-2>
					<input.form-control.form-control-sm.mb-1 type="text" placeholder="E-mail">
					<input.form-control.form-control-sm.mb-1 type="password" placeholder="Senha">
					<button.btn.btn-outline-light.btn-block> "Entrar"
				<button.navbar-toggler type="button" data-toggle="collapse" data-target="#navbar_toggler">
					<span.navbar-toggler-icon>
				<div.collapse.navbar-collapse #navbar_toggler>
					<ul.navbar-nav.mr-auto>
						if usuario
							<li.nav-item>
								<a.nav-link href="/#/perfil"> "Perfil" 
						if usuario and usuario.tipo_de_cadastro == "Empresa"
							<li.nav-item>
								<a.nav-link href="/#/minhasvagas"> "Minhas Vagas" 
							<li.nav-item>
								<a.nav-link href="/#/curriculos"> "Currículos" 
						if usuario and usuario.tipo_de_cadastro == "Candidato"
							<li.nav-item>
								<a.nav-link href="/#/vagas"> "Vagas" 
					<div#logout.form-inline.d-none>
						<button.btn-width.btn.btn-outline-light.btn-sm.d-flex.align-items-center.justify-content-between.float-right @click.logout>
							<span[fs:1rem].material-icons> "login"
							"Sair"	
					<div#login.form-inline.d-none>
						<input.form-control.form-control-sm.mr-2 bind=credentials.nome type="text" placeholder="E-mail">
						<input.form-control.form-control-sm.mr-2 bind=credentials.senha type="password" placeholder="Senha">
						<button.btn-width.btn.btn-outline-light.btn-sm.d-flex.align-items-center.justify-content-between.float-right @click.login> 
							if loading
								<div.spinner-border.spinner-border-sm>
							else
								<span[fs:1rem].material-icons> "login"
							"Entrar"
									
				