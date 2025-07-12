import { NavLink, useLocation } from 'react-router-dom';
import '../index.css';

function Navbar() {
  const location = useLocation();
  // Don't show active highlight on home page
  const isHome = location.pathname === '/';
  return (
    <main>
      <nav>
        <ul>
          <li>
            <NavLink to="/comics" className={({ isActive }) => isActive && !isHome ? 'active' : ''}>comics</NavLink>
          </li>
          <li>
            <NavLink to="/shop" className={({ isActive }) => isActive && !isHome ? 'active' : ''}>shop</NavLink>
          </li>
          <li>
            <NavLink to="/about" className={({ isActive }) => isActive && !isHome ? 'active' : ''}>about</NavLink>
          </li>
        </ul>
      </nav>
    </main>
  );
}

export default Navbar;