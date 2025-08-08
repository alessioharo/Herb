"use client";
import '../globals.css';
import Link from 'next/link';
import { usePathname } from 'next/navigation';

function Navbar() {
  const pathname = usePathname();
  const isHome = pathname === '/';
  return (
    <main>
      <nav>
        <ul>
          <li>
            <Link href="/comics" className={!isHome && pathname === '/comics' ? 'active' : ''}>comics</Link>
          </li>
          <li>
            <Link href="/shop" className={!isHome && pathname === '/shop' ? 'active' : ''}>shop</Link>
          </li>
          <li>
            <Link href="/about" className={!isHome && pathname === '/about' ? 'active' : ''}>about</Link>
          </li>
        </ul>
      </nav>
    </main>
  );
}

export default Navbar;