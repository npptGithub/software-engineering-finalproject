import axios from "../../api/axios";
//------------------------------//
// set Token when user login in //
//------------------------------//
const setAuthToken = token => {
    if (token){
        console.log(token)
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    }
    else
        delete axios.defaults.headers.common['Authorization']
}

export default setAuthToken