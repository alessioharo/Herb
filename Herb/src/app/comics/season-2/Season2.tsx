"use client";
import { useState, useRef, useEffect } from "react";
import Image from "next/image";
import styles from '../ArchivePage.module.css';


type Panel = {
  id: number;
  imageUrl: string;
  panel: number;
};

type Comic = {
  id: number;
  season: number;
  episode: number;
  title: string;
  date: string;
  imageUrl: string;
  panels: Panel[];
};

export default function Season2Covers({ comics }: { comics: Comic[] }) {
  const [selected, setSelected] = useState<Comic>(comics[0]);
  const coverRefs = useRef<(HTMLButtonElement | null)[]>([]);

  const handleNext = () => {
    const currentIndex = comics.findIndex((comic) => comic.id === selected.id);
    if (currentIndex < comics.length - 1) {
      setSelected(comics[currentIndex + 1]);
    }
  };

  const handlePrevious = () => {
    const currentIndex = comics.findIndex((comic) => comic.id === selected.id);
    if (currentIndex > 0) {
      setSelected(comics[currentIndex - 1]);
    }
  };

  useEffect(() => {
    const currentIndex = comics.findIndex((comic) => comic.id === selected.id);
    if (coverRefs.current[currentIndex]) {
      coverRefs.current[currentIndex]?.scrollIntoView({
        behavior: 'smooth',
        block: 'nearest',
        inline: 'center',
      });
    }
  }, [selected, comics]);

  return (
    <div className={styles.archiveContainer}>
      {selected && (
        <div className={styles.selectedComic}>
          <div className={styles.headerRow}>
            <div className={styles.seasonTitleColumn}>
              <div className={styles.logoColumn}>
                <Image
                  src={`/images/herb-logo-s${selected.season}.png`}
                  alt={`Herb Season ${selected.season} Logo`}
                  width={67}
                  height={60}
                  className={styles.seasonLogo}
                />
              </div>
              <div className={styles.comicInfo}>
                <div className={styles.comicTitle}>&quot;{selected.title}&quot;</div>
                <div className={styles.comicDate}>{new Date(new Date(selected.date).getTime() + new Date(selected.date).getTimezoneOffset() * 60000).toLocaleDateString(undefined, { year: 'numeric', month: 'long', day: 'numeric' })}</div>
              </div>
            </div>
              <div className={styles.navButtonsContainer}>
              <div className={styles.navButtons}>
                <div className={styles.navBarBackground}>
                  <button
                    onClick={handlePrevious}
                    disabled={comics.findIndex((comic) => comic.id === selected.id) === 0}
                    className={`${styles.navButton} ${comics.findIndex((comic) => comic.id === selected.id) === 0 ? styles.navButtonDisabled : ''}`}
                    aria-label="Previous Comic"
                  >
                    <Image
                      src="/images/backward-arrow.png"
                      alt="Previous"
                      width={20} // pixels
                      height={30} // pixels
                    />
                  </button>
                  <button
                    onClick={handleNext}
                    disabled={comics.findIndex((comic) => comic.id === selected.id) === comics.length - 1}
                    className={`${styles.navButton} ${comics.findIndex((comic) => comic.id === selected.id) === comics.length - 1 ? styles.navButtonDisabled : ''}`}
                    aria-label="Next Comic"
                  >
                    <Image
                      src="/images/forward-arrow.png"
                      alt="Next"
                      width={20} // pixels
                      height={30} // pixels
                    />
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div className={styles.panelsRow}>
            {selected.panels.slice(0, 4).map((panel) => (
              <Image
                key={panel.id}
                src={panel.imageUrl}
                alt={`Panel ${panel.panel}`}
                width={180}
                height={180}
                className={styles.panelImage}
              />
            ))}
          </div>
        </div>
      )}

      <div className={styles.episodeRow}>
        {comics.map((comic: Comic, index: number) => (
          <button
            key={comic.id}
            ref={(el) => {
              coverRefs.current[index] = el;
            }}
            onClick={() => setSelected(comic)}
            className={
              selected && selected.id === comic.id
                ? `${styles.episodeButton} ${styles.episodeButtonActive}`
                : styles.episodeButton
            }
            aria-label={`Show episode ${comic.episode}`}
          >
            <div className={styles.episodeImageWrapper}>
              <Image
                src={comic.imageUrl}
                alt={comic.title + " cover"}
                width={64}
                height={64}
                className={
                  selected && selected.id === comic.id
                    ? `${styles.episodeImage} ${styles.episodeImageSelected}`
                    : styles.episodeImage
                }
              />
            </div>
          </button>
        ))}
      </div>
      <div className={styles.aboutSeasonContainer}>
        <div className={styles.aboutSeason}>
          <p>Herb’s second season was written over the course of eight months in 2020. In total, there are 69 episodes with a pastel background completing the full rainbow.</p>
        </div>
      </div>
    </div>
  );
}
