import Image from 'next/image';
import Link from 'next/link';
import styles from './ComicPage.module.css';

export default function Comics() {
  return (
    <main>
      <div className={styles.archiveRow}>
        <div className={styles.archiveCol}>
          <Image src="/images/herb-s1-archive-banner.png" alt="Herb Season 1" className={styles.archiveLogos} width={125} height={125} />
          <div className={styles.buttonContainer}>
            <a href="/comics/season-1" className={styles.button}>
              season 1
            </a>
          </div>
        </div>
        <div className={styles.archiveCol}>
          <Image src="/images/herb-s2-archive-banner.png" alt="Herb Season 2" className={styles.archiveLogos} width={125} height={125} />
          <div className={styles.buttonContainer}>
            <a href="/comics/season-2" className={styles.button}>
              season 2
            </a>
          </div>
        </div>
        <div className={styles.archiveCol}>
          <Image src="/images/herb-s3-archive-banner.png" alt="Herb Season 3" className={styles.archiveLogos} width={125} height={125} />
          <div className={styles.buttonContainer}>
            <a href="/comics/season-3" className={styles.button}>
              season 3
            </a>
          </div>
        </div>
      </div>
    </main>
  );
}