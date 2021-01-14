import {fb} from '../util/Firebase'

export default tag Vagas

	css &
		.icon
			font-size: 1rem
			cursor@hover:pointer
			transition: .15s ease-in-out
			border-radius:50%
			bg@hover:#d8d8d8
			p:7px
		.text-title
			fw:600
			fs:.9rem

	def mount 
		loading = true
		render()
		fb.auth.onAuthStateChanged(do |_user| 
			if _user
				user = await fb.obter_dados(_user)
				user = user.data()
				user_id = fb.user.uid
				render()
			else
				window.location.assign("/#/")
		)
		vagas = await fb.obter_vagas()
		vagas = vagas.docs.map do |doc|
			rec = {}
			for own k, v of doc.data()
				rec[k] = v
			rec.id = doc.id
			rec
		loading = false
		render()
	
	def render
		<self>
			if loading
				<div[h:calc(100vh - 1rem - 40px)].flex-column.text-primary.d-flex.justify-content-center.align-items-center>
					<div.spinner-border>
					<span.w-100.text-center.pt-1> "Carregando..."
			else if vagas and user
				<h4.offset-sm-2.mb-3.mt-5> "VAGAS"
				<div.card.col-sm-8.offset-sm-2.mb-5.p-0>
					for vaga in vagas
						<div.card.m-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "{vaga.titulo_da_vaga.toUpperCase()}"
							<div.card-body.pb-0>
								<p.m-0> vaga.salario
								<p> "{vaga.numero_de_vagas} vagas: {vaga.cidade}"
								<p>
									if vaga.descricao.length > 100 and !expanded
										"{vaga.descricao.substr(0,100)}..."
									else 
										"{vaga.descricao}"
								<button.mb-3.btn.btn-outline-primary type="button"> "Quero me candidatar"
								<div.collapse#collapse-{vaga.id}>
									<hr.mt-0>
									<h6> "DADOS ADICIONAIS"
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "BENEFÍCIOS"
										<div.col-9>
											<p> vaga.beneficios
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "HORÁRIO DE TRABALHO"
										<div.col-9>
											<p> vaga.horario_de_trabalho
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "NÍVEL HIERÁRQUICO"
										<div.col-9>
											<p> vaga.nivel_hierarquico
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "REGIME DE CONTRATAÇÃO"
										<div.col-9>
											<p> vaga.regime_de_contratacao
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "INFORMAÇÕES ADICIONAIS"
										<div.col-9>
											<p> vaga.informacoes_adicionais
									<hr.mt-0>
									<h6> "INFORMAÇÕES PARA PESSOAS COM DEFICIÊNCIA"
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "TIPO DE DEFICIÊNCIA"
										<div.col-9>
											<p> vaga.tipo_de_deficiencia
									<div.row.d-flex.align-items-center>
										<div.col-3>
											<p.text-title> "CARACTERÍSTICAS MÍNIMAS"
										<div.col-9>
											<p> vaga.caracteristicas_minimas
							if !expanded
								<button[lh:.9rem fs:.9rem border-top-right-radius:0 border-top-left-radius:0].btn.btn-primary.btn-block.p-1.d-flex.align-items-center.justify-content-center data-toggle="collapse" data-target="#collapse-{vaga.id}" @click=(do expanded=true)>
									<p.m-0> "abrir vaga"
									<span[fs:1.2rem lh:.9rem].material-icons> "expand_more"
							else
								<button[lh:.9rem fs:.9rem border-top-right-radius:0 border-top-left-radius:0].btn.btn-primary.btn-block.p-1.d-flex.align-items-center.justify-content-center data-toggle="collapse" data-target="#collapse-{vaga.id}" @click=(do expanded=false)>
									<p.m-0> "fechar vaga"
									<span[fs:1.2rem lh:.9rem].material-icons> "expand_less"