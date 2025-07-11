import { Link } from 'react-router-dom';
import '../styles.css';

function Header() {
    return (
        <header>
            <Link to="/">
                <img
                    src="images/Herb Logo.png"
                    alt="Herb"
                    className="mainlogo"
                />
            </Link>
        </header>
    );
}

export default Header;