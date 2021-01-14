import Cadastro from './tags/Cadastro'
import Navbar from './tags/Navbar'
import Perfil from './tags/Perfil'
import Editar from './tags/Editar'
import MinhasVagas from './tags/MinhasVagas'
import CriarVaga from './tags/CriarVaga'
import EditarVaga from './tags/EditarVaga'
import Vagas from './tags/Vagas'
import Curriculos from './tags/Curriculos'

global css html, body, @root
	w:100% min-height:100% bg:blue1
	
tag app-root

	def mount
		window.addEventListener('popstate', imba.commit)
	
	def render
		path = window.location.hash.slice(1)
		
		<self>
			<Navbar>
			if path == '' or path == '/' or path == '/cadastro'
				<Cadastro>
			elif path == '/perfil'
				<Perfil>
			elif path.startsWith('/perfil/editar:')
				<Editar>
			elif path == '/minhasvagas'
				<MinhasVagas>
			elif path == '/criar/vaga'
				<CriarVaga>
			elif path.startsWith('/editar/')
				<EditarVaga>
			elif path == '/vagas'
				<Vagas>
			elif path == '/curriculos'
				<Curriculos>
			else
				console.log "Not found"

imba.mount <app-root>