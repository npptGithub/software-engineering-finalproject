import './App.css';
import Land from './components/layout/Landing'
import Auth from './components/views/Auth'
import Errorpages from './components/error/errorpages';
import Main from './components/auth/MainMenu';

import {BrowserRouter as Router,Route,Routes} from 'react-router-dom'
function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Land/>}/>
        <Route path="/login" element={<Auth authRoute="login" />}/>
        <Route path="/register" element={<Auth authRoute="register"/>}/>
        <Route path="/mainmenu" element={<Main authRoute=""/>}/>
        <Route path="*" element={<Errorpages/>}/>
      </Routes>
    </Router>
  );
}

export default App;
