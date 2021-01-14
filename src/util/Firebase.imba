import app from 'firebase/app'
import 'firebase/auth'
import 'firebase/firestore'

const config = {
	apiKey: "AIzaSyBRlBrDIPbDUINqbgBhLmrAgZ-cPLyKgUI"
	authDomain: "site-empregos.firebaseapp.com"
	databaseURL: "https://site-empregos.firebaseio.com"
	projectId: "site-empregos"
	storageBucket: "site-empregos.appspot.com"
	messagingSenderId: "985530385105"
	appId: "1:985530385105:web:1a715fe69c3d51786cbbf0"
}

class Firebase

	prop user

	def constructor
		app.initializeApp(config)
		firestore = app.firestore()
		auth = app.auth()

	def obter_usuario
		auth.currentUser

	def obter_dados usuario
		firestore.collection("usuarios").doc(usuario.uid).get()

	def criar_usuario(email, senha)
		auth.createUserWithEmailAndPassword(email, senha)
	
	def fazer_login(email, senha)
		auth.signInWithEmailAndPassword(email, senha)
	
	def fazer_logout
		auth.signOut()

	def cadastrar_usuario(usuario)
		let usuario_autenticado = await criar_usuario(usuario.email, usuario.senha)
		delete usuario.email
		delete usuario.senha
		firestore.collection("usuarios").doc(usuario_autenticado.user.uid).set(usuario)

	def alterar_usuario(usuario)
		firestore.collection("usuarios").doc(user.uid).update(usuario)
	
	def cadastrar_vaga(vaga)
		firestore.collection("vagas").add(vaga)
	
	def obter_vagas
		firestore.collection("vagas").get()
	
	def excluir_vaga id
		firestore.collection("vagas").doc(id).delete()

export const fb = new Firebase

fb.auth.onAuthStateChanged(do |_user| fb.user = _user)