import {useState, useContext} from 'react'
import {AuthContext} from '../contexts/AuthProvider';
import Popup from './Popup';
import {useNavigate} from 'react-router-dom';

const Login = ()=>{
    const {loginUser} = useContext(AuthContext)
    const [popup,setPopUp] = useState(false)
    const [loginForm,setLoginForm] = useState({
    username : '',
    password: '',
  })
  const {username,password} = loginForm
  const onChangeLoginForm = (e) => 
    setLoginForm({...loginForm,[e.target.name]:e.target.value})
  const handleSubmit = async(e) =>{
    e.preventDefault()
    try {
      const userData = await loginUser(loginForm)
    } catch (error) {
      setPopUp(true)
      console.log(error)
    }
  }
  return (
    <> 
      <section>
        <h1>Sign in</h1>
        <form onSubmit={handleSubmit}>
          <label htmlFor="username">Username:</label>
          <input type="text" name="username" value ={username} onChange={onChangeLoginForm}/>
          <label htmlFor="password">Password:</label>
          <input type="text" name="password" value={password} onChange={onChangeLoginForm} />
          <button type='submit' >Submit</button>
          {popup && <Popup/>}
        </form>
      </section>
    </>
  )} 


export default Login
      