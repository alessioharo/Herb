import { Link } from 'react-router-dom';
import '../index.css';

function Header() {
    return (
        <main>
            <header>
                <Link to="/">
                    <img
                        src="/images/Herb Logo.svg"
                        alt="Herb"
                        className="mainlogo"
                    />
                </Link>
            </header>
        </main>
    );
}

export default Header;