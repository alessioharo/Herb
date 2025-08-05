// src/components/ComicHeader.tsx
import Image from 'next/image';

type ComicHeaderProps = {
  season: number;
  title: string;
  date: string | Date;
};

export default function ComicHeader({ season, title, date }: ComicHeaderProps) {
  // Ensure date is rendered as a string
  let dateString: string;
  if (typeof date === 'string') {
    dateString = date;
  } else if (date instanceof Date) {
    dateString = date.toLocaleDateString();
  } else {
    dateString = '';
  }
  return (
    <header className="header">
      <div className="logo">
        <Image
          src={`/images/herb-logo-s${season}.png`}
          alt={`Season ${season} Logo`}
          width={120}
          height={120}
          className="object-contain"
        />
      </div>
      <div className="text">
        <span className="title">&quot;{title}&quot;</span><br />
        <span className="date">{dateString}</span>
      </div>
    </header>
  );
}