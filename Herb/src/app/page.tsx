import styles from './HomePage.module.css';
import Image from 'next/image';

export default function Home() {
  return (
    <div className={styles.mainContainer}>
      <Image
        src="/images/herb-archive.png"
        alt="Herb Archive"
        className={styles.mainImage}
        width={300}
        height={300}
      />
      <div className={styles.textContainer}>
        <div className={styles.mainText}>
          Herb Seasons 1-3
        </div>
        <div className={styles.subText}>
            Now available to enjoy.
        </div>
      </div>
      <div className={styles.buttonContainer}>
        <a href="/comics" className={styles.button}>
          read now
        </a>
      </div>
    </div>
  );
}
