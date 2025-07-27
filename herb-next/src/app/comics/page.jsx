import Image from 'next/image';
import Link from 'next/link';

export default function Comics() {
  return (
    <main>
      <p className="disclaimer">
        New episodes of Herb are coming soon.<br /> 
        In the meantime, Herb seasons 1-3 are available to enjoy.
      </p>
      <div className="archive-row">
        <div className="archive-col">
          <Link href="/comics/season-1">
            <Image src="/images/herb-s1-link.png" alt="Herb Season 1" className="archive-logos" width={125} height={125} />
          </Link>
          <div className="archive-label">Season 1<br />
            <div className="archive-label-sub">2020</div>
          </div>
        </div>
        <div className="archive-col">
          <Link href="/comics/season-2">
            <Image src="/images/herb-s2-link.png" alt="Herb Season 2" className="archive-logos" width={125} height={125} />
          </Link>
          <div className="archive-label">Season 2
            <div className="archive-label-sub">2020-2021</div>
          </div>
        </div>
        <div className="archive-col">
          <Link href="/comics/season-3">
            <Image src="/images/herb-s3-link.png" alt="Herb Season 3" className="archive-logos" width={125} height={125} />
          </Link>
          <div className="archive-label">Season 3
            <div className="archive-label-sub">2023</div>
          </div>
        </div>
      </div>
    </main>
  );
}