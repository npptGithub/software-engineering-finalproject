import {useState, useContext,useEffect} from "react"
import AuthContext from "../contexts/AuthProvider"

const USER_REGEX = /^[A-z][A-z0-9-_]{3,23}$/;
const PWD_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%]).{8,24}$/;


const Register = () => {
  const registerUser = useContext(AuthContext)
  const [rePassword,setRePassword] = useState('');
  const [registerForm,setRegisterForm] = useState({
    username: '',             
    password: '',
    fullName: '',
    phoneNumber: '',
    email: '',
    role: '',
    DOB: '',
  })
  const [validUsername,setValidUserName] = useState(false)
  const {username,password,fullName,phoneNumber,email,role,DOB} = registerForm
  useEffect(() => {
    setValidUserName(USER_REGEX.test(username))
  },[username])

  
  const onChangeRegisterForm = (e) => 
  setRegisterForm({...registerForm,[e.target.name]:e.target.value})
  const handleSubmit = async (e) => {
    e.preventDefault()
    const v1 = USER_REGEX.test(username)
    const v2 = PWD_REGEX.test(password)
    const v3 = password === rePassword
    if (v1 && v2 && v3) {
      console.log('Invalid Entry')
    }
    try{
      const user = await registerUser(registerForm)
    }catch(error){
      console.log(error)
    }
  }
  return (
    <section>
      <form onSubmit={handleSubmit}>
        <label htmlFor="username">Username:</label>
        <input type="text" name="username" autoComplete="off" value={username} onChange={onChangeRegisterForm} aria-invalid={validUsername ? "false" : "true"}/>
        <label htmlFor="password">Password:</label>
        <input type="password" name="password" value = {password} onChange={onChangeRegisterForm}/>
        <label htmlFor="rePassword">Enter your password again: </label>
        <input type="password" name="rePassword" value={rePassword} onChange={(e) => setRePassword(e.target.value)}/>
        <label htmlFor="fullName">Full Name:</label>
        <input type="text" name= "fullName" value={fullName} onChange={onChangeRegisterForm}/>
        <label htmlFor="phoneNumber">Phone Number:</label>
        <input type="text" name= "phoneNumber" value={phoneNumber} onChange={onChangeRegisterForm}/>
        <label htmlFor="email">email:</label>
        <input type="text" name= "email" value={email} onChange={onChangeRegisterForm}/>
        <label htmlFor="role">role:</label>
        <input type="text" name= "role" value={role} onChange={onChangeRegisterForm}/>
        <label htmlFor="DOB">DOB:</label>
        <input type="text" name= "DOB" value={DOB} onChange={onChangeRegisterForm}/>
        <button type="submit">Submit</button>
      </form>
    </section>
  )
}

export default Register