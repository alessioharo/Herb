import './globals.css';
import Header from './components/Header';
import Navbar from './components/Navbar';
import Footer from './components/Footer';

import { Inter } from 'next/font/google';

/*const inter = Inter({ subsets: ['latin'] });*/

export const metadata = {
  title: 'Herb',
  description: 'Herb created by Alessio Haro',
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <link rel="icon" href="/favicon.ico" />
      </head>
      <body>
        <main>
          <Header />
          <Navbar />
          {children}
          <Footer />
        </main>
      </body>
    </html>
  );
}
