import { Link } from 'react-router-dom';
import '../styles.css'; // adjust path if needed

function Navbar() {
  return (
    <nav>
      <ul>
        <li><Link to="/comics">comics</Link></li>
        <li><Link to="/shop">shop</Link></li>
        <li><Link to="/about">about</Link></li>
      </ul>
    </nav>
  );
}

export default Navbar;