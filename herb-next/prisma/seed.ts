import comicsData from './comics.json';
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

type ComicSeed = {
  season: number;
  episode: number;
  title: string;
  date: string;
  imageUrl: string;
  panels?: { panel: number; imageUrl: string }[];
  panelCount?: number;
  panelUrlPattern?: string;
};

async function main() {
  console.log('Starting seed script...');

  console.log('Deleting all panels...');
  await prisma.panel.deleteMany();
  console.log('Deleted all panels.');

  console.log('Deleting all comics...');
  await prisma.comic.deleteMany();
  console.log('Deleted all comics.');

  console.log('Preparing to seed comics...');
  let count = 0;
  for (const comic of comicsData as ComicSeed[]) {
    let panels = comic.panels ?? [];
    if ((!panels || panels.length === 0) && comic.panelCount && comic.panelUrlPattern) {
      panels = Array.from({ length: comic.panelCount }, (_, i) => ({
        panel: i + 1,
        imageUrl: comic.panelUrlPattern!.replace('{num}', String(i + 1).padStart(2, '0'))
      }));
    }
    await prisma.comic.create({
      data: {
        season: comic.season,
        episode: comic.episode,
        title: comic.title,
        date: new Date(comic.date),
        imageUrl: comic.imageUrl,
        panels: {
          create: panels
        }
      }
    });
    count++;
    console.log(`Seeded comic: Season ${comic.season}, Episode ${comic.episode}`);
  }
  console.log(`Seeded all comics! Total: ${count}`);
}

main()
  .catch((e) => {
    console.error('Error in seed script:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
    console.log('Disconnected Prisma client.');
  });
