
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

  await prisma.panel.deleteMany();
  await prisma.comic.deleteMany();

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
  }
  console.log('Seeded all comics!');
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
