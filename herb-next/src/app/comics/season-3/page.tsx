import { PrismaClient, Prisma } from '@/generated/prisma';
import Season3 from './Season3';

const prisma = new PrismaClient();

export default async function Season3Page() {
  const comics = await prisma.comic.findMany({
    where: { season: 3 },
    orderBy: [{ episode: 'asc' }],
    include: { panels: true },
  });

  type ComicWithPanels = Prisma.ComicGetPayload<{
      include: { panels: true };
    }>;

  // Convert date to string for client component
  const clientComics = comics.map((comic: ComicWithPanels) => ({
    ...comic,
    date: typeof comic.date === 'string' ? comic.date : comic.date.toISOString(),
  }));

  return (
    <main>
      <Season3 comics={clientComics} />
    </main>
  );
}