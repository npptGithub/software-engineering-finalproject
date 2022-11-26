import {Navigate, Outlet} from 'react-router-dom'
import { AuthContext } from '../contexts/AuthProvider'
import React, { useContext } from 'react'
// token authenticated display Loading... if not authenticated else run the current page
function ProtectedRoute() {
    const location = useLocation();
    const {authState} = useContext(AuthContext)
    if (authLoading){
        return (
            <div>Loading...</div>
        )
    }
    return( authState?.isAuthenticated ?<Outlet/>:
        <Navigate to="login" state={{from: location }}rep/>  
    )

}

export default ProtectedRoute