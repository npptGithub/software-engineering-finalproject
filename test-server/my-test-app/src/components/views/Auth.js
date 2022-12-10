import { useContext } from 'react'
import Login from '../auth/Login'
import Register from '../auth/Register'
import { AuthContext } from '../contexts/AuthProvider'
import {Navigate} from 'react-router-dom'
const Auth = ({authRoute}) => {
  let body
  const {authState: {authLoading, isAuthenticated}} = useContext(AuthContext)
  if (authLoading){
    body = (
      <div className =".d-flex justify-content-center mt-2">
        <div>Loading...</div>
      </div>
    )
  }
  else if (isAuthenticated) {
    
    return <Navigate to='/mainmenu' replace/>}
  else {  
    
    body = (
      <>
        {authRoute === 'login' && <Login/>}
        {authRoute === 'register' && <Register/>}
      </>
    )
  }
  return (
      <div>
        {body}
      </div>
  )
}

export default Auth