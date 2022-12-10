import { createContext, useReducer,useEffect } from "react";
import axios from "../../api/axios";
import { LOCAL_STORAGE_TOKEN } from "./constants"; 
import { authReducer } from '../reducers/authReducer';
import setAuthToken from '../utils/setAuthToken'
const LOGIN_URL = '/login'
const REGISTER_URL = '/register'
export const AuthContext = createContext()

const AuthContextProvider = ({children}) => {
    const [authState, Dispatch] = useReducer(authReducer, {
        authLoading: true,
        isAuthenticated: false,
        user: null
    });
    //Authenticate user
    const loadUser = async ()=>
    {  
        if (localStorage[LOCAL_STORAGE_TOKEN]){
        
            setAuthToken(localStorage[LOCAL_STORAGE_TOKEN])
        }
        try {
            const response = await axios.get('/')
            if (response.data.success){
                Dispatch({
                    type: 'SET_AUTH',
                    payload: {isAuthenticated: true, user: response.data.user}
                })
            }
        }catch (error) {
            localStorage.removeItem(LOCAL_STORAGE_TOKEN)
            setAuthToken(null)
            Dispatch({type: 'SET_AUTH',
                payload: {isAuthenticated: false,user:null}})
        }
    }
    useEffect(()=>{loadUser()}, [])
    //Login
    const loginUser = async userForm => {
        try {
            const response = await axios.post(LOGIN_URL, userForm)
            const accessToken = response?.data?.accessToken
            if (response?.data?.success)
                localStorage.setItem(LOCAL_STORAGE_TOKEN,accessToken)
            await loadUser()
            
            return response?.data
            } catch (error) {
            if(error.response.data) 
                return error.response.data
            else   
                return {success: false, message: error.message}
            }
        }
    //Register
    const registerUser = async userForm =>{
        try {
            const response = await axios.post(REGISTER_URL, userForm)
            const accessToken = response?.data?.accessToken
            if (response.success)
                localStorage.setItem(LOCAL_STORAGE_TOKEN, accessToken)
            await loadUser()
            return response.data
        } catch (error) {
            if(error.response.data) 
              return error.response.data
            else   
              return {success: false, message: error.message}
        }
    }
    //Logout
    const logOut = async () =>{
        console.log('logOut')
        localStorage.removeItem(LOCAL_STORAGE_TOKEN)
        Dispatch({
            type:'SET_AUTH',
            payload: {isAuthenticated:false,user:null}
        })
    }
    
    const authContextData = {loginUser,registerUser,authState,logOut}
    return (
        <AuthContext.Provider value={authContextData}>
            {children}
        </AuthContext.Provider>
    )
}
export default AuthContextProvider