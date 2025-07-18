"use client";
import '../globals.css';
import Link from 'next/link';

function Header() {
    return (
        <header>
            <Link href="/">
                <img
                    src="/images/herb-logo.svg"
                    alt="Herb"
                    className="mainlogo"
                    style={{ cursor: 'pointer', display: 'block'}}
                />
            </Link>
        </header>
    );
}

export default Header;