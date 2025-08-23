"use client";
import '../globals.css';
import Link from 'next/link';
import { useEffect, useState } from 'react';

function Header() {
    const [visible, setVisible] = useState(false);

    useEffect(() => {
        setVisible(true);
    }, []);

    return (
        <header>
            <Link href="/">
                <img
                    src="/images/herb-logo-outline.svg"
                    alt="Herb"
                    className={`mainlogo${visible ? ' fade-in' : ''}`}
                    style={{ cursor: 'pointer', display: 'block' }}
                />
            </Link>
        </header>
    );
}

export default Header;